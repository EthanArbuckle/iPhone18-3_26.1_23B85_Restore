void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetTrainOptions(void *a1, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = (a1 + *(*a1 - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 120) = 0;
}

int *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetHistoryState(uint64_t a1, int32x2_t *a2, unsigned int a3)
{
  v6 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v6 + 20), *(v6 + 16), 1, 0);
  v7 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v7, 111);
}

void *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetHistoryState(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  kaldi::CuVector<float>::Resize(a2, *(*(a1 + 8) + 48 * a4 + 16), 1);
  v8 = *(a1 + 8) + 48 * a4;
  v9 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
  v10 = *(v8 + 16);
  v11 = *(v8 + 32);
  v13[1] = v9;
  v13[0] = &unk_1F2CFCA48;
  v13[2] = v10;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec(a2, v13);
}

int *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetHistoryState(void *a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 88))(a1);
  v6 = (a1[1] + 48 * a3);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v6, a2, 111);
}

void *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetHistoryState(void *a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  v8 = a1[1] + 48 * a4;
  v9 = *(a2 + 16);
  v10 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
  v11 = *(v8 + 32);
  v13[1] = v10;
  v13[0] = &unk_1F2CFCA48;
  v13[2] = v9;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec(v13, a2);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ResetHistoryState(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  *(a1[1] + 48 * a4 + 32) = a3;
  if (a2[1])
  {
    v8 = 0;
    do
    {
      if ((*(*a2 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
      {
        v9 = a1[1] + 48 * a4;
        v10 = (*(v9 + 8) + 4 * *(v9 + 24) * v8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 32);
        v20[1].__locale_ = v10;
        v20[0].__locale_ = &unk_1F2CFCA48;
        v20[2].__locale_ = v11;
        v20[3].__locale_ = v12;
        kaldi::CuVectorBase<float>::SetZero(v20);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          v13 = MEMORY[0x1B8C84C00](&v21, v8);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
        }
      }

      ++v8;
    }

    while (a2[1] > v8);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Reset previous states for utts ", 31);
    std::stringbuf::str();
    if ((v19 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
  }

  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v25);
}

void sub_1B53C6778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  std::ostringstream::~ostringstream(&a51);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ResetHistoryState(void *a1)
{
  (*(*a1 + 88))(a1);
  for (i = a1[1]; i != a1[2]; i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 528) = 0;
  return result;
}

void *virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 528) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::NormalizeGradients(uint64_t a1, unsigned int a2, float a3)
{
  v4 = a3;
  v6 = *(a1 + 156);
  if (v6 == 1)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84) == 1)
      {
        v4 = *(*(a1 + 480) + 4 * a2) * a3;
      }

      v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v14, v4);
      v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v15, v4);
      v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v16, v4);
      if (*(a1 + 208) == 1)
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::ClipGradient(v17, v4);
      }

      if (*(a1 + 224) == 1)
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a2);

        kaldi::nnet1::UpdatableComponent::ClipGradient(v18, v4);
      }
    }
  }

  else if (v6 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v8, *(a1 + 656) + 48 * a2, v4);
      v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v9, *(a1 + 680) + 48 * a2, v4);
      v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, *(a1 + 728) + 32 * a2, v4);
      if (*(a1 + 208) == 1)
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(a1 + 704) + 48 * a2, v4);
      }

      if (*(a1 + 224) == 1)
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a2);
        v13 = *(a1 + 752) + 48 * a2;

        kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, v13, v4);
      }
    }
  }

  else if (a3 > 0.0 && v6 == 2)
  {
    v20 = a2;
    if (*(a1 + 84))
    {
      v4 = *(*(a1 + 480) + 4 * a2) * a3;
    }

    v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, (*(a1 + 656) + 48 * v20), v4);
    v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v22, (*(a1 + 680) + 48 * v20), v4);
    v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v23, (*(a1 + 728) + 32 * v20), v4);
    if (*(a1 + 208) == 1)
    {
      v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v24, (*(a1 + 704) + 48 * v20), v4);
    }

    if (*(a1 + 224) == 1)
    {
      v25 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a2);
      v26 = (*(a1 + 752) + 48 * v20);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v25, v26, v4);
    }
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  result = (*(*a1 + 208))(a1);
  *a3 = result;
  if (*(a1 + 544) == *(a1 + 536) || *(a1 + 568) == *(a1 + 560))
  {
    v15 = 0;
    goto LABEL_11;
  }

  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + *(*a1 - 24) + 80);
  }

  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v7);
  v9 = kaldi::CuMatrixBase<float>::CountZeros(v8);
  v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v7);
  v11 = kaldi::CuMatrixBase<float>::CountZeros(v10) + v9;
  v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v7);
  result = kaldi::CuVectorBase<float>::CountZeros(v12);
  *a2 = v11 + result;
  if (*(a1 + 208) == 1)
  {
    v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v13);
    *a2 += result;
  }

  if (*(a1 + 224) == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v14);
    v15 = *a2 + result;
LABEL_11:
    *a2 = v15;
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(uint64_t a1, int a2, float a3)
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  v7 = -a3;
  v8 = -(a3 * *(a1 + 464));
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a2);
  kaldi::CuMatrixBase<float>::AddMat(v6, v9, 111, v8, 1.0);
  v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  v11 = -(a3 * *(a1 + 464));
  v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a2);
  kaldi::CuMatrixBase<float>::AddMat(v10, v12, 111, v11, 1.0);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v13 = -(a3 * *(a1 + 464));
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a2);
  *&v14 = v13;
  result = kaldi::CuVectorBase<float>::AddVec(v14, 1.0);
  if (*(a1 + 208) == 1)
  {
    v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v17 = *(a1 + 464) * v7;
    v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a2);
    result = kaldi::CuMatrixBase<float>::AddMat(v16, v18, 111, v17, 1.0);
  }

  if (*(a1 + 224) == 1)
  {
    v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    v20 = *(a1 + 468) * v7;
    v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a2);

    return kaldi::CuMatrixBase<float>::AddMat(v19, v21, 111, v20, 1.0);
  }

  return result;
}

void sub_1B53C6FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureBuffers(uint64_t a1)
{
  if ((*(a1 + 240) & 1) == 0)
  {
    v2 = *(a1 + 80);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 8), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 248), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 272), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 296), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 320), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 344), v2);
    if (v2 >= 1)
    {
      v3 = 0;
      do
      {
        kaldi::CuMatrix<float>::Resize((*(a1 + 8) + v3), *(a1 + 96), (*(a1 + 12 + *(*a1 - 24)) + *(a1 + 176)), 0, 0);
        v3 += 48;
      }

      while (48 * v2 != v3);
    }

    std::vector<int>::resize((a1 + 480), v2);
    *(a1 + 240) = 1;
  }
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize(void *a1, unint64_t a2)
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
          (*(*v7 + 16))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__append(a1, v5);
  }
}

float kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Check(uint64_t a1)
{
  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Input weights #rows = ", 22);
    v4 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    v5 = MEMORY[0x1B8C84C00](v3, *(v4 + 20));
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "; expecting ", 12);
    v7 = MEMORY[0x1B8C84C00](v6, (4 * *(a1 + 176)));
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v8, *(a1 + 176));
    goto LABEL_28;
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Input weights #columns = ", 25);
    v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    v11 = MEMORY[0x1B8C84C00](v9, *(v10 + 16));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; expecting ", 12);
    v13 = MEMORY[0x1B8C84C00](v12, *(a1 + *(*a1 - 24) + 8));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, " (same as input dim)");
    goto LABEL_28;
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Recurrent weights #rows = ", 26);
    v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    v16 = MEMORY[0x1B8C84C00](v14, *(v15 + 20));
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "; expecting ", 12);
    v18 = MEMORY[0x1B8C84C00](v17, (4 * *(a1 + 176)));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v19, *(a1 + 176));
    goto LABEL_28;
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) != *(a1 + *(*a1 - 24) + 12))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Recurrent weights #columns = ", 29);
    v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    v22 = MEMORY[0x1B8C84C00](v20, *(v21 + 16));
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "; expecting ", 12);
    v24 = MEMORY[0x1B8C84C00](v23, *(a1 + *(*a1 - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, " (same as output dim)");
    goto LABEL_28;
  }

  if (*(a1 + 208) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20) != 3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Peephole weights #rows = ", 25);
      v32 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      v33 = MEMORY[0x1B8C84C00](v31, *(v32 + 20));
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "; expecting ", 12);
      MEMORY[0x1B8C84C00](v34, 3);
      goto LABEL_28;
    }

    if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) != *(a1 + 176))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Peephole weights #columns = ", 28);
      v36 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      v37 = MEMORY[0x1B8C84C00](v35, *(v36 + 16));
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "; expecting ", 12);
      v39 = MEMORY[0x1B8C84C00](v38, *(a1 + 176));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v39, " (same as #cells)");
      goto LABEL_28;
    }
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Bias dim = ", 11);
    v26 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    v27 = MEMORY[0x1B8C84C00](v25, *(v26 + 16));
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "; expecting ", 12);
    v29 = MEMORY[0x1B8C84C00](v28, (4 * *(a1 + 176)));
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v30, *(a1 + 176));
    goto LABEL_28;
  }

  if (*(a1 + 224) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20) == *(a1 + *(*a1 - 24) + 12))
    {
      if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) == *(a1 + 176))
      {
        goto LABEL_12;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Projection weights #columns = ", 30);
      v46 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      v47 = MEMORY[0x1B8C84C00](v45, *(v46 + 16));
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "; expecting ", 12);
      v49 = MEMORY[0x1B8C84C00](v48, *(a1 + 176));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v49, " (same as #cells)");
    }

    else
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Projection weights #rows = ", 27);
      v41 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      v42 = MEMORY[0x1B8C84C00](v40, *(v41 + 20));
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "; expecting ", 12);
      v44 = MEMORY[0x1B8C84C00](v43, *(a1 + *(*a1 - 24) + 12));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v44, " (same as output dim)");
    }

LABEL_28:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v50);
  }

LABEL_12:
  if (*(a1 + 464) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "learn_rate_coeff_ must not be negative; found: ", 47);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 468) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "projection_learn_rate_coeff_ must not be negative; found: ", 58);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 472) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "max_norm_ must not be negative; found: ", 39);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 152) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "max_grad_ must not be negative; found: ", 39);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  result = *(a1 + 476);
  if (result < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "max_cell_values_ must not be negative; found: ", 46);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  return result;
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 856) = a2;
  *(a1 + 860) = a3;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  *(a1 + 904) = xmmword_1B5AE0070;
  *(a1 + 920) = 0x3BF800000;
  *(a1 + 928) = 1;
  *(a1 + 932) = 0;
  *(a1 + 934) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0F728);
  *v4 = &unk_1F2D0F318;
  *(v4 + 848) = &unk_1F2D0F608;
  *(v4 + 160) = &unk_1F2D0F4A8;
  *(v4 + 168) = &unk_1F2D0F4D0;
  *(v4 + 176) = a3;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 184) = 0;
  *(v4 + 208) = 1;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 456) = 0;
  result = 0.0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 464) = 0x3DCCCCCD3F800000;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 504) = 0u;
  *(v4 + 513) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0;
  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0F728, a2);
  *a1 = &unk_1F2D0F318;
  *(a1 + 848) = &unk_1F2D0F608;
  *(a1 + 160) = &unk_1F2D0F4A8;
  *(a1 + 168) = &unk_1F2D0F4D0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 184))
  {
    kaldi::NewCuSubOrMat<signed char>();
  }

  if (*(a2 + 192))
  {
    kaldi::NewCuSubOrMat<signed char>();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a2 + 216);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  if (*(a2 + 232))
  {
    kaldi::NewCuSubOrMat<signed char>();
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v10))
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, 0);
      }

      if (*(*(a2 + 560) + 8 * v10))
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v12, 0);
      }

      if (*(*(a2 + 608) + 8 * v10))
      {
        kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a2, v10);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v10))
      {
        v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v13, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v10))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      ++v10;
    }

    while (v10 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53C8820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, quasar::Bitmap *a22, quasar::Bitmap *a23, kaldi::nnet1::UpdatableComponent *a24, uint64_t *a25, uint64_t *a26, uint64_t *a27, uint64_t a28)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v28);
  a28 = a9;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a11;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  v31 = *(v29 + 63);
  if (v31)
  {
    *(v29 + 64) = v31;
    operator delete(v31);
  }

  v32 = *(v29 + 60);
  if (v32)
  {
    *(v29 + 61) = v32;
    operator delete(v32);
  }

  a28 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a25, 0);
  v33 = *(v29 + 27);
  *(v29 + 27) = 0;
  if (v33)
  {
    (*(*v33 + 24))(v33);
  }

  v34 = *(v29 + 25);
  *(v29 + 25) = 0;
  if (v34)
  {
    (*(*v34 + 16))(v34);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a26, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a27, 0);
  quasar::Bitmap::~Bitmap(a22);
  quasar::Bitmap::~Bitmap(a23);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v29, off_1F2D0F728);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  *(a1 + 160) = &unk_1F2D0F4A8;
  *(a1 + 168) = &unk_1F2D0F4D0;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 776));
  v9 = (a1 + 752);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 728);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 704);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 680);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 656);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 632);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 608);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 584);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 560);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 536);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(a1 + 504);
  if (v5)
  {
    *(a1 + 512) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 480);
  if (v6)
  {
    *(a1 + 488) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 440);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 416);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 392);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 368);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 344);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 320);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 296);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 272);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 248);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 232), 0);
  v7 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 192), 0);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 184), 0);
  quasar::Bitmap::~Bitmap((a1 + 168));
  quasar::Bitmap::~Bitmap((a1 + 160));
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(a1, a2 + 1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v2 + 848));
  return a1;
}

void non-virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(uint64_t a1)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 688));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 680));
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(a1 - 160);
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(a1 - 168);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(void *a1)
{
  v2 = (v1 + 848);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(a1 + *(*a1 - 24));
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 848));

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FB68, a2);
  *a1 = &unk_1F2D0F758;
  *(a1 + 848) = &unk_1F2D0FA48;
  *(a1 + 160) = &unk_1F2D0F8E8;
  *(a1 + 168) = &unk_1F2D0F910;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a2 + 216);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  if (*(a2 + 232))
  {
    operator new();
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v10))
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, 0);
      }

      if (*(*(a2 + 560) + 8 * v10))
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v12, 0);
      }

      if (*(*(a2 + 608) + 8 * v10))
      {
        kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a2, v10);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v10))
      {
        v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v13, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v10))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      ++v10;
    }

    while (v10 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53C9B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, quasar::Bitmap *a24, quasar::Bitmap *a25, kaldi::nnet1::UpdatableComponent *a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t a30)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v30);
  a30 = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  v33 = *(v31 + 63);
  if (v33)
  {
    *(v31 + 64) = v33;
    operator delete(v33);
  }

  v34 = *(v31 + 60);
  if (v34)
  {
    *(v31 + 61) = v34;
    operator delete(v34);
  }

  a30 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a23;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a27, 0);
  v35 = *(v31 + 27);
  *(v31 + 27) = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  v36 = *(v31 + 25);
  *(v31 + 25) = 0;
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a28, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a29, 0);
  quasar::Bitmap::~Bitmap(a24);
  quasar::Bitmap::~Bitmap(a25);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v31, off_1F2D0FB68);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a26);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitData(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 12);
  v68 = -1;
  v69 = v4;
  v66 = 0x40000000;
  v67 = -1073741824;
  v64 = -1073741824;
  v65 = 1036831949;
  v63 = 0x40000000;
  kaldi::nnet1::Component::TypeToMarker(2, &v62);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &v61);
  memset(v60, 0, sizeof(v60));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_227;
    }

    kaldi::ReadToken(a2, 0, v60);
    if ((SHIBYTE(v60[2]) & 0x80000000) == 0)
    {
      break;
    }

    v8 = v60[1];
    if (v60[1] > 14)
    {
      if (v60[1] > 20)
      {
        if (v60[1] == 21)
        {
          if (*v60[0] != 0x47746567726F463CLL || *(v60[0] + 8) != 0x5273616942657461 || *(v60[0] + 13) != 0x3E65676E61527361)
          {
            goto LABEL_226;
          }

LABEL_126:
          v21 = &v63;
LABEL_213:
          kaldi::ReadBasicType<float>(a2, 0, v21);
          goto LABEL_214;
        }

        if (v60[1] == 25)
        {
LABEL_106:
          v30 = *v60[0] == 0x7463656A6F72503CLL && *(v60[0] + 8) == 0x6E7261654C6E6F69 && *(v60[0] + 16) == 0x66656F4365746152 && *(v60[0] + 24) == 62;
          v21 = (a1 + 468);
          if (v30)
          {
            goto LABEL_213;
          }

          goto LABEL_173;
        }

        goto LABEL_154;
      }

      if (v60[1] != 15)
      {
        if (v60[1] == 20)
        {
          if (*v60[0] != 0x47746567726F463CLL || *(v60[0] + 8) != 0x4D73616942657461 || *(v60[0] + 16) != 1047421285)
          {
            goto LABEL_226;
          }

LABEL_82:
          v21 = &v64;
          goto LABEL_213;
        }

        goto LABEL_154;
      }

      v5 = v60[0];
LABEL_100:
      v25 = *v5;
      v26 = *(v5 + 7);
      v27 = v25 == 0x61526E7261654C3CLL && v26 == 0x3E66656F43657461;
      v21 = (a1 + 464);
      if (v27)
      {
        goto LABEL_213;
      }

      v8 = v60[1];
      if ((v60[2] & 0x8000000000000000) != 0 && v60[1] == 25)
      {
        goto LABEL_106;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v60[2]) <= 0xBu)
        {
          goto LABEL_139;
        }

LABEL_137:
        if (HIBYTE(v60[2]) == 12)
        {
LABEL_32:
          if (v60[0] != 0x536D6F646E61523CLL || LODWORD(v60[1]) != 1046766949)
          {
            goto LABEL_226;
          }

LABEL_37:
          v12 = &v68;
LABEL_134:
          kaldi::ReadBasicType<int>(a2, 0, v12);
          goto LABEL_214;
        }

LABEL_200:
        if (HIBYTE(v60[2]) != 18)
        {
          if (HIBYTE(v60[2]) != 19)
          {
            goto LABEL_226;
          }

          v5 = v60;
          goto LABEL_203;
        }

        if (v60[0] != 0x4374757074754F3CLL || v60[1] != 0x65756C61566C6C65 || LOWORD(v60[2]) != 15987)
        {
          goto LABEL_226;
        }

        goto LABEL_225;
      }

      goto LABEL_154;
    }

    if (v60[1] != 10)
    {
      if (v60[1] == 11)
      {
        if (*v60[0] != 0x6E6152736169423CLL || *(v60[0] + 3) != 0x3E65676E61527361)
        {
LABEL_226:
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v60, "</Component>"))
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v59);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "Invalid token ", 14);
            if (v60[2] >= 0)
            {
              v54 = v60;
            }

            else
            {
              v54 = v60[0];
            }

            if (v60[2] >= 0)
            {
              v55 = HIBYTE(v60[2]);
            }

            else
            {
              v55 = v60[1];
            }

            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ". Allowed tokens: ", 18);
            v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "(NumCells|BiasMean|BiasRange|ForgetGateBiasMean|ForgetGateBiasRange|ParamStddev|LearnRateCoef|ProjectionLearnRateCoef|MaxNorm|", 126);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "MaxGrad|MaxCell|NoPeep|InitTransformType|GradientNormType|RandomSeed)", 69);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v59);
          }

LABEL_227:
          kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateParams(a1, v69);
        }

        goto LABEL_132;
      }

      if (v60[1] == 13)
      {
        if (*v60[0] != 0x74536D617261503CLL || *(v60[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_226;
        }

        goto LABEL_88;
      }

LABEL_154:
      if (v8 == 9)
      {
        v40 = *v60[0] == 0x6D726F4E78614D3CLL && *(v60[0] + 8) == 62;
        v21 = (a1 + 472);
        if (v40)
        {
          goto LABEL_213;
        }

        v41 = *v60[0] == 0x6461724778614D3CLL && *(v60[0] + 8) == 62;
        v21 = (a1 + 152);
        if (v41)
        {
          goto LABEL_213;
        }
      }

      else if (v8 == 18)
      {
        v37 = *v60[0] == 0x6E6569646172473CLL && *(v60[0] + 8) == 0x7079546D726F4E74;
        if (v37 && *(v60[0] + 16) == 15973)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_173;
    }

    if (*v60[0] == 0x6C6C65436D754E3CLL && *(v60[0] + 8) == 15987)
    {
LABEL_133:
      v12 = &v69;
      goto LABEL_134;
    }

    if (*v60[0] == 0x61654D736169423CLL && *(v60[0] + 8) == 15982)
    {
      goto LABEL_98;
    }

LABEL_173:
    if (v60[1] == 9)
    {
      v45 = *v60[0] == 0x6C6C654378614D3CLL && *(v60[0] + 8) == 62;
      v21 = (a1 + 476);
      if (v45)
      {
        goto LABEL_213;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_199;
      }
    }

    if (v60[1] == 12)
    {
      if (*v60[0] == 0x536D6F646E61523CLL && *(v60[0] + 8) == 1046766949)
      {
        goto LABEL_37;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
LABEL_199:
        if (HIBYTE(v60[2]) == 8)
        {
          goto LABEL_215;
        }

        goto LABEL_200;
      }
    }

    if (v60[1] == 8)
    {
      if (*v60[0] == 0x3E706565506F4E3CLL)
      {
        goto LABEL_216;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }
    }

    if (v60[1] != 18)
    {
      goto LABEL_192;
    }

    if (*v60[0] != 0x4374757074754F3CLL || *(v60[0] + 8) != 0x65756C61566C6C65 || *(v60[0] + 16) != 15987)
    {
      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }

LABEL_192:
      if (v60[1] != 19)
      {
        goto LABEL_226;
      }

      v5 = v60[0];
LABEL_203:
      v46 = *v5;
      v47 = v5[1];
      v48 = *(v5 + 11);
      if (v46 != 0x61725474696E493CLL || v47 != 0x79546D726F66736ELL || v48 != 0x3E657079546D726FLL)
      {
        goto LABEL_226;
      }

      v39 = &v62;
LABEL_212:
      kaldi::ReadToken(a2, 0, v39);
      goto LABEL_214;
    }

LABEL_225:
    *(a1 + 209) = 1;
LABEL_214:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v60[2]) <= 0xCu)
  {
    if (HIBYTE(v60[2]) > 9u)
    {
      if (HIBYTE(v60[2]) == 10)
      {
        if (v60[0] == 0x6C6C65436D754E3CLL && LOWORD(v60[1]) == 15987)
        {
          goto LABEL_133;
        }

        if (v60[0] != 0x61654D736169423CLL || LOWORD(v60[1]) != 15982)
        {
          goto LABEL_226;
        }

LABEL_98:
        v21 = &v67;
        goto LABEL_213;
      }

      if (HIBYTE(v60[2]) != 11)
      {
        goto LABEL_32;
      }

      if (v60[0] != 0x6E6152736169423CLL || *(v60 + 3) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

LABEL_132:
      v21 = &v66;
      goto LABEL_213;
    }

LABEL_139:
    if (HIBYTE(v60[2]) != 8)
    {
      if (HIBYTE(v60[2]) != 9)
      {
        goto LABEL_226;
      }

      v34 = v60[0] == 0x6D726F4E78614D3CLL && LOBYTE(v60[1]) == 62;
      v21 = (a1 + 472);
      if (!v34)
      {
        v35 = v60[0] == 0x6461724778614D3CLL && LOBYTE(v60[1]) == 62;
        v21 = (a1 + 152);
        if (!v35)
        {
          v36 = v60[0] == 0x6C6C654378614D3CLL && LOBYTE(v60[1]) == 62;
          v21 = (a1 + 476);
          if (!v36)
          {
            goto LABEL_226;
          }
        }
      }

      goto LABEL_213;
    }

LABEL_215:
    if (v60[0] != 0x3E706565506F4E3CLL)
    {
      goto LABEL_226;
    }

LABEL_216:
    *(a1 + 208) = 0;
    goto LABEL_214;
  }

  v5 = v60;
  if (HIBYTE(v60[2]) > 0x12u)
  {
    if (HIBYTE(v60[2]) == 19)
    {
      goto LABEL_203;
    }

    if (HIBYTE(v60[2]) != 20)
    {
      if (HIBYTE(v60[2]) != 21)
      {
        goto LABEL_226;
      }

      v13 = v60[0] == 0x47746567726F463CLL && v60[1] == 0x5273616942657461;
      if (!v13 || *(&v60[1] + 5) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

      goto LABEL_126;
    }

    if (v60[0] != 0x47746567726F463CLL || v60[1] != 0x4D73616942657461 || LODWORD(v60[2]) != 1047421285)
    {
      goto LABEL_226;
    }

    goto LABEL_82;
  }

  if (HIBYTE(v60[2]) == 13)
  {
    if (v60[0] != 0x74536D617261503CLL || *(v60 + 5) != 0x3E7665646474536DLL)
    {
      goto LABEL_226;
    }

LABEL_88:
    v21 = &v65;
    goto LABEL_213;
  }

  if (HIBYTE(v60[2]) != 15)
  {
    if (HIBYTE(v60[2]) != 18)
    {
      goto LABEL_226;
    }

    if (v60[0] == 0x6E6569646172473CLL && v60[1] == 0x7079546D726F4E74 && LOWORD(v60[2]) == 15973)
    {
LABEL_164:
      v39 = &v61;
      goto LABEL_212;
    }

    goto LABEL_137;
  }

  goto LABEL_100;
}

void sub_1B53CAAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  if (*(v3 - 185) < 0)
  {
    operator delete(*(v3 - 208));
  }

  if (*(v3 - 161) < 0)
  {
    operator delete(*(v3 - 184));
  }

  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateParams(uint64_t a1, uint64_t a2)
{
  *(a1 + 176) = a2;
  if (*(a1 + *(*a1 - 24) + 12) > a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "# LSTM cells (", 14);
    v5 = MEMORY[0x1B8C84C00](v4, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") should not be less than output dim (", 38);
    v7 = MEMORY[0x1B8C84C00](v6, *(a1 + *(*a1 - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ").");
  }

  else
  {
    if (!*(a1 + 184))
    {
      operator new();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "input_weights_ thought to be un-initialized here");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

uint64_t kaldi::nnet1::RandMatrix<kaldi::QuantizedMatrix<signed char>>(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, kaldi::quasar::Vocab *this, float a5)
{
  v10 = kaldi::quasar::Vocab::VocabSize(this);
  v11 = kaldi::QuantizedMatrixBase<short>::NumCols(this);
  kaldi::Matrix<float>::Matrix(v17, v10, v11, 0, 0);
  v12 = 0;
LABEL_2:
  if (v12 < kaldi::MatrixBase<float>::NumRows(v17))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::MatrixBase<float>::NumCols(v17))
      {
        ++v12;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0);
          v14 = v15 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v14 = (kaldi::UniformRandomNumber::RandUniform(a1, 0) + -0.5) * (a5 + a5);
        }
      }

      else if (v12 == i)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      *(v17[0] + 4 * v12 * v18 + 4 * i) = v14;
    }
  }

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(this, v17);
  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_1B53CB188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(uint64_t a1)
{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(uint64_t a1)
{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(uint64_t a1)
{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(uint64_t a1)
{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(uint64_t a1)
{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_113:
    v34 = *(a1 + 176);
    v35 = *(a1 + *(*a1 - 24) + 12);
    if (v34 < v35)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "# LSTM cells (", 14);
      v41 = MEMORY[0x1B8C84C00](v40, *(a1 + 176));
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ") should not be less than output dim (", 38);
      v43 = MEMORY[0x1B8C84C00](v42, *(a1 + *(*a1 - 24) + 12));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v43, ").");
    }

    else
    {
      v36 = *(a1 + 184);
      *(a1 + 224) = v34 > v35;
      if (!v36)
      {
        operator new();
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_weights_ thougth to be un-initialized here");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    kaldi::ReadToken(a2, a3, &v46);
    if (SHIBYTE(v48) < 0)
    {
      if (v47 != 10 || (*v46 == 0x6C6C65436D754E3CLL ? (v7 = *(v46 + 4) == 15987) : (v7 = 0), !v7))
      {
        if (v47 != 15)
        {
          v12 = v47;
          if (v47 == 25)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }

        v6 = v46;
LABEL_13:
        v8 = *v6;
        v9 = *(v6 + 7);
        v10 = v8 == 0x61526E7261654C3CLL && v9 == 0x3E66656F43657461;
        v11 = (a1 + 464);
        if (v10)
        {
          goto LABEL_109;
        }

        v12 = v47;
        if (v48 < 0 && v47 == 25)
        {
LABEL_33:
          v17 = *v46 == 0x7463656A6F72503CLL && v46[1] == 0x6E7261654C6E6F69 && v46[2] == 0x66656F4365746152 && *(v46 + 24) == 62;
          v11 = (a1 + 468);
          if (!v17)
          {
LABEL_116:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
            if (v48 >= 0)
            {
              v38 = &v46;
            }

            else
            {
              v38 = v46;
            }

            if (v48 >= 0)
            {
              v39 = HIBYTE(v48);
            }

            else
            {
              v39 = v47;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          goto LABEL_109;
        }

        if (v48 < 0)
        {
LABEL_44:
          if (v12 == 9)
          {
            v18 = *v46 == 0x6D726F4E78614D3CLL && *(v46 + 8) == 62;
            v11 = (a1 + 472);
            if (v18)
            {
              goto LABEL_109;
            }

            if (v48 < 0)
            {
              v30 = *v46 == 0x6C6C654378614D3CLL && *(v46 + 8) == 62;
              v11 = (a1 + 476);
              if (!v30)
              {
                v28 = v46;
                goto LABEL_104;
              }

LABEL_109:
              kaldi::ReadBasicType<float>(a2, a3, v11);
              goto LABEL_110;
            }

            goto LABEL_50;
          }

          if (v12 == 8)
          {
            v29 = *v46;
            goto LABEL_97;
          }

          if (v12 != 18)
          {
            goto LABEL_116;
          }

          if (*v46 != 0x4374757074754F3CLL || v46[1] != 0x65756C61566C6C65 || *(v46 + 8) != 15987)
          {
            if (*v46 == 0x6E6569646172473CLL && v46[1] == 0x7079546D726F4E74 && *(v46 + 8) == 15973)
            {
              goto LABEL_73;
            }

            if (HIBYTE(v48) != 9)
            {
              goto LABEL_116;
            }

LABEL_93:
            v28 = &v46;
LABEL_104:
            v31 = *v28;
            v32 = *(v28 + 8);
            v33 = v31 == 0x6461724778614D3CLL && v32 == 62;
            v11 = (a1 + 152);
            if (!v33)
            {
              goto LABEL_116;
            }

            goto LABEL_109;
          }

LABEL_95:
          *(a1 + 209) = 1;
          goto LABEL_110;
        }

LABEL_25:
        if (HIBYTE(v48) == 9)
        {
          v14 = v46 == 0x6D726F4E78614D3CLL && v47 == 62;
          v11 = (a1 + 472);
          if (v14)
          {
            goto LABEL_109;
          }

LABEL_53:
          v19 = v46 == 0x6C6C654378614D3CLL && v47 == 62;
          v11 = (a1 + 476);
          if (v19)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

LABEL_50:
        if (HIBYTE(v48) == 8)
        {
          v29 = v46;
LABEL_97:
          if (v29 != 0x3E706565506F4E3CLL)
          {
            goto LABEL_116;
          }

          *(a1 + 208) = 0;
          goto LABEL_110;
        }

        if (HIBYTE(v48) != 18)
        {
          if (HIBYTE(v48) != 9)
          {
            goto LABEL_116;
          }

          goto LABEL_53;
        }

        if (v46 != 0x4374757074754F3CLL || v47 != 0x65756C61566C6C65 || v48 != 15987)
        {
          if (v46 != 0x6E6569646172473CLL || v47 != 0x7079546D726F4E74 || v48 != 15973)
          {
            goto LABEL_116;
          }

LABEL_73:
          __p[0] = 0;
          __p[1] = 0;
          v45 = 0;
          kaldi::ReadToken(a2, a3, __p);
          *(a1 + 156) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          if (SHIBYTE(v45) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_110;
        }

        goto LABEL_95;
      }
    }

    else
    {
      if (HIBYTE(v48) != 10)
      {
        if (HIBYTE(v48) == 15)
        {
          v6 = &v46;
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      if (v46 != 0x6C6C65436D754E3CLL || v47 != 15987)
      {
        goto LABEL_25;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, a1 + 176);
LABEL_110:
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v46);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_113;
    }
  }
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<NumCells>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 176));
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<ProjectionLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxCell>");
  result = kaldi::WriteBasicType<float>(a2, a3);
  if ((*(a1 + 208) & 1) == 0)
  {
    result = kaldi::WriteToken(a2, a3, "<NoPeep>");
  }

  if (*(a1 + 209) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<OutputCellValues>");
  }

  return result;
}

void sub_1B53CBF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::WriteData(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 128))(a1);
  (*(*a1 + 192))(a1, a2, a3);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::QuantizedMatrix<signed char>::Write(v8, a2, a3, a4);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  kaldi::QuantizedMatrix<signed char>::Write(v9, a2, a3, a4);
  if (a1[208] == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::Write(v10, a2, a3, a4);
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  kaldi::CuVectorBase<float>::Write(v11, a2, a3);
  if (a1[224] == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);

    kaldi::QuantizedMatrix<signed char>::Write(v12, a2, a3, a4);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::NumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v3 = kaldi::quasar::Vocab::VocabSize(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4) * v3;
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v7 = kaldi::quasar::Vocab::VocabSize(v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v9 = v5 + kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
  v10 = (v9 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16));
  if (*(a1 + 208) == 1)
  {
    v11 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
    v10 = (v10 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) * v11);
  }

  if (*(a1 + 224) == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v13 = kaldi::quasar::Vocab::VocabSize(v12);
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    return v10 + kaldi::QuantizedMatrixBase<short>::NumCols(v14) * v13;
  }

  return v10;
}

const void **kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetParams(_BYTE *a1, void **a2)
{
  v4 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v6 = kaldi::quasar::Vocab::VocabSize(v5);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(v7) * v6;
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v10 = kaldi::quasar::Vocab::VocabSize(v9);
  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v30 = 0;
  v31 = 0;
  v12 = kaldi::QuantizedMatrixBase<short>::NumCols(v11) * v10;
  v29 = *a2;
  LODWORD(v30) = v8;
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v29, v13);
  v30 = 0;
  v31 = 0;
  v14 = v12 + v8;
  v29 = *a2 + 4 * v8;
  LODWORD(v30) = v12;
  v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v29, v15);
  if (a1[208] == 1)
  {
    v16 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
    v17 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) * v16;
    v30 = 0;
    v31 = 0;
    v18 = v17 + v14;
    v29 = *a2 + 4 * v14;
    LODWORD(v30) = v17;
    v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v29, v19);
    v14 = v18;
  }

  v20 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16);
  v30 = 0;
  v31 = 0;
  v29 = *a2 + 4 * v14;
  LODWORD(v30) = v20;
  v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  result = kaldi::CuVectorBase<float>::CopyToVec<float>(v21, &v29);
  if (a1[224] == 1)
  {
    v23 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16) + v14;
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v25 = kaldi::quasar::Vocab::VocabSize(v24);
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v27 = kaldi::QuantizedMatrixBase<short>::NumCols(v26);
    v30 = 0;
    v31 = 0;
    v29 = *a2 + 4 * v23;
    v30 = (v27 * v25);
    v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    return kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v29, v28);
  }

  return result;
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetParams(_BYTE *a1, char **a2)
{
  (*(*a1 + 208))(a1);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v5 = kaldi::quasar::Vocab::VocabSize(v4);
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::NumCols(v6) * v5;
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v9 = kaldi::quasar::Vocab::VocabSize(v8);
  v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v11 = kaldi::QuantizedMatrixBase<short>::NumCols(v10) * v9;
  v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v28 = 0;
  v29 = 0;
  v27 = *a2;
  LODWORD(v28) = v7;
  kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v12, &v27);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v28 = 0;
  v29 = 0;
  v14 = v11 + v7;
  v27 = &(*a2)[4 * v7];
  LODWORD(v28) = v11;
  kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v13, &v27);
  if (a1[208] == 1)
  {
    v15 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
    v16 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) * v15;
    v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    v28 = 0;
    v29 = 0;
    v27 = &(*a2)[4 * v14];
    LODWORD(v28) = v16;
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v17, &v27);
    v14 += v16;
  }

  v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  v19 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16);
  v28 = 0;
  v29 = 0;
  v27 = &(*a2)[4 * v14];
  LODWORD(v28) = v19;
  result = kaldi::CuVectorBase<float>::CopyFromVec<float>(v18, &v27);
  if (a1[224] == 1)
  {
    v21 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16) + v14;
    v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v23 = kaldi::quasar::Vocab::VocabSize(v22);
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v25 = kaldi::QuantizedMatrixBase<short>::NumCols(v24) * v23;
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v28 = 0;
    v29 = 0;
    v27 = &(*a2)[4 * v21];
    LODWORD(v28) = v25;
    return kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v26, &v27);
  }

  return result;
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v3 = kaldi::QuantizedMatrixBase<signed char>::Sum(v2);
  v4 = *&v3;
  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v6 = kaldi::QuantizedMatrixBase<signed char>::Sum(v5);
  v7 = v4 + *&v6;
  if (*(a1 + 208) == 1)
  {
    v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    v7 = v7 + kaldi::CuMatrixBase<float>::Sum(v8);
  }

  if (*(a1 + 224) == 1)
  {
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v10 = kaldi::QuantizedMatrixBase<signed char>::Sum(v9);
    v7 = v7 + *&v10;
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  v12 = kaldi::CuVectorBase<float>::Sum(v11);
  return v7 + *&v12;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v3 = kaldi::quasar::Vocab::VocabSize(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4);
  kaldi::CuMatrix<float>::CuMatrix(v6, v3, v5, 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v6);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::QuantizedMatrixBase<signed char>::AddMat();
}

void sub_1B53CC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v4);
  v6 = kaldi::quasar::Vocab::VocabSize(v5);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v4);
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(v7);
  kaldi::CuMatrix<float>::Resize(va, v6, v8, 1, 0);
  kaldi::CuMatrixBase<float>::SetRandn(va);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v4);
  kaldi::QuantizedMatrixBase<signed char>::AddMat();
}

void sub_1B53CCA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetGradient(_BYTE *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 336))(v9, a2, a3, 0, 0);
  v10 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a4, v10, 0);
  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v12 = kaldi::quasar::Vocab::VocabSize(v11);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v14 = kaldi::QuantizedMatrixBase<short>::NumCols(v13) * v12;
  v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v16 = kaldi::quasar::Vocab::VocabSize(v15);
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v18 = kaldi::QuantizedMatrixBase<short>::NumCols(v17);
  v40 = 0;
  v41 = 0;
  v39 = *a4;
  LODWORD(v40) = v14;
  v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(v9, 0);
  kaldi::Matrix<float>::Matrix<float>(&v36, v19, 111);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v39, &v36);
  v20 = v18 * v16;
  kaldi::Matrix<float>::~Matrix(&v36);
  v37 = 0;
  v38 = 0;
  v21 = v20 + v14;
  v36 = *a4 + 4 * v14;
  LODWORD(v37) = v20;
  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(v9, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v36, v22);
  if (a1[208] == 1)
  {
    v23 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
    v24 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) * v23;
    v37 = 0;
    v38 = 0;
    v25 = v24 + v21;
    v36 = *a4 + 4 * v21;
    LODWORD(v37) = v24;
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v36, v26);
    v21 = v25;
  }

  v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16);
  v37 = 0;
  v38 = 0;
  v36 = *a4 + 4 * v21;
  LODWORD(v37) = v27;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(v9, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v28, &v36);
  if (a1[224] == 1)
  {
    v29 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16) + v21;
    v30 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v31 = kaldi::quasar::Vocab::VocabSize(v30);
    v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v33 = kaldi::QuantizedMatrixBase<short>::NumCols(v32);
    v37 = 0;
    v38 = 0;
    v36 = *a4 + 4 * v29;
    v37 = (v33 * v31);
    v34 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v36, v34);
  }

  return (*(*v9 + 8))(v9);
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetNormalizedLearningRate(void *a1, int a2)
{
  v2 = (a1 + *(*a1 - 24));
  if ((v2[21] & 1) == 0)
  {
    return v2[14];
  }

  v3 = a1[63];
  v4 = a1[64] - v3;
  if (!v4)
  {
    return NAN;
  }

  v5 = v4 >> 2;
  if (v5 <= a2)
  {
    return NAN;
  }

  v6 = v5 - 1;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  return *(v3 + 4 * v6);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
  (*(*a1 + 192))(a1, &v44, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Input weights:", 16);
  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::nnet1::MomentStatistics<signed char>(v3);
  if ((v43 & 0x80u) == 0)
  {
    v4 = v42;
  }

  else
  {
    v4 = v42[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v5 = v43;
  }

  else
  {
    v5 = v42[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n Recurrent weights:", 20);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  kaldi::nnet1::MomentStatistics<signed char>(v8);
  if ((v41 & 0x80u) == 0)
  {
    v9 = v40;
  }

  else
  {
    v9 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v10 = v41;
  }

  else
  {
    v10 = v40[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n Bias:", 7);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  kaldi::nnet1::MomentStatistics<float>(v13);
  if ((v39 & 0x80u) == 0)
  {
    v14 = v38;
  }

  else
  {
    v14 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v15 = v39;
  }

  else
  {
    v15 = v38[1];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n Forget gate bias:", 19);
  v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  v19 = *(a1 + 176);
  v34 = 0;
  v20 = *(v18 + 8) + 4 * v19;
  v32 = &unk_1F2CFCA48;
  v33 = v20;
  LODWORD(v34) = v19;
  v35 = *(v18 + 24);
  kaldi::nnet1::MomentStatistics<float>(&v32);
  if ((v37 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v22 = v37;
  }

  else
  {
    v22 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v21, v22);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (*(a1 + 208) == 1)
  {
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Peephole weights:", 19);
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v24);
    v25 = v34 >= 0 ? &v32 : v32;
    v26 = v34 >= 0 ? HIBYTE(v34) : v33;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Projection weights:", 21);
    v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    kaldi::nnet1::MomentStatistics<signed char>(v28);
    v29 = v34 >= 0 ? &v32 : v32;
    v30 = v34 >= 0 ? HIBYTE(v34) : v33;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }
  }

  std::stringbuf::str();
  v44 = *MEMORY[0x1E69E54E8];
  *(&v44 + *(v44 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v45 = MEMORY[0x1E69E5548] + 16;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  v45 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v46);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v48);
}

void sub_1B53CD540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InfoGradient(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 528))
  {
    memset(&v101, 0, sizeof(v101));
    v100 = 0;
    if (*(a1 + 80) >= 1)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v88, "\n For batch ");
        kaldi::quasar::to_string<int>(&v100);
        if ((v87 & 0x80u) == 0)
        {
          v3 = v86;
        }

        else
        {
          v3 = v86[0];
        }

        if ((v87 & 0x80u) == 0)
        {
          v4 = v87;
        }

        else
        {
          v4 = v86[1];
        }

        v5 = std::string::append(&v88, v3, v4);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v84, ": ");
        if ((v85 & 0x80u) == 0)
        {
          v7 = v84;
        }

        else
        {
          v7 = v84[0];
        }

        if ((v85 & 0x80u) == 0)
        {
          v8 = v85;
        }

        else
        {
          v8 = v84[1];
        }

        v9 = std::string::append(&v89, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v82, "\n  Number of cells : ");
        if ((v83 & 0x80u) == 0)
        {
          v11 = v82;
        }

        else
        {
          v11 = v82[0];
        }

        if ((v83 & 0x80u) == 0)
        {
          v12 = v83;
        }

        else
        {
          v12 = v82[1];
        }

        v13 = std::string::append(&v90, v11, v12);
        v14 = *&v13->__r_.__value_.__l.__data_;
        v91.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v91.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        kaldi::quasar::to_string<int>((a1 + 176));
        if ((v81 & 0x80u) == 0)
        {
          v15 = v80;
        }

        else
        {
          v15 = v80[0];
        }

        if ((v81 & 0x80u) == 0)
        {
          v16 = v81;
        }

        else
        {
          v16 = v80[1];
        }

        v17 = std::string::append(&v91, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v92.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v92.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v78, "\n  Input weights gradient: ");
        if ((v79 & 0x80u) == 0)
        {
          v19 = v78;
        }

        else
        {
          v19 = v78[0];
        }

        if ((v79 & 0x80u) == 0)
        {
          v20 = v79;
        }

        else
        {
          v20 = v78[1];
        }

        v21 = std::string::append(&v92, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v23);
        if ((v77 & 0x80u) == 0)
        {
          v24 = v76;
        }

        else
        {
          v24 = v76[0];
        }

        if ((v77 & 0x80u) == 0)
        {
          v25 = v77;
        }

        else
        {
          v25 = v76[1];
        }

        v26 = std::string::append(&v93, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v74, "\n  Recurrent weights gradient: ");
        if ((v75 & 0x80u) == 0)
        {
          v28 = v74;
        }

        else
        {
          v28 = v74[0];
        }

        if ((v75 & 0x80u) == 0)
        {
          v29 = v75;
        }

        else
        {
          v29 = v74[1];
        }

        v30 = std::string::append(&v94, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v32);
        if ((v73 & 0x80u) == 0)
        {
          v33 = v72;
        }

        else
        {
          v33 = v72[0];
        }

        if ((v73 & 0x80u) == 0)
        {
          v34 = v73;
        }

        else
        {
          v34 = v72[1];
        }

        v35 = std::string::append(&v95, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v70, "\n  Bias gradient: ");
        if ((v71 & 0x80u) == 0)
        {
          v37 = v70;
        }

        else
        {
          v37 = v70[0];
        }

        if ((v71 & 0x80u) == 0)
        {
          v38 = v71;
        }

        else
        {
          v38 = v70[1];
        }

        v39 = std::string::append(&v96, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v41);
        if ((v69 & 0x80u) == 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        if ((v69 & 0x80u) == 0)
        {
          v43 = v69;
        }

        else
        {
          v43 = __p[1];
        }

        v44 = std::string::append(&v97, v42, v43);
        v45 = *&v44->__r_.__value_.__l.__data_;
        v99 = v44->__r_.__value_.__r.__words[2];
        v98 = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if (v99 >= 0)
        {
          v46 = &v98;
        }

        else
        {
          v46 = v98;
        }

        if (v99 >= 0)
        {
          v47 = HIBYTE(v99);
        }

        else
        {
          v47 = *(&v98 + 1);
        }

        std::string::append(&v101, v46, v47);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (v69 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (v73 < 0)
        {
          operator delete(v72[0]);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (v77 < 0)
        {
          operator delete(v76[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (v79 < 0)
        {
          operator delete(v78[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if (v83 < 0)
        {
          operator delete(v82[0]);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (v87 < 0)
        {
          operator delete(v86[0]);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 208) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v97, "\n  Peephole weights gradient: ");
          v48 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v100);
          kaldi::nnet1::MomentStatistics<float>(v48);
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v96;
          }

          else
          {
            v49 = v96.__r_.__value_.__r.__words[0];
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v96.__r_.__value_.__l.__size_;
          }

          v51 = std::string::append(&v97, v49, size);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v99 = v51->__r_.__value_.__r.__words[2];
          v98 = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          if (v99 >= 0)
          {
            v53 = &v98;
          }

          else
          {
            v53 = v98;
          }

          if (v99 >= 0)
          {
            v54 = HIBYTE(v99);
          }

          else
          {
            v54 = *(&v98 + 1);
          }

          std::string::append(&v101, v53, v54);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(v98);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        if (*(a1 + 224) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v97, "\n  Projection weights gradient: ");
          v55 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v100);
          kaldi::nnet1::MomentStatistics<float>(v55);
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &v96;
          }

          else
          {
            v56 = v96.__r_.__value_.__r.__words[0];
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v96.__r_.__value_.__l.__size_;
          }

          v58 = std::string::append(&v97, v56, v57);
          v59 = *&v58->__r_.__value_.__l.__data_;
          v99 = v58->__r_.__value_.__r.__words[2];
          v98 = v59;
          v58->__r_.__value_.__l.__size_ = 0;
          v58->__r_.__value_.__r.__words[2] = 0;
          v58->__r_.__value_.__r.__words[0] = 0;
          if (v99 >= 0)
          {
            v60 = &v98;
          }

          else
          {
            v60 = v98;
          }

          if (v99 >= 0)
          {
            v61 = HIBYTE(v99);
          }

          else
          {
            v61 = *(&v98 + 1);
          }

          std::string::append(&v101, v60, v61);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(v98);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        ++v100;
      }

      while (v100 < *(a1 + 80));
    }

    v62 = std::string::basic_string[abi:ne200100]<0>(&v98, "\n");
    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v101;
    }

    else
    {
      v63 = v101.__r_.__value_.__r.__words[0];
    }

    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v101.__r_.__value_.__l.__size_;
    }

    v65 = std::string::insert(v62, 0, v63, v64);
    v66 = *&v65->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v65->__r_.__value_.__l + 2);
    *a2 = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  Gradients are uninitialized");
  }
}

void sub_1B53CDD38(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InfoPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v89, 0, sizeof(v89));
  v88 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v76, "\n For batch ");
      kaldi::quasar::to_string<int>(&v88);
      if ((v75 & 0x80u) == 0)
      {
        v3 = v74;
      }

      else
      {
        v3 = v74[0];
      }

      if ((v75 & 0x80u) == 0)
      {
        v4 = v75;
      }

      else
      {
        v4 = v74[1];
      }

      v5 = std::string::append(&v76, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v72, ": ");
      if ((v73 & 0x80u) == 0)
      {
        v7 = v72;
      }

      else
      {
        v7 = v72[0];
      }

      if ((v73 & 0x80u) == 0)
      {
        v8 = v73;
      }

      else
      {
        v8 = v72[1];
      }

      v9 = std::string::append(&v77, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v70, "\n  Gates values: ");
      if ((v71 & 0x80u) == 0)
      {
        v11 = v70;
      }

      else
      {
        v11 = v70[0];
      }

      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70[1];
      }

      v13 = std::string::append(&v78, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 248) + 48 * v88);
      if ((v69 & 0x80u) == 0)
      {
        v15 = v68;
      }

      else
      {
        v15 = v68[0];
      }

      if ((v69 & 0x80u) == 0)
      {
        v16 = v69;
      }

      else
      {
        v16 = v68[1];
      }

      v17 = std::string::append(&v79, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v66, "\n  Cell values: ");
      if ((v67 & 0x80u) == 0)
      {
        v19 = v66;
      }

      else
      {
        v19 = v66[0];
      }

      if ((v67 & 0x80u) == 0)
      {
        v20 = v67;
      }

      else
      {
        v20 = v66[1];
      }

      v21 = std::string::append(&v80, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 272) + 48 * v88);
      if ((v65 & 0x80u) == 0)
      {
        v23 = v64;
      }

      else
      {
        v23 = v64[0];
      }

      if ((v65 & 0x80u) == 0)
      {
        v24 = v65;
      }

      else
      {
        v24 = v64[1];
      }

      v25 = std::string::append(&v81, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v62, "\n  Cell outputs: ");
      if ((v63 & 0x80u) == 0)
      {
        v27 = v62;
      }

      else
      {
        v27 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v28 = v63;
      }

      else
      {
        v28 = v62[1];
      }

      v29 = std::string::append(&v82, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 296) + 48 * v88);
      if ((v61 & 0x80u) == 0)
      {
        v31 = v60;
      }

      else
      {
        v31 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v32 = v61;
      }

      else
      {
        v32 = v60[1];
      }

      v33 = std::string::append(&v83, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v58, "\n  Cell outputs gated: ");
      if ((v59 & 0x80u) == 0)
      {
        v35 = v58;
      }

      else
      {
        v35 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v36 = v59;
      }

      else
      {
        v36 = v58[1];
      }

      v37 = std::string::append(&v84, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 320) + 48 * v88);
      if ((v57 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v40 = v57;
      }

      else
      {
        v40 = __p[1];
      }

      v41 = std::string::append(&v85, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v87 = v41->__r_.__value_.__r.__words[2];
      v86 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v87 >= 0)
      {
        v43 = &v86;
      }

      else
      {
        v43 = v86;
      }

      if (v87 >= 0)
      {
        v44 = HIBYTE(v87);
      }

      else
      {
        v44 = *(&v86 + 1);
      }

      std::string::append(&v89, v43, v44);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v85, "\n  Output values: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 344) + 48 * v88);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v84;
        }

        else
        {
          v45 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v84.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v85, v45, size);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v87 = v47->__r_.__value_.__r.__words[2];
        v86 = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v49 = &v86;
        }

        else
        {
          v49 = v86;
        }

        if (v87 >= 0)
        {
          v50 = HIBYTE(v87);
        }

        else
        {
          v50 = *(&v86 + 1);
        }

        std::string::append(&v89, v49, v50);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      ++v88;
    }

    while (v88 < *(a1 + 80));
  }

  v51 = std::string::basic_string[abi:ne200100]<0>(&v86, "\n");
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v89;
  }

  else
  {
    v52 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v89.__r_.__value_.__l.__size_;
  }

  v54 = std::string::insert(v51, 0, v52, v53);
  *a2 = *v54;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_1B53CE61C(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InfoBackPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v75, 0, sizeof(v75));
  v74 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v64, "\n For batch ");
      kaldi::quasar::to_string<int>(&v74);
      if ((v63 & 0x80u) == 0)
      {
        v3 = v62;
      }

      else
      {
        v3 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v4 = v63;
      }

      else
      {
        v4 = v62[1];
      }

      v5 = std::string::append(&v64, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v60, ": ");
      if ((v61 & 0x80u) == 0)
      {
        v7 = v60;
      }

      else
      {
        v7 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v8 = v61;
      }

      else
      {
        v8 = v60[1];
      }

      v9 = std::string::append(&v65, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v58, "\n  Gates diff: ");
      if ((v59 & 0x80u) == 0)
      {
        v11 = v58;
      }

      else
      {
        v11 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v12 = v59;
      }

      else
      {
        v12 = v58[1];
      }

      v13 = std::string::append(&v66, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 440) + 48 * v74);
      if ((v57 & 0x80u) == 0)
      {
        v15 = v56;
      }

      else
      {
        v15 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v16 = v57;
      }

      else
      {
        v16 = v56[1];
      }

      v17 = std::string::append(&v67, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v54, "\n  Cell diff: ");
      if ((v55 & 0x80u) == 0)
      {
        v19 = v54;
      }

      else
      {
        v19 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = v54[1];
      }

      v21 = std::string::append(&v68, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 416) + 48 * v74);
      if ((v53 & 0x80u) == 0)
      {
        v23 = v52;
      }

      else
      {
        v23 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v24 = v53;
      }

      else
      {
        v24 = v52[1];
      }

      v25 = std::string::append(&v69, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v50, "\n  Cell out gated diff: ");
      if ((v51 & 0x80u) == 0)
      {
        v27 = v50;
      }

      else
      {
        v27 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v28 = v51;
      }

      else
      {
        v28 = v50[1];
      }

      v29 = std::string::append(&v70, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 392) + 48 * v74);
      if ((v49 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v32 = v49;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v71, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v73 = v33->__r_.__value_.__r.__words[2];
      v72 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v73 >= 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72;
      }

      if (v73 >= 0)
      {
        v36 = HIBYTE(v73);
      }

      else
      {
        v36 = *(&v72 + 1);
      }

      std::string::append(&v75, v35, v36);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v71, "\n  Output diff: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 368) + 48 * v74);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v70;
        }

        else
        {
          v37 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(&v71, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v73 = v39->__r_.__value_.__r.__words[2];
        v72 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v73 >= 0)
        {
          v41 = &v72;
        }

        else
        {
          v41 = v72;
        }

        if (v73 >= 0)
        {
          v42 = HIBYTE(v73);
        }

        else
        {
          v42 = *(&v72 + 1);
        }

        std::string::append(&v75, v41, v42);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      ++v74;
    }

    while (v74 < *(a1 + 80));
  }

  v43 = std::string::basic_string[abi:ne200100]<0>(&v72, "\n");
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v75;
  }

  else
  {
    v44 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v75.__r_.__value_.__l.__size_;
  }

  v46 = std::string::insert(v43, 0, v44, v45);
  *a2 = *v46;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void sub_1B53CEE10(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 20);
  v9 = *(a1 + 96);
  v133 = (v8 / v9);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v164, 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v164, "Running forward propagation for batch size = ", 45);
    v11 = MEMORY[0x1B8C84C00](v10, v8);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v13 = MEMORY[0x1B8C84C00](v12, v133);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " frames each from ", 18);
    v15 = MEMORY[0x1B8C84C00](v14, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v164);
  }

  v16 = *(a3 + 32);
  (*(*v7 + 88))(v7);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateForwardBuffers(v7, a4, v8, v16);
  v17 = *(v7 + 104);
  if (*(v7 + 112) == v17 || *(v17 + 32 * a4 + 16) < 1)
  {
    v128 = 0;
  }

  else
  {
    v18 = (*(v7 + 128) + 48 * a4);
    v18[4] = v16;
    v128 = 1;
    kaldi::CuMatrix<float>::Resize(v18, v9, *(*(v7 + 8) + 48 * a4 + 16), 1, 0);
  }

  v19 = *(v7 + 248) + 48 * a4;
  v134 = *(v7 + 344) + 48 * a4;
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(v7);
  LODWORD(v21) = 1.0;
  kaldi::CuMatrixBase<float>::AddMatMat<signed char>(v19, a2, 111, v20, 112, v21, 0.0);
  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(v7);
  kaldi::CuMatrixBase<float>::AddVecToRows(v19, v22, 1.0, 1.0);
  if (v133 >= 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v129 = v7 + 12;
    v131 = 4 * v9;
    v132 = v9;
    v127 = -v9;
    v136 = v9;
    v130 = v7;
    do
    {
      v26 = *(v19 + 24);
      v27 = *(v19 + 8) + 4 * (v26 * v23);
      v28 = *(v19 + 28) - v26 * v23;
      v29 = *(v19 + 32);
      DWORD2(v165) = *(v7 + 176);
      HIDWORD(v165) = v9;
      *&v166 = __PAIR64__(v28, v26);
      *(&v166 + 1) = v29;
      *&v165 = v27;
      v164.__locale_ = &unk_1F2CFA908;
      v30 = *(v19 + 8) + 4 * (v26 * v23) + 4 * DWORD2(v165);
      v31 = *(v19 + 28) - DWORD2(v165) - v26 * v23;
      *(&v162 + 1) = __PAIR64__(v9, DWORD2(v165));
      *&v163 = __PAIR64__(v31, v26);
      *(&v163 + 1) = v29;
      v161 = &unk_1F2CFA908;
      *&v162 = v30;
      v32 = *(v19 + 24);
      v33 = *(v19 + 8) + 4 * (v32 * v23) + 12 * DWORD2(v165);
      LODWORD(v30) = *(v19 + 28) - 3 * DWORD2(v165) - v32 * v23;
      v34 = *(v19 + 32);
      *(&v159 + 1) = __PAIR64__(v9, DWORD2(v165));
      *&v160 = __PAIR64__(v30, v32);
      *(&v160 + 1) = v34;
      v158 = &unk_1F2CFA908;
      *&v159 = v33;
      v35 = *(v7 + 272) + 48 * a4;
      LODWORD(v33) = *(v35 + 16);
      LODWORD(v34) = *(v35 + 24);
      v36 = *(v35 + 8) + 4 * v34 * v23;
      LODWORD(v29) = *(v35 + 28) - v34 * v23;
      v37 = *(v35 + 32);
      *(&v156 + 1) = __PAIR64__(v9, v33);
      *&v157 = __PAIR64__(v29, v34);
      *(&v157 + 1) = v37;
      v155 = &unk_1F2CFA908;
      *&v156 = v36;
      v154 = 0u;
      v153 = 0u;
      v152 = &unk_1F2CFA908;
      v151 = 0u;
      v150 = 0u;
      v149 = &unk_1F2CFA908;
      v135 = v25;
      if (v25)
      {
        if (v128)
        {
          v38 = a4;
          kaldi::CuMatrixBase<float>::SetZero(*(v7 + 128) + 48 * a4);
          v39 = *(v7 + 128) + 48 * a4;
          v40 = *(v39 + 8);
          v41 = *(v39 + 20);
          v42 = *(v39 + 24);
          v43 = *(v39 + 28);
          v44 = *(v39 + 32);
          DWORD2(v147) = *(v7 + 176);
          *&v150 = v40;
          *(&v150 + 1) = __PAIR64__(v41, DWORD2(v147));
          *&v151 = __PAIR64__(v43, v42);
          *(&v151 + 1) = v44;
          v146 = &unk_1F2CFA908;
          v148 = 0u;
          v147 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
          v45 = *(v7 + 272) + 48 * a4;
          v46 = *(v45 + 16);
          v47 = *(v45 + 24);
          v48 = *(v45 + 8) + 4 * (v47 * (v127 + v23));
          v49 = *(v45 + 28) - v47 * (v127 + v23);
          v50 = *(v45 + 32);
          *(&v147 + 1) = __PAIR64__(v9, v46);
          *&v148 = __PAIR64__(v49, v47);
          *(&v148 + 1) = v50;
          v146 = &unk_1F2CFA908;
          *&v147 = v48;
          v51 = *(v7 + 104) + 32 * a4;
          *(&v144 + 1) = 0;
          v143 = &unk_1F2CFCA48;
          *&v144 = *(v51 + 8) + v24;
          DWORD2(v144) = v9;
          *&v145 = *(v51 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v149, &v146, &v143, 1);
          v146 = &unk_1F2CFA908;
          v147 = 0u;
          v148 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
          v52 = *(v7 + 128) + 48 * a4;
          v53 = *(v7 + 176);
          v54 = *(v52 + 20);
          v55 = *(v52 + 24);
          v56 = *(v52 + 8) + 4 * v53;
          LODWORD(v53) = *(v52 + 28) - v53;
          v57 = *(v52 + 32);
          DWORD2(v147) = *(v129 + *(*v7 - 24));
          *&v153 = v56;
          *(&v153 + 1) = __PAIR64__(v54, DWORD2(v147));
          *&v154 = __PAIR64__(v53, v55);
          *(&v154 + 1) = v57;
          v146 = &unk_1F2CFA908;
          v148 = 0u;
          v147 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
          v58 = *(v134 + 24);
          v59 = *(v134 + 8) + 4 * (v58 * (v127 + v23));
          v60 = *(v134 + 28) - v58 * (v127 + v23);
          v61 = *(v134 + 32);
          DWORD2(v147) = *(v134 + 16);
          HIDWORD(v147) = v9;
          *&v148 = __PAIR64__(v60, v58);
          *(&v148 + 1) = v61;
          v146 = &unk_1F2CFA908;
          *&v147 = v59;
          v62 = *(v7 + 104) + 32 * a4;
          *(&v144 + 1) = 0;
          v143 = &unk_1F2CFCA48;
          *&v144 = *(v62 + 8) + v24;
          DWORD2(v144) = v9;
          *&v145 = *(v62 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v152, &v146, &v143, 1);
          v146 = &unk_1F2CFA908;
          v147 = 0u;
          v148 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
          LODWORD(v9) = v136;
        }

        else
        {
          v75 = *(v134 + 16);
          v76 = *(v134 + 24);
          v77 = *(v134 + 28) - v76 * (v127 + v23);
          v78 = *(v134 + 32);
          *&v153 = *(v134 + 8) + 4 * (v76 * (v127 + v23));
          *(&v153 + 1) = __PAIR64__(v9, v75);
          *&v154 = __PAIR64__(v77, v76);
          *(&v154 + 1) = v78;
          v146 = &unk_1F2CFA908;
          v147 = 0uLL;
          v148 = 0uLL;
          quasar::Bitmap::~Bitmap(&v146);
          v38 = a4;
          v79 = *(v7 + 272) + 48 * a4;
          v80 = *(v79 + 16);
          v81 = *(v79 + 24);
          v82 = *(v79 + 8) + 4 * (v81 * (v127 + v23));
          v83 = *(v79 + 28) - v81 * (v127 + v23);
          v84 = *(v79 + 32);
          *&v150 = v82;
          *(&v150 + 1) = __PAIR64__(v9, v80);
          *&v151 = __PAIR64__(v83, v81);
          *(&v151 + 1) = v84;
          v146 = &unk_1F2CFA908;
          v148 = 0u;
          v147 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
        }
      }

      else
      {
        v63 = *(v7 + 8) + 48 * a4;
        v64 = *(v63 + 20);
        v65 = *(v63 + 24);
        v66 = *(v63 + 8) + 4 * DWORD2(v165);
        v67 = *(v63 + 28) - DWORD2(v165);
        v68 = *(v63 + 32);
        DWORD2(v147) = *(v129 + *(*v7 - 24));
        *&v153 = v66;
        *(&v153 + 1) = __PAIR64__(v64, DWORD2(v147));
        *&v154 = __PAIR64__(v67, v65);
        *(&v154 + 1) = v68;
        v146 = &unk_1F2CFA908;
        v148 = 0uLL;
        v147 = 0uLL;
        quasar::Bitmap::~Bitmap(&v146);
        v69 = *(v7 + 8) + 48 * a4;
        v70 = *(v69 + 8);
        v71 = *(v69 + 20);
        v72 = *(v69 + 24);
        v73 = *(v69 + 28);
        v74 = *(v69 + 32);
        DWORD2(v147) = *(v7 + 176);
        *&v150 = v70;
        *(&v150 + 1) = __PAIR64__(v71, DWORD2(v147));
        *&v151 = __PAIR64__(v73, v72);
        *(&v151 + 1) = v74;
        v146 = &unk_1F2CFA908;
        v148 = 0u;
        v147 = 0u;
        quasar::Bitmap::~Bitmap(&v146);
        v38 = a4;
      }

      v85 = *(v19 + 24);
      v86 = *(v19 + 8) + 4 * (v85 * v23);
      v87 = *(v19 + 28) - v85 * v23;
      v88 = *(v19 + 32);
      DWORD2(v147) = *(v19 + 16);
      HIDWORD(v147) = v9;
      *&v148 = __PAIR64__(v87, v85);
      *(&v148 + 1) = v88;
      v146 = &unk_1F2CFA908;
      *&v147 = v86;
      v89 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v7);
      LODWORD(v90) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v146, &v152, 111, v89, 112, v90, 1.0);
      v146 = &unk_1F2CFA908;
      v147 = 0u;
      v148 = 0u;
      quasar::Bitmap::~Bitmap(&v146);
      if (*(v7 + 208) == 1)
      {
        v91 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(v7);
        v92 = *(v91 + 16);
        v93 = *(v91 + 32);
        *&v147 = *(v91 + 8);
        v146 = &unk_1F2CFCA48;
        *(&v147 + 1) = v92;
        *&v148 = v93;
        LODWORD(v94) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v164, &v149, 111, &v146, v94, 1.0);
        v95 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(v7);
        v96 = *(v95 + 16);
        v97 = *(v95 + 32);
        *&v147 = *(v95 + 8) + 4 * *(v95 + 24);
        v146 = &unk_1F2CFCA48;
        *(&v147 + 1) = v96;
        *&v148 = v97;
        LODWORD(v98) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v161, &v149, 111, &v146, v98, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v164, &v164);
      kaldi::CuMatrixBase<float>::Sigmoid(&v161, &v161);
      kaldi::CuMatrixBase<float>::ApplyTanh(&v158);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v155, &v164, 111, &v158, 111, 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v155, &v161, 111, &v149, 111, 1.0, 1.0);
      v99 = *(v7 + 476);
      if (v99 > 0.0)
      {
        kaldi::CuMatrixBase<float>::ApplyCeiling(&v155, v99);
        kaldi::CuMatrixBase<float>::ApplyFloor(&v155, -*(v7 + 476));
      }

      v100 = *(v7 + 176);
      v101 = *(v19 + 24);
      v102 = *(v19 + 8) + 4 * (v101 * v23) + 8 * v100;
      v103 = *(v19 + 28) - (v101 * v23 + 2 * v100);
      v104 = *(v19 + 32);
      DWORD2(v147) = *(v7 + 176);
      HIDWORD(v147) = v9;
      *&v148 = __PAIR64__(v103, v101);
      *(&v148 + 1) = v104;
      v146 = &unk_1F2CFA908;
      *&v147 = v102;
      if (*(v7 + 208) == 1)
      {
        v105 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(v7);
        v106 = *(v105 + 16);
        v107 = *(v105 + 32);
        *&v144 = *(v105 + 8) + 8 * *(v105 + 24);
        v143 = &unk_1F2CFCA48;
        *(&v144 + 1) = v106;
        *&v145 = v107;
        LODWORD(v108) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v146, &v155, 111, &v143, v108, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v146, &v146);
      v109 = *(v7 + 296) + 48 * v38;
      v110 = *(v109 + 16);
      v111 = *(v109 + 24);
      v112 = *(v109 + 8) + 4 * (v111 * v23);
      v113 = *(v109 + 28) - v111 * v23;
      v114 = *(v109 + 32);
      *(&v144 + 1) = __PAIR64__(v136, v110);
      *&v145 = __PAIR64__(v113, v111);
      *(&v145 + 1) = v114;
      v143 = &unk_1F2CFA908;
      *&v144 = v112;
      kaldi::CuMatrixBase<float>::Tanh(&v143, &v155);
      v115 = *(v7 + 320) + 48 * v38;
      v116 = *(v115 + 16);
      v117 = *(v115 + 24);
      v118 = *(v115 + 8) + 4 * (v117 * v23);
      v119 = *(v115 + 28) - v117 * v23;
      v120 = *(v115 + 32);
      *(&v141 + 1) = __PAIR64__(v136, v116);
      *&v142 = __PAIR64__(v119, v117);
      *(&v142 + 1) = v120;
      v140 = &unk_1F2CFA908;
      *&v141 = v118;
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v140, &v146, 111, &v143, 111, 1.0, 0.0);
      v121 = *(v134 + 24);
      v122 = *(v134 + 8) + 4 * (v121 * v23);
      v123 = *(v134 + 28) - v121 * v23;
      v124 = *(v134 + 32);
      if (*(v7 + 224) == 1)
      {
        DWORD2(v138) = *(v134 + 16);
        HIDWORD(v138) = v136;
        *&v139 = __PAIR64__(v123, v121);
        *(&v139 + 1) = v124;
        v137 = &unk_1F2CFA908;
        *&v138 = v122;
        v125 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(v7);
        LODWORD(v126) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v137, &v140, 111, v125, 112, v126, 0.0);
      }

      else
      {
        DWORD2(v138) = *(v134 + 16);
        HIDWORD(v138) = v136;
        *&v139 = __PAIR64__(v123, v121);
        *(&v139 + 1) = v124;
        v137 = &unk_1F2CFA908;
        *&v138 = v122;
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v137, &v140, 111);
      }

      v137 = &unk_1F2CFA908;
      v138 = 0u;
      v139 = 0u;
      quasar::Bitmap::~Bitmap(&v137);
      v140 = &unk_1F2CFA908;
      v141 = 0u;
      v142 = 0u;
      quasar::Bitmap::~Bitmap(&v140);
      v143 = &unk_1F2CFA908;
      v144 = 0u;
      v145 = 0u;
      quasar::Bitmap::~Bitmap(&v143);
      v146 = &unk_1F2CFA908;
      v147 = 0u;
      v148 = 0u;
      quasar::Bitmap::~Bitmap(&v146);
      v149 = &unk_1F2CFA908;
      v150 = 0u;
      v151 = 0u;
      quasar::Bitmap::~Bitmap(&v149);
      v152 = &unk_1F2CFA908;
      v153 = 0u;
      v154 = 0u;
      quasar::Bitmap::~Bitmap(&v152);
      v155 = &unk_1F2CFA908;
      v156 = 0u;
      v157 = 0u;
      quasar::Bitmap::~Bitmap(&v155);
      v158 = &unk_1F2CFA908;
      v159 = 0u;
      v160 = 0u;
      quasar::Bitmap::~Bitmap(&v158);
      v161 = &unk_1F2CFA908;
      v162 = 0u;
      v163 = 0u;
      quasar::Bitmap::~Bitmap(&v161);
      v164.__locale_ = &unk_1F2CFA908;
      v165 = 0u;
      v166 = 0u;
      quasar::Bitmap::~Bitmap(&v164);
      v25 = v135 + 1;
      v24 += v131;
      v23 += v132;
      LODWORD(v9) = v136;
      v7 = v130;
    }

    while (v133 != v135 + 1);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v134, 111);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SaveLastState(v7, a4);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateForwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating forward buffers for batch ", 37);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1B8C84C00](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 248) + 48 * a2), a3, (4 * *(a1 + 176)), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 272) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 296) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 320) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 344) + 48 * a2), a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  *(*(a1 + 248) + 48 * a2 + 32) = a4;
  *(*(a1 + 272) + 48 * a2 + 32) = a4;
  *(*(a1 + 296) + 48 * a2 + 32) = a4;
  *(*(a1 + 320) + 48 * a2 + 32) = a4;
  *(*(a1 + 344) + 48 * a2 + 32) = a4;
}

void sub_1B53D02E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SaveLastState(uint64_t a1, uint64_t a2)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v27, 3);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Saving last output and cell state for batch ", 44);
    MEMORY[0x1B8C84C00](v4, a2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v27);
  }

  v5 = *(a1 + 272) + 48 * a2;
  v6 = *(a1 + 96);
  v7 = *(v5 + 20) - v6;
  v8 = *(a1 + 8) + 48 * a2;
  v9 = *(a1 + 176);
  v10 = *(v8 + 28);
  v11 = *(v8 + 32);
  v28[0] = *(v8 + 8);
  LODWORD(v28[1]) = v9;
  *(&v28[1] + 4) = *(v8 + 20);
  HIDWORD(v28[2]) = v10;
  v28[3] = v11;
  v27.__locale_ = &unk_1F2CFA908;
  LODWORD(v8) = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 8) + 4 * (v12 * v7);
  v14 = *(v5 + 28) - v12 * v7;
  v15 = *(v5 + 32);
  *(&v25 + 1) = __PAIR64__(v6, v8);
  *&v26 = __PAIR64__(v14, v12);
  *(&v26 + 1) = v15;
  v24 = &unk_1F2CFA908;
  *&v25 = v13;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  v27.__locale_ = &unk_1F2CFA908;
  memset(v28, 0, sizeof(v28));
  quasar::Bitmap::~Bitmap(&v27);
  v16 = *(a1 + 8) + 48 * a2;
  v17 = *(a1 + 176);
  v18 = *(a1 + *(*a1 - 24) + 12);
  v19 = *(v16 + 8) + 4 * v17;
  LODWORD(v17) = *(v16 + 28) - v17;
  v20 = *(v16 + 32);
  v28[0] = v19;
  LODWORD(v28[1]) = v18;
  *(&v28[1] + 4) = *(v16 + 20);
  HIDWORD(v28[2]) = v17;
  v28[3] = v20;
  v27.__locale_ = &unk_1F2CFA908;
  v21 = *(a1 + 344) + 48 * a2;
  LODWORD(v17) = *(v21 + 16);
  LODWORD(v19) = *(v21 + 24);
  v22 = *(v21 + 8) + 4 * (v19 * v7);
  LODWORD(v20) = *(v21 + 28) - v19 * v7;
  v23 = *(v21 + 32);
  *(&v25 + 1) = __PAIR64__(*(a1 + 96), v17);
  *&v26 = __PAIR64__(v20, v19);
  *(&v26 + 1) = v23;
  v24 = &unk_1F2CFA908;
  *&v25 = v22;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  v27.__locale_ = &unk_1F2CFA908;
  memset(v28, 0, sizeof(v28));
  quasar::Bitmap::~Bitmap(&v27);
}

void sub_1B53D058C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))(a1);
  v5 = *(a3 + 24);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateForwardBuffers(a1, 0, 1, v5);
  v6 = a1[13];
  if (a1[14] != v6 && *(v6 + 16) >= 1)
  {
    v7 = a1[16];
    v7[4] = v5;
    kaldi::CuMatrix<float>::Resize(v7, 1, *(a1[1] + 16), 1, 0);
  }

  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::CuVectorBase<float>::AddMatVec<signed char>();
}

void sub_1B53D0764()
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(v0);
  LODWORD(v2) = 1.0;
  kaldi::CuVectorBase<float>::AddVec(v2, 1.0);
  v3 = *(v0 + 176);
  v4 = *(v1 - 72);
  v5 = *(v1 - 56);
  *(v1 - 152) = v5;
  *(v1 - 144) = &unk_1F2CFCA48;
  *(v1 - 136) = v4;
  *(v1 - 128) = 0;
  *(v1 - 128) = v3;
  *(v1 - 120) = v5;
  *(v1 - 176) = &unk_1F2CFCA48;
  *(v1 - 168) = v4 + 4 * v3;
  *(v1 - 160) = 0;
  *(v1 - 160) = v3;
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v0);
  kaldi::CuVectorBase<float>::AddMatVec<signed char>();
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc()
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc();
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc();
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 20);
  v10 = *(a1 + 96);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(a1);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v191, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v191, "Running backward propagation for batch size = ", 46);
    v12 = MEMORY[0x1B8C84C00](v11, v9);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1B8C84C00](v13, (v9 / v10));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1B8C84C00](v15, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v191);
  }

  v133 = a5;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  v18 = *(v17 + 32);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateBackwardBuffers(a1, a6, v9, v18);
  v19 = a6;
  v20 = 3 * a6;
  v21 = *(a1 + 248) + 48 * a6;
  v22 = *(a1 + 440) + 16 * v20;
  v134 = (*(a1 + 368) + 16 * v20);
  v144 = *(a1 + 416);
  v23 = *(a1 + 104);
  v140 = v19;
  v142 = (v9 / v10);
  if (*(a1 + 112) == v23 || *(v23 + 32 * v19 + 16) < 1)
  {
    v139 = 0;
    v24 = a1;
  }

  else
  {
    v24 = a1;
    v25 = (*(a1 + 128) + 48 * v19);
    v25[4] = v18;
    v139 = 1;
    kaldi::CuMatrix<float>::Resize(v25, v10, *(v22 + 16), 1, 0);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v134, a4, 111);
  v26 = *(v24 + 176);
  v27 = *(v21 + 20);
  v28 = *(v21 + 24);
  v29 = *(v21 + 28);
  v30 = *(v21 + 32);
  *&v192 = *(v21 + 8);
  *(&v192 + 1) = __PAIR64__(v27, v26);
  *&v193 = __PAIR64__(v29, v28);
  *(&v193 + 1) = v30;
  v191.__locale_ = &unk_1F2CFA908;
  *&v189 = v192 + 4 * v26;
  *(&v189 + 1) = __PAIR64__(v27, v26);
  LODWORD(v190) = v28;
  DWORD1(v190) = v29 - v26;
  *(&v190 + 1) = v30;
  v188 = &unk_1F2CFA908;
  v31 = *(v21 + 20);
  v32 = *(v21 + 24);
  v33 = *(v21 + 28) - 2 * v26;
  v34 = *(v21 + 32);
  *&v186 = *(v21 + 8) + 8 * v26;
  *(&v186 + 1) = __PAIR64__(v31, v26);
  *&v187 = __PAIR64__(v33, v32);
  *(&v187 + 1) = v34;
  v185 = &unk_1F2CFA908;
  v35 = *(v21 + 28) - 3 * v26;
  *&v183 = *(v21 + 8) + 12 * v26;
  *(&v183 + 1) = __PAIR64__(v31, v26);
  *&v184 = __PAIR64__(v35, v32);
  *(&v184 + 1) = v34;
  v182 = &unk_1F2CFA908;
  v36 = *(v22 + 20);
  v37 = *(v22 + 24);
  v38 = *(v22 + 28);
  v39 = *(v22 + 32);
  *&v180 = *(v22 + 8);
  *(&v180 + 1) = __PAIR64__(v36, v26);
  *&v181 = __PAIR64__(v38, v37);
  *(&v181 + 1) = v39;
  v179 = &unk_1F2CFA908;
  *&v177 = v180 + 4 * v26;
  *(&v177 + 1) = __PAIR64__(v36, v26);
  LODWORD(v178) = v37;
  DWORD1(v178) = v38 - v26;
  *(&v178 + 1) = v39;
  v176 = &unk_1F2CFA908;
  v40 = *(v22 + 20);
  v41 = *(v22 + 24);
  v42 = *(v22 + 28) - 2 * v26;
  v43 = *(v22 + 32);
  *&v174 = *(v22 + 8) + 8 * v26;
  *(&v174 + 1) = __PAIR64__(v40, v26);
  *&v175 = __PAIR64__(v42, v41);
  *(&v175 + 1) = v43;
  v173 = &unk_1F2CFA908;
  v44 = *(v22 + 28) - 3 * v26;
  *&v171 = *(v22 + 8) + 12 * v26;
  *(&v171 + 1) = __PAIR64__(v40, v26);
  *&v172 = __PAIR64__(v44, v41);
  *(&v172 + 1) = v43;
  v170 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v179, &v191, &v182);
  *&v169[0] = v177 + 4 * v178 * v10;
  DWORD2(v169[0]) = DWORD2(v177);
  HIDWORD(v169[0]) = v9 - v10;
  LODWORD(v169[1]) = v178;
  DWORD1(v169[1]) = DWORD1(v178) - v178 * v10;
  *(&v169[1] + 1) = *(&v178 + 1);
  v168 = &unk_1F2CFA908;
  *&v166 = v189 + 4 * v190 * v10;
  DWORD2(v166) = DWORD2(v189);
  HIDWORD(v166) = v9 - v10;
  LODWORD(v167) = v190;
  DWORD1(v167) = DWORD1(v190) - v190 * v10;
  *(&v167 + 1) = *(&v190 + 1);
  v165 = &unk_1F2CFA908;
  v45 = *(v24 + 272) + 48 * v140;
  v46 = *(v45 + 16);
  v47 = *(v45 + 32);
  *&v163 = *(v45 + 8);
  DWORD2(v163) = v46;
  HIDWORD(v163) = v9 - v10;
  *&v164 = *(v45 + 24);
  *(&v164 + 1) = v47;
  v162 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v168, &v165, &v162);
  v162 = &unk_1F2CFA908;
  v163 = 0u;
  v164 = 0u;
  quasar::Bitmap::~Bitmap(&v162);
  v165 = &unk_1F2CFA908;
  v166 = 0u;
  v167 = 0u;
  quasar::Bitmap::~Bitmap(&v165);
  v168 = &unk_1F2CFA908;
  memset(v169, 0, sizeof(v169));
  quasar::Bitmap::~Bitmap(&v168);
  *&v169[0] = v177;
  *(&v169[0] + 1) = __PAIR64__(v10, DWORD2(v177));
  v169[1] = v178;
  v168 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::SetZero(&v168);
  v168 = &unk_1F2CFA908;
  memset(v169, 0, sizeof(v169));
  quasar::Bitmap::~Bitmap(&v168);
  v48 = v140;
  v49 = a1;
  v136 = v22;
  if (v139)
  {
    v50 = *(a1 + 128) + 48 * v140;
    v51 = *(a1 + 176);
    v52 = *(v50 + 28);
    v53 = *(v50 + 32);
    *&v169[0] = *(v50 + 8);
    DWORD2(v169[0]) = v51;
    *(v169 + 12) = *(v50 + 20);
    DWORD1(v169[1]) = v52;
    *(&v169[1] + 1) = v53;
    v168 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::SetZero(&v168);
    v54 = v142 - 1;
    v55 = v10;
    v56 = 4 * v10;
    do
    {
      *(&v166 + 1) = __PAIR64__(v10, DWORD2(v177));
      LODWORD(v167) = v178;
      DWORD1(v167) = DWORD1(v178) - v178 * v55;
      *(&v167 + 1) = *(&v178 + 1);
      *&v166 = v177 + 4 * v178 * v55;
      v165 = &unk_1F2CFA908;
      v57 = *(a1 + 104) + 32 * v140;
      *(&v163 + 1) = 0;
      v162 = &unk_1F2CFCA48;
      *&v163 = *(v57 + 8) + v56;
      DWORD2(v163) = v10;
      *&v164 = *(v57 + 24);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v165, &v168, &v162, 0);
      v165 = &unk_1F2CFA908;
      v166 = 0u;
      v167 = 0u;
      quasar::Bitmap::~Bitmap(&v165);
      v56 += 4 * v10;
      v55 += v10;
      --v54;
    }

    while (v54);
    v168 = &unk_1F2CFA908;
    memset(v169, 0, sizeof(v169));
    quasar::Bitmap::~Bitmap(&v168);
    v48 = v140;
    v49 = a1;
  }

  kaldi::CuMatrixBase<float>::DiffSigmoid(&v173, &v185, *(v49 + 296) + 48 * v48);
  kaldi::CuMatrixBase<float>::DiffTanh(&v170, &v182, &v191);
  v58 = v144 + 16 * v20;
  kaldi::CuMatrixBase<float>::DiffTanh(v58, *(v49 + 296) + 48 * v48, &v185);
  v59 = 0;
  v138 = v10 * (v142 - 1);
  v143 = 0;
  v145 = (v142 - 1);
  v137 = 4 * (v10 + v10 * v145);
  v135 = v10 * v142;
  v60 = v134;
  do
  {
    v61 = v138 + v59;
    v62 = v60[6];
    v63 = *(v60 + 1) + 4 * v62 * (v138 + v59);
    v64 = v60[7] - v62 * (v138 + v59);
    v65 = *(v60 + 4);
    DWORD2(v169[0]) = v60[4];
    HIDWORD(v169[0]) = v10;
    *&v169[1] = __PAIR64__(v64, v62);
    *(&v169[1] + 1) = v65;
    *&v169[0] = v63;
    v168 = &unk_1F2CFA908;
    v66 = *(v49 + 392) + 48 * v48;
    LODWORD(v63) = *(v66 + 16);
    v67 = *(v66 + 24);
    v68 = v67 * (v138 + v59);
    v69 = *(v66 + 8) + 4 * v68;
    LODWORD(v65) = *(v66 + 28) - v68;
    v70 = *(v66 + 32);
    *(&v166 + 1) = __PAIR64__(v10, v63);
    *&v167 = __PAIR64__(v65, v67);
    *(&v167 + 1) = v70;
    *&v166 = v69;
    v165 = &unk_1F2CFA908;
    if (*(v49 + 224) == 1)
    {
      v71 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(v49);
      LODWORD(v72) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v165, &v168, 111, v71, 111, v72, 0.0);
    }

    else
    {
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v165, &v168, 111);
    }

    *&v163 = v174 + 4 * v175 * v61;
    *(&v163 + 1) = __PAIR64__(v10, DWORD2(v174));
    LODWORD(v164) = v175;
    DWORD1(v164) = DWORD1(v175) - v175 * v61;
    *(&v164 + 1) = *(&v175 + 1);
    v162 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::MulElements(&v162, &v165);
    v73 = *(v58 + 24);
    v74 = *(v58 + 8) + 4 * (v73 * v61);
    v75 = *(v58 + 28) - v73 * v61;
    v76 = *(v58 + 32);
    DWORD2(v160) = *(v58 + 16);
    HIDWORD(v160) = v10;
    *&v161 = __PAIR64__(v75, v73);
    *(&v161 + 1) = v76;
    v159 = &unk_1F2CFA908;
    *&v160 = v74;
    kaldi::CuMatrixBase<float>::MulElements(&v159, &v165);
    if (*(v49 + 208) == 1)
    {
      v77 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(v49);
      v78 = *(v77 + 16);
      v79 = *(v77 + 32);
      v158[0] = *(v77 + 8) + 8 * *(v77 + 24);
      v157 = &unk_1F2CFCA48;
      v158[1] = v78;
      v158[2] = v79;
      LODWORD(v80) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatDiagVec(&v159, &v162, 111, &v157, v80, 1.0);
    }

    if (v145 < v142 - 1)
    {
      v81 = v135 + v59;
      v82 = *(v58 + 24);
      v83 = *(v58 + 8) + 4 * (v82 * (v135 + v59));
      v84 = *(v58 + 28) - v82 * (v135 + v59);
      v85 = *(v58 + 32);
      LODWORD(v158[1]) = *(v58 + 16);
      HIDWORD(v158[1]) = v10;
      v158[2] = __PAIR64__(v84, v82);
      v158[3] = v85;
      v157 = &unk_1F2CFA908;
      v158[0] = v83;
      v156[0] = v189 + 4 * v190 * (v135 + v59);
      v156[1] = __PAIR64__(v10, DWORD2(v189));
      LODWORD(v156[2]) = v190;
      HIDWORD(v156[2]) = DWORD1(v190) - v190 * (v135 + v59);
      v156[3] = *(&v190 + 1);
      v155 = &unk_1F2CFA908;
      if (v139)
      {
        v86 = *(v49 + 128) + 48 * v140;
        v87 = *(v49 + 176);
        v88 = *(v86 + 28);
        v89 = *(v86 + 32);
        v154[0] = *(v86 + 8);
        LODWORD(v154[1]) = v87;
        *(&v154[1] + 4) = *(v86 + 20);
        HIDWORD(v154[2]) = v88;
        v154[3] = v89;
        v153 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v153);
        v90 = *(v49 + 104) + 32 * v140;
        v152[1] = 0;
        v151 = &unk_1F2CFCA48;
        v152[0] = *(v90 + 8) + v137 + v143;
        LODWORD(v152[1]) = v10;
        v152[2] = *(v90 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v153, &v157, &v151, 1);
        *&v158[1] = *&v154[1];
        v158[0] = v154[0];
        v158[3] = v154[3];
        v91 = *(v49 + 128) + 48 * v140;
        v92 = *(v49 + 176);
        v93 = *(v91 + 28) - v92;
        v94 = *(v91 + 32);
        v152[0] = *(v91 + 8) + 4 * v92;
        LODWORD(v152[1]) = v92;
        *(&v152[1] + 4) = *(v91 + 20);
        HIDWORD(v152[2]) = v93;
        v152[3] = v94;
        v151 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v151);
        v95 = *(v49 + 104) + 32 * v140;
        v150[2] = 0;
        v150[0] = &unk_1F2CFCA48;
        v150[1] = *(v95 + 8) + v137 + v143;
        LODWORD(v150[2]) = v10;
        v150[3] = *(v95 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v151, &v155, v150, 1);
        v156[0] = v152[0];
        *&v156[1] = *&v152[1];
        v156[3] = v152[3];
        v151 = &unk_1F2CFA908;
        memset(v152, 0, sizeof(v152));
        quasar::Bitmap::~Bitmap(&v151);
        v153 = &unk_1F2CFA908;
        memset(v154, 0, sizeof(v154));
        quasar::Bitmap::~Bitmap(&v153);
        v49 = a1;
        v60 = v134;
      }

      if (*(v49 + 208) == 1)
      {
        v154[0] = v177 + 4 * v178 * v81;
        v154[1] = __PAIR64__(v10, DWORD2(v177));
        LODWORD(v154[2]) = v178;
        HIDWORD(v154[2]) = DWORD1(v178) - v178 * v81;
        v154[3] = *(&v178 + 1);
        v152[1] = __PAIR64__(v10, DWORD2(v180));
        LODWORD(v152[2]) = v181;
        HIDWORD(v152[2]) = DWORD1(v181) - v181 * v81;
        v152[3] = *(&v181 + 1);
        v153 = &unk_1F2CFA908;
        v151 = &unk_1F2CFA908;
        v152[0] = v180 + 4 * v181 * v81;
        if (v139)
        {
          v96 = *(a1 + 128) + 48 * v140;
          v97 = *(a1 + 176);
          v98 = *(v96 + 28) - 2 * v97;
          v99 = *(v96 + 32);
          v150[1] = *(v96 + 8) + 8 * v97;
          LODWORD(v150[2]) = v97;
          *(&v150[2] + 4) = *(v96 + 20);
          HIDWORD(v150[3]) = v98;
          v150[4] = v99;
          v150[0] = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::SetZero(v150);
          v100 = *(a1 + 104) + 32 * v140;
          v149[2] = 0;
          v149[0] = &unk_1F2CFCA48;
          v149[1] = *(v100 + 8) + v137 + v143;
          LODWORD(v149[2]) = v10;
          v149[3] = *(v100 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v150, &v153, v149, 1);
          *&v154[1] = *&v150[2];
          v154[0] = v150[1];
          v154[3] = v150[4];
          v101 = *(a1 + 128) + 48 * v140;
          v102 = *(a1 + 176);
          v103 = *(v101 + 28) - 3 * v102;
          v104 = *(v101 + 32);
          v149[1] = *(v101 + 8) + 12 * v102;
          LODWORD(v149[2]) = v102;
          *(&v149[2] + 4) = *(v101 + 20);
          HIDWORD(v149[3]) = v103;
          v149[4] = v104;
          v149[0] = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::SetZero(v149);
          v105 = *(a1 + 104) + 32 * v140;
          v147 = 0;
          v146[0] = &unk_1F2CFCA48;
          v146[1] = *(v105 + 8) + v137 + v143;
          LODWORD(v147) = v10;
          v148 = *(v105 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v149, &v151, v146, 1);
          v152[0] = v149[1];
          *&v152[1] = *&v149[2];
          v152[3] = v149[4];
          v149[0] = &unk_1F2CFA908;
          memset(&v149[1], 0, 32);
          quasar::Bitmap::~Bitmap(v149);
          v150[0] = &unk_1F2CFA908;
          memset(&v150[1], 0, 32);
          quasar::Bitmap::~Bitmap(v150);
          v60 = v134;
        }

        v106 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
        v107 = *(v106 + 16);
        v108 = *(v106 + 32);
        v150[1] = *(v106 + 8) + 4 * *(v106 + 24);
        v150[0] = &unk_1F2CFCA48;
        v150[2] = v107;
        v150[3] = v108;
        LODWORD(v109) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v159, &v153, 111, v150, v109, 1.0);
        v110 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
        v111 = *(v110 + 16);
        v112 = *(v110 + 32);
        v150[1] = *(v110 + 8);
        v150[0] = &unk_1F2CFCA48;
        v150[2] = v111;
        v150[3] = v112;
        LODWORD(v113) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v159, &v151, 111, v150, v113, 1.0);
        v151 = &unk_1F2CFA908;
        memset(v152, 0, sizeof(v152));
        quasar::Bitmap::~Bitmap(&v151);
        v153 = &unk_1F2CFA908;
        memset(v154, 0, sizeof(v154));
        quasar::Bitmap::~Bitmap(&v153);
        v49 = a1;
      }

      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v159, &v157, 111, &v155, 111, 1.0, 1.0);
      v155 = &unk_1F2CFA908;
      memset(v156, 0, sizeof(v156));
      quasar::Bitmap::~Bitmap(&v155);
      v157 = &unk_1F2CFA908;
      memset(v158, 0, sizeof(v158));
      quasar::Bitmap::~Bitmap(&v157);
      v48 = v140;
    }

    v158[1] = __PAIR64__(v10, DWORD2(v180));
    LODWORD(v158[2]) = v181;
    HIDWORD(v158[2]) = DWORD1(v181) - v181 * v61;
    v158[3] = *(&v181 + 1);
    v157 = &unk_1F2CFA908;
    v158[0] = v180 + 4 * v181 * v61;
    kaldi::CuMatrixBase<float>::MulElements(&v157, &v159);
    v157 = &unk_1F2CFA908;
    memset(v158, 0, sizeof(v158));
    quasar::Bitmap::~Bitmap(&v157);
    v158[1] = __PAIR64__(v10, DWORD2(v171));
    LODWORD(v158[2]) = v172;
    HIDWORD(v158[2]) = DWORD1(v172) - v172 * v61;
    v158[3] = *(&v172 + 1);
    v157 = &unk_1F2CFA908;
    v158[0] = v171 + 4 * v172 * v61;
    kaldi::CuMatrixBase<float>::MulElements(&v157, &v159);
    v157 = &unk_1F2CFA908;
    memset(v158, 0, sizeof(v158));
    quasar::Bitmap::~Bitmap(&v157);
    if (v145)
    {
      v158[1] = __PAIR64__(v10, DWORD2(v177));
      LODWORD(v158[2]) = v178;
      HIDWORD(v158[2]) = DWORD1(v178) - v178 * v61;
      v158[3] = *(&v178 + 1);
      v157 = &unk_1F2CFA908;
      v158[0] = v177 + 4 * v178 * v61;
      kaldi::CuMatrixBase<float>::MulElements(&v157, &v159);
      v157 = &unk_1F2CFA908;
      memset(v158, 0, sizeof(v158));
      quasar::Bitmap::~Bitmap(&v157);
      v114 = *(v136 + 16);
      v115 = *(v136 + 24);
      v116 = *(v136 + 8) + 4 * (v115 * v61);
      v117 = *(v136 + 28) - v115 * v61;
      v118 = *(v136 + 32);
      v158[1] = __PAIR64__(v10, v114);
      v158[2] = __PAIR64__(v117, v115);
      v158[3] = v118;
      v157 = &unk_1F2CFA908;
      v158[0] = v116;
      if (v139)
      {
        v119 = *(v49 + 128) + 48 * v48;
        v120 = *(v119 + 28);
        v121 = *(v119 + 32);
        v156[0] = *(v119 + 8);
        LODWORD(v156[1]) = v114;
        *(&v156[1] + 4) = *(v119 + 20);
        HIDWORD(v156[2]) = v120;
        v156[3] = v121;
        v155 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v155);
        v122 = *(v49 + 104) + 32 * v48;
        v154[1] = 0;
        v153 = &unk_1F2CFCA48;
        v154[0] = *(v122 + 8) + 4 * v10 * (v142 - 1) + v143;
        LODWORD(v154[1]) = v10;
        v154[2] = *(v122 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v155, &v157, &v153, 1);
        *&v158[1] = *&v156[1];
        v158[0] = v156[0];
        v158[3] = v156[3];
        v155 = &unk_1F2CFA908;
        memset(v156, 0, sizeof(v156));
        quasar::Bitmap::~Bitmap(&v155);
      }

      v123 = v60[6];
      v124 = v123 * (v10 * (v142 - 2) + v59);
      v125 = *(v60 + 1) + 4 * v124;
      v126 = v60[7] - v124;
      v127 = *(v60 + 4);
      LODWORD(v156[1]) = v60[4];
      HIDWORD(v156[1]) = v10;
      v156[2] = __PAIR64__(v126, v123);
      v156[3] = v127;
      v155 = &unk_1F2CFA908;
      v156[0] = v125;
      v128 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v49);
      LODWORD(v129) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v155, &v157, 111, v128, 111, v129, 1.0);
      v155 = &unk_1F2CFA908;
      memset(v156, 0, sizeof(v156));
      quasar::Bitmap::~Bitmap(&v155);
      v157 = &unk_1F2CFA908;
      memset(v158, 0, sizeof(v158));
      quasar::Bitmap::~Bitmap(&v157);
    }

    v159 = &unk_1F2CFA908;
    v160 = 0u;
    v161 = 0u;
    quasar::Bitmap::~Bitmap(&v159);
    v162 = &unk_1F2CFA908;
    v163 = 0u;
    v164 = 0u;
    quasar::Bitmap::~Bitmap(&v162);
    v165 = &unk_1F2CFA908;
    v166 = 0u;
    v167 = 0u;
    quasar::Bitmap::~Bitmap(&v165);
    v168 = &unk_1F2CFA908;
    memset(v169, 0, sizeof(v169));
    quasar::Bitmap::~Bitmap(&v168);
    v130 = v145;
    v143 -= 4 * v10;
    --v145;
    v59 -= v10;
  }

  while (v130 > 0);
  if (v133)
  {
    v131 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(v49);
    LODWORD(v132) = 1.0;
    kaldi::CuMatrixBase<float>::AddMatMat<signed char>(v133, v136, 111, v131, 111, v132, 0.0);
  }

  v170 = &unk_1F2CFA908;
  v171 = 0u;
  v172 = 0u;
  quasar::Bitmap::~Bitmap(&v170);
  v173 = &unk_1F2CFA908;
  v174 = 0u;
  v175 = 0u;
  quasar::Bitmap::~Bitmap(&v173);
  v176 = &unk_1F2CFA908;
  v177 = 0u;
  v178 = 0u;
  quasar::Bitmap::~Bitmap(&v176);
  v179 = &unk_1F2CFA908;
  v180 = 0u;
  v181 = 0u;
  quasar::Bitmap::~Bitmap(&v179);
  v182 = &unk_1F2CFA908;
  v183 = 0u;
  v184 = 0u;
  quasar::Bitmap::~Bitmap(&v182);
  v185 = &unk_1F2CFA908;
  v186 = 0u;
  v187 = 0u;
  quasar::Bitmap::~Bitmap(&v185);
  v188 = &unk_1F2CFA908;
  v189 = 0u;
  v190 = 0u;
  quasar::Bitmap::~Bitmap(&v188);
  v191.__locale_ = &unk_1F2CFA908;
  v192 = 0u;
  v193 = 0u;
  quasar::Bitmap::~Bitmap(&v191);
}

void sub_1B53D2450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17)
{
  STACK[0x270] = v17;
  *&STACK[0x278] = 0u;
  *&STACK[0x288] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x270]);
  STACK[0x298] = a10;
  *&STACK[0x2A0] = 0u;
  *&STACK[0x2B0] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x298]);
  STACK[0x2C0] = a11;
  *&STACK[0x2C8] = 0u;
  *&STACK[0x2D8] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x2C0]);
  STACK[0x2E8] = a12;
  *&STACK[0x2F0] = 0u;
  *&STACK[0x300] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x2E8]);
  STACK[0x310] = a13;
  *&STACK[0x318] = 0u;
  *&STACK[0x328] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x310]);
  STACK[0x338] = a14;
  *&STACK[0x340] = 0u;
  *&STACK[0x350] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x338]);
  STACK[0x360] = a15;
  *&STACK[0x368] = 0u;
  *&STACK[0x378] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x360]);
  STACK[0x388] = a16;
  *&STACK[0x390] = 0u;
  *&STACK[0x3A0] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x388]);
  STACK[0x3B0] = a17;
  *&STACK[0x3B8] = 0u;
  *&STACK[0x3C8] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateBackwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating backward buffers for batch ", 38);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1B8C84C00](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 368) + 48 * a2), a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 392) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 416) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 440) + 48 * a2), a3, (4 * *(a1 + 176)), 0, 0);
  *(*(a1 + 368) + 48 * a2 + 32) = a4;
  *(*(a1 + 392) + 48 * a2 + 32) = a4;
  *(*(a1 + 416) + 48 * a2 + 32) = a4;
  *(*(a1 + 440) + 48 * a2 + 32) = a4;
}

void sub_1B53D29D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 96);
  v10 = *(a2 + 20);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v65, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Accumulating gradients for batch id = ", 38);
    v12 = MEMORY[0x1B8C84C00](v11, a5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1B8C84C00](v13, (v10 / v9));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1B8C84C00](v15, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v65);
  }

  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(a1);
  v50 = *(a1 + 272);
  v17 = *(a1 + 440) + 48 * a5;
  v18 = *(a1 + 60);
  *(*(a1 + 480) + 4 * a5) = v10;
  v19 = *(v17 + 8);
  v20 = *(v17 + 20);
  v21 = *(v17 + 24);
  v22 = *(v17 + 28);
  v23 = *(v17 + 32);
  DWORD2(v66) = *(a1 + 176);
  HIDWORD(v66) = v20;
  *&v67 = __PAIR64__(v22, v21);
  *(&v67 + 1) = v23;
  v65.__locale_ = &unk_1F2CFA908;
  *&v66 = v19;
  *(&v63 + 1) = __PAIR64__(v20, DWORD2(v66));
  LODWORD(v64) = v21;
  DWORD1(v64) = v22 - DWORD2(v66);
  *(&v64 + 1) = v23;
  v62 = &unk_1F2CFA908;
  *&v63 = v19 + 4 * SDWORD2(v66);
  v24 = *(v17 + 28) - 2 * DWORD2(v66);
  v25 = *(v17 + 32);
  v61[1] = *(v17 + 8) + 8 * DWORD2(v66);
  LODWORD(v61[2]) = DWORD2(v66);
  *(&v61[2] + 4) = *(v17 + 20);
  HIDWORD(v61[3]) = v24;
  v61[4] = v25;
  v61[0] = &unk_1F2CFA908;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, a5) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, a5) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, a5) + 24) = a4;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a5) + 32) = a4;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, a5) + 32) = a4;
  }

  v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, a5);
  kaldi::CuMatrixBase<float>::AddMatMat(v26, v17, 112, a2, 111);
  v27 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, a5);
  v28 = *(v17 + 24);
  v29 = *(v17 + 8) + 4 * (v28 * v9);
  v30 = *(v17 + 28) - v28 * v9;
  v31 = *(v17 + 32);
  DWORD2(v59) = *(v17 + 16);
  HIDWORD(v59) = v10 - v9;
  *&v60 = __PAIR64__(v30, v28);
  *(&v60 + 1) = v31;
  v58 = &unk_1F2CFA908;
  *&v59 = v29;
  v32 = *(a1 + 344) + 48 * a5;
  LODWORD(v29) = *(v32 + 16);
  v33 = *(v32 + 32);
  *&v56 = *(v32 + 8);
  DWORD2(v56) = v29;
  HIDWORD(v56) = v10 - v9;
  *&v57 = *(v32 + 24);
  *(&v57 + 1) = v33;
  v55 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::AddMatMat(v27, &v58, 112, &v55, 111);
  v55 = &unk_1F2CFA908;
  v56 = 0u;
  v57 = 0u;
  quasar::Bitmap::~Bitmap(&v55);
  v58 = &unk_1F2CFA908;
  v59 = 0u;
  v60 = 0u;
  quasar::Bitmap::~Bitmap(&v58);
  v34 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, a5);
  kaldi::CuVectorBase<float>::AddRowSumMat(v34, v17);
  if (*(a1 + 208) == 1)
  {
    v35 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a5);
    v36 = v50 + 48 * a5;
    v37 = *(v35 + 16);
    v38 = *(v35 + 32);
    v52 = *(v35 + 8);
    v51 = &unk_1F2CFCA48;
    v53 = v37;
    v54 = v38;
    DWORD2(v59) = DWORD2(v66);
    HIDWORD(v59) = v10 - v9;
    LODWORD(v60) = v67;
    DWORD1(v60) = DWORD1(v67) - v67 * v9;
    *(&v60 + 1) = *(&v67 + 1);
    v58 = &unk_1F2CFA908;
    *&v59 = v66 + 4 * v67 * v9;
    v39 = *(v36 + 16);
    v40 = *(v36 + 32);
    *&v56 = *(v36 + 8);
    DWORD2(v56) = v39;
    HIDWORD(v56) = v10 - v9;
    *&v57 = *(v36 + 24);
    *(&v57 + 1) = v40;
    v55 = &unk_1F2CFA908;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v51, &v58, 112, &v55, 111, 1.0, v18);
    v55 = &unk_1F2CFA908;
    v56 = 0u;
    v57 = 0u;
    quasar::Bitmap::~Bitmap(&v55);
    v58 = &unk_1F2CFA908;
    v59 = 0u;
    v60 = 0u;
    quasar::Bitmap::~Bitmap(&v58);
    v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a5);
    v42 = *(v41 + 16);
    v43 = *(v41 + 32);
    v52 = *(v41 + 8) + 4 * *(v41 + 24);
    v51 = &unk_1F2CFCA48;
    v53 = v42;
    v54 = v43;
    DWORD2(v59) = DWORD2(v63);
    HIDWORD(v59) = v10 - v9;
    LODWORD(v60) = v64;
    DWORD1(v60) = DWORD1(v64) - v64 * v9;
    *(&v60 + 1) = *(&v64 + 1);
    v58 = &unk_1F2CFA908;
    *&v59 = v63 + 4 * v64 * v9;
    v44 = *(v36 + 16);
    v45 = *(v36 + 32);
    *&v56 = *(v36 + 8);
    DWORD2(v56) = v44;
    HIDWORD(v56) = v10 - v9;
    *&v57 = *(v36 + 24);
    *(&v57 + 1) = v45;
    v55 = &unk_1F2CFA908;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v51, &v58, 112, &v55, 111, 1.0, v18);
    v55 = &unk_1F2CFA908;
    v56 = 0u;
    v57 = 0u;
    quasar::Bitmap::~Bitmap(&v55);
    v58 = &unk_1F2CFA908;
    v59 = 0u;
    v60 = 0u;
    quasar::Bitmap::~Bitmap(&v58);
    v46 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a5);
    v47 = *(v46 + 16);
    v48 = *(v46 + 32);
    *&v59 = *(v46 + 8) + 8 * *(v46 + 24);
    v58 = &unk_1F2CFCA48;
    *(&v59 + 1) = v47;
    *&v60 = v48;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v58, v61, 112, v36, 111, 1.0, v18);
  }

  if (*(a1 + 224) == 1)
  {
    v49 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMat(v49, *(a1 + 368) + 48 * a5, 112, *(a1 + 320) + 48 * a5, 111);
  }

  v61[0] = &unk_1F2CFA908;
  memset(&v61[1], 0, 32);
  quasar::Bitmap::~Bitmap(v61);
  v62 = &unk_1F2CFA908;
  v63 = 0u;
  v64 = 0u;
  quasar::Bitmap::~Bitmap(&v62);
  v65.__locale_ = &unk_1F2CFA908;
  v66 = 0u;
  v67 = 0u;
  quasar::Bitmap::~Bitmap(&v65);
}

void sub_1B53D3120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, __int128 a31, uint64_t a32, __int128 a33, __int128 a34, uint64_t a35, __int128 a36, __int128 a37)
{
  a29 = a12;
  a30 = 0u;
  a31 = 0u;
  quasar::Bitmap::~Bitmap(&a29);
  a32 = a13;
  a33 = 0u;
  a34 = 0u;
  quasar::Bitmap::~Bitmap(&a32);
  a35 = a14;
  a36 = 0u;
  a37 = 0u;
  quasar::Bitmap::~Bitmap(&a35);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(uint64_t a1)
{
  if (*(a1 + 528))
  {
    return;
  }

  v2 = *(a1 + 80);
  if (v2 > 1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "input_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 568) != *(a1 + 560))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "recurrent_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 616) != *(a1 + 608))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "bias_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 208) == 1 && *(a1 + 592) != *(a1 + 584))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "peephole_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 224) == 1 && *(a1 + 640) != *(a1 + 632))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "projection_weights_gradient_.size() == 0");
LABEL_34:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 536), v3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 560), v3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 608), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 656), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 680), v3);
  std::vector<kaldi::CuVector<float>>::resize((a1 + 728), v3);
  if (v3 >= 1)
  {
    operator new();
  }

  if (*(a1 + 208))
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 584), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 704), v3);
  }

  if (*(a1 + 224) == 1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 632), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 752), v3);
  }

  *(a1 + 528) = 1;
  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, 2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocated memory for the gradients: ", 36);
    (*(*a1 + 272))(__p, a1);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::UpdateWeights()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetInternalBoundary(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 104);
  v6 = (a1 + 104);
  if (v5 == *(a1 + 112))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 104), *(a1 + 80));
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 128), *(a1 + 80));
    v5 = *(a1 + 104);
  }

  kaldi::CuVector<float>::Resize(v5 + 32 * a3, *(a2 + 16), 1);
  v8 = (*v6 + 32 * a3);

  return kaldi::CuVectorBase<float>::CopyFromVec(v8, a2);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetTrainOptions(void *a1, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = (a1 + *(*a1 - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 120) = 0;
}

int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetHistoryState(uint64_t a1, int32x2_t *a2, unsigned int a3)
{
  v6 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v6 + 20), *(v6 + 16), 1, 0);
  v7 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v7, 111);
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetHistoryState(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  kaldi::CuVector<float>::Resize(a2, *(*(a1 + 8) + 48 * a4 + 16), 1);
  v8 = *(a1 + 8) + 48 * a4;
  v9 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
  v10 = *(v8 + 16);
  v11 = *(v8 + 32);
  v13[1] = v9;
  v13[0] = &unk_1F2CFCA48;
  v13[2] = v10;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec(a2, v13);
}

int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetHistoryState(void *a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 88))(a1);
  v6 = (a1[1] + 48 * a3);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v6, a2, 111);
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetHistoryState(void *a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  v8 = a1[1] + 48 * a4;
  v9 = *(a2 + 16);
  v10 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
  v11 = *(v8 + 32);
  v13[1] = v10;
  v13[0] = &unk_1F2CFCA48;
  v13[2] = v9;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec(v13, a2);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ResetHistoryState(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  *(a1[1] + 48 * a4 + 32) = a3;
  if (a2[1])
  {
    v8 = 0;
    do
    {
      if ((*(*a2 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
      {
        v9 = a1[1] + 48 * a4;
        v10 = (*(v9 + 8) + 4 * *(v9 + 24) * v8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 32);
        v20[1].__locale_ = v10;
        v20[0].__locale_ = &unk_1F2CFCA48;
        v20[2].__locale_ = v11;
        v20[3].__locale_ = v12;
        kaldi::CuVectorBase<float>::SetZero(v20);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          v13 = MEMORY[0x1B8C84C00](&v21, v8);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
        }
      }

      ++v8;
    }

    while (a2[1] > v8);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Reset previous states for utts ", 31);
    std::stringbuf::str();
    if ((v19 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
  }

  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v25);
}

void sub_1B53D40B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  std::ostringstream::~ostringstream(&a51);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ResetHistoryState(void *a1)
{
  (*(*a1 + 88))(a1);
  for (i = a1[1]; i != a1[2]; i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 528) = 0;
  return result;
}

void *virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 528) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::NormalizeGradients(uint64_t a1, unsigned int a2, float a3)
{
  v4 = a3;
  v6 = *(a1 + 156);
  if (v6 == 1)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84) == 1)
      {
        v4 = *(*(a1 + 480) + 4 * a2) * a3;
      }

      v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v14, v4);
      v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v15, v4);
      v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v16, v4);
      if (*(a1 + 208) == 1)
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::ClipGradient(v17, v4);
      }

      if (*(a1 + 224) == 1)
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, a2);

        kaldi::nnet1::UpdatableComponent::ClipGradient(v18, v4);
      }
    }
  }

  else if (v6 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v8, *(a1 + 656) + 48 * a2, v4);
      v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v9, *(a1 + 680) + 48 * a2, v4);
      v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, *(a1 + 728) + 32 * a2, v4);
      if (*(a1 + 208) == 1)
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(a1 + 704) + 48 * a2, v4);
      }

      if (*(a1 + 224) == 1)
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, a2);
        v13 = *(a1 + 752) + 48 * a2;

        kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, v13, v4);
      }
    }
  }

  else if (a3 > 0.0 && v6 == 2)
  {
    v20 = a2;
    if (*(a1 + 84))
    {
      v4 = *(*(a1 + 480) + 4 * a2) * a3;
    }

    v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, (*(a1 + 656) + 48 * v20), v4);
    v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v22, (*(a1 + 680) + 48 * v20), v4);
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v23, (*(a1 + 728) + 32 * v20), v4);
    if (*(a1 + 208) == 1)
    {
      v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v24, (*(a1 + 704) + 48 * v20), v4);
    }

    if (*(a1 + 224) == 1)
    {
      v25 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, a2);
      v26 = (*(a1 + 752) + 48 * v20);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v25, v26, v4);
    }
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(a1);
  result = (*(*a1 + 208))(a1);
  *a3 = result;
  if (*(a1 + 544) == *(a1 + 536) || *(a1 + 568) == *(a1 + 560))
  {
    v15 = 0;
    goto LABEL_11;
  }

  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + *(*a1 - 24) + 80);
  }

  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v7);
  v9 = kaldi::CuMatrixBase<float>::CountZeros(v8);
  v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v7);
  v11 = kaldi::CuMatrixBase<float>::CountZeros(v10) + v9;
  v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v7);
  result = kaldi::CuVectorBase<float>::CountZeros(v12);
  *a2 = v11 + result;
  if (*(a1 + 208) == 1)
  {
    v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v13);
    *a2 += result;
  }

  if (*(a1 + 224) == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v14);
    v15 = *a2 + result;
LABEL_11:
    *a2 = v15;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::EnsureBuffers(uint64_t a1)
{
  if ((*(a1 + 240) & 1) == 0)
  {
    v2 = *(a1 + 80);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 8), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 248), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 272), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 296), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 320), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 344), v2);
    if (v2 >= 1)
    {
      v3 = 0;
      do
      {
        kaldi::CuMatrix<float>::Resize((*(a1 + 8) + v3), *(a1 + 96), (*(a1 + 12 + *(*a1 - 24)) + *(a1 + 176)), 0, 0);
        v3 += 48;
      }

      while (48 * v2 != v3);
    }

    std::vector<int>::resize((a1 + 480), v2);
    *(a1 + 240) = 1;
  }
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Check(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  if (kaldi::quasar::Vocab::VocabSize(v2) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Input weights #rows = ", 22);
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
    v11 = kaldi::quasar::Vocab::VocabSize(v10);
    v12 = MEMORY[0x1B8C84C00](v9, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "; expecting ", 12);
    v14 = MEMORY[0x1B8C84C00](v13, (4 * *(a1 + 176)));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v15, *(a1 + 176));
    goto LABEL_28;
  }

  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v3) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Input weights #columns = ", 25);
    v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
    v18 = kaldi::QuantizedMatrixBase<short>::NumCols(v17);
    v19 = MEMORY[0x1B8C84C00](v16, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "; expecting ", 12);
    v21 = MEMORY[0x1B8C84C00](v20, *(a1 + *(*a1 - 24) + 8));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, " (same as input dim)");
    goto LABEL_28;
  }

  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  if (kaldi::quasar::Vocab::VocabSize(v4) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Recurrent weights #rows = ", 26);
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
    v24 = kaldi::quasar::Vocab::VocabSize(v23);
    v25 = MEMORY[0x1B8C84C00](v22, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "; expecting ", 12);
    v27 = MEMORY[0x1B8C84C00](v26, (4 * *(a1 + 176)));
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v28, *(a1 + 176));
    goto LABEL_28;
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v5) != *(a1 + *(*a1 - 24) + 12))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Recurrent weights #columns = ", 29);
    v30 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
    v31 = kaldi::QuantizedMatrixBase<short>::NumCols(v30);
    v32 = MEMORY[0x1B8C84C00](v29, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "; expecting ", 12);
    v34 = MEMORY[0x1B8C84C00](v33, *(a1 + *(*a1 - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v34, " (same as output dim)");
    goto LABEL_28;
  }

  if (*(a1 + 208) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20) != 3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Peephole weights #rows = ", 25);
      v42 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
      v43 = MEMORY[0x1B8C84C00](v41, *(v42 + 20));
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "; expecting ", 12);
      MEMORY[0x1B8C84C00](v44, 3);
      goto LABEL_28;
    }

    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) != *(a1 + 176))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Peephole weights #columns = ", 28);
      v46 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
      v47 = MEMORY[0x1B8C84C00](v45, *(v46 + 16));
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "; expecting ", 12);
      v49 = MEMORY[0x1B8C84C00](v48, *(a1 + 176));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v49, " (same as #cells)");
      goto LABEL_28;
    }
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Bias dim = ", 11);
    v36 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
    v37 = MEMORY[0x1B8C84C00](v35, *(v36 + 16));
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "; expecting ", 12);
    v39 = MEMORY[0x1B8C84C00](v38, (4 * *(a1 + 176)));
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v40, *(a1 + 176));
    goto LABEL_28;
  }

  if (*(a1 + 224) == 1)
  {
    v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    if (kaldi::quasar::Vocab::VocabSize(v6) == *(a1 + *(*a1 - 24) + 12))
    {
      v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
      if (kaldi::QuantizedMatrixBase<short>::NumCols(v7) == *(a1 + 176))
      {
        goto LABEL_12;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Projection weights #columns = ", 30);
      v57 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
      v58 = kaldi::QuantizedMatrixBase<short>::NumCols(v57);
      v59 = MEMORY[0x1B8C84C00](v56, v58);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "; expecting ", 12);
      v61 = MEMORY[0x1B8C84C00](v60, *(a1 + 176));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v61, " (same as #cells)");
    }

    else
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Projection weights #rows = ", 27);
      v51 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
      v52 = kaldi::quasar::Vocab::VocabSize(v51);
      v53 = MEMORY[0x1B8C84C00](v50, v52);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "; expecting ", 12);
      v55 = MEMORY[0x1B8C84C00](v54, *(a1 + *(*a1 - 24) + 12));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v55, " (same as output dim)");
    }

LABEL_28:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v62);
  }

LABEL_12:
  if (*(a1 + 464) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "learn_rate_coeff_ must not be negative; found: ", 47);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 468) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "projection_learn_rate_coeff_ must not be negative; found: ", 58);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 472) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "max_norm_ must not be negative; found: ", 39);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 152) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "max_grad_ must not be negative; found: ", 39);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  result = *(a1 + 476);
  if (result < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "max_cell_values_ must not be negative; found: ", 46);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  return result;
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 856) = a2;
  *(a1 + 860) = a3;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  *(a1 + 904) = xmmword_1B5AE0070;
  *(a1 + 920) = 0x3BF800000;
  *(a1 + 928) = 1;
  *(a1 + 932) = 0;
  *(a1 + 934) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FB68);
  *v4 = &unk_1F2D0F758;
  *(v4 + 848) = &unk_1F2D0FA48;
  *(v4 + 160) = &unk_1F2D0F8E8;
  *(v4 + 168) = &unk_1F2D0F910;
  *(v4 + 176) = a3;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 184) = 0;
  *(v4 + 208) = 1;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 456) = 0;
  result = 0.0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 464) = 0x3DCCCCCD3F800000;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 504) = 0u;
  *(v4 + 513) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0;
  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FB68, a2);
  *a1 = &unk_1F2D0F758;
  *(a1 + 848) = &unk_1F2D0FA48;
  *(a1 + 160) = &unk_1F2D0F8E8;
  *(a1 + 168) = &unk_1F2D0F910;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 184))
  {
    kaldi::NewCuSubOrMat<short>();
  }

  if (*(a2 + 192))
  {
    kaldi::NewCuSubOrMat<short>();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a2 + 216);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  if (*(a2 + 232))
  {
    kaldi::NewCuSubOrMat<short>();
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v10))
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, 0);
      }

      if (*(*(a2 + 560) + 8 * v10))
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v12, 0);
      }

      if (*(*(a2 + 608) + 8 * v10))
      {
        kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a2, v10);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v10))
      {
        v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v13, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v10))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      ++v10;
    }

    while (v10 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53D5DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, quasar::Bitmap *a22, quasar::Bitmap *a23, kaldi::nnet1::UpdatableComponent *a24, uint64_t *a25, uint64_t *a26, uint64_t *a27, uint64_t a28)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v28);
  a28 = a9;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a11;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  v31 = *(v29 + 63);
  if (v31)
  {
    *(v29 + 64) = v31;
    operator delete(v31);
  }

  v32 = *(v29 + 60);
  if (v32)
  {
    *(v29 + 61) = v32;
    operator delete(v32);
  }

  a28 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a25, 0);
  v33 = *(v29 + 27);
  *(v29 + 27) = 0;
  if (v33)
  {
    (*(*v33 + 24))(v33);
  }

  v34 = *(v29 + 25);
  *(v29 + 25) = 0;
  if (v34)
  {
    (*(*v34 + 16))(v34);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a26, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a27, 0);
  quasar::Bitmap::~Bitmap(a22);
  quasar::Bitmap::~Bitmap(a23);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v29, off_1F2D0FB68);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  *(a1 + 160) = &unk_1F2D0F8E8;
  *(a1 + 168) = &unk_1F2D0F910;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 776));
  v9 = (a1 + 752);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 728);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 704);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 680);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 656);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 632);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 608);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 584);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 560);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 536);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(a1 + 504);
  if (v5)
  {
    *(a1 + 512) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 480);
  if (v6)
  {
    *(a1 + 488) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 440);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 416);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 392);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 368);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 344);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 320);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 296);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 272);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 248);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 232), 0);
  v7 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 192), 0);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 184), 0);
  quasar::Bitmap::~Bitmap((a1 + 168));
  quasar::Bitmap::~Bitmap((a1 + 160));
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(a1, a2 + 1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v2 + 848));
  return a1;
}

void non-virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(uint64_t a1)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 688));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 680));
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(a1 - 160);
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(a1 - 168);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(void *a1)
{
  v2 = (v1 + 848);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(a1 + *(*a1 - 24));
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 848));

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0F728, a2);
  *a1 = &unk_1F2D0F318;
  *(a1 + 848) = &unk_1F2D0F608;
  *(a1 + 160) = &unk_1F2D0F4A8;
  *(a1 + 168) = &unk_1F2D0F4D0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a2 + 216);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  if (*(a2 + 232))
  {
    operator new();
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v10))
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, 0);
      }

      if (*(*(a2 + 560) + 8 * v10))
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v12, 0);
      }

      if (*(*(a2 + 608) + 8 * v10))
      {
        kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a2, v10);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v10))
      {
        v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v13, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v10))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      ++v10;
    }

    while (v10 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53D70A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, quasar::Bitmap *a24, quasar::Bitmap *a25, kaldi::nnet1::UpdatableComponent *a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t a30)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v30);
  a30 = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  v33 = *(v31 + 63);
  if (v33)
  {
    *(v31 + 64) = v33;
    operator delete(v33);
  }

  v34 = *(v31 + 60);
  if (v34)
  {
    *(v31 + 61) = v34;
    operator delete(v34);
  }

  a30 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a23;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a27, 0);
  v35 = *(v31 + 27);
  *(v31 + 27) = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  v36 = *(v31 + 25);
  *(v31 + 25) = 0;
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a28, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a29, 0);
  quasar::Bitmap::~Bitmap(a24);
  quasar::Bitmap::~Bitmap(a25);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v31, off_1F2D0F728);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a26);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitData(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 12);
  v68 = -1;
  v69 = v4;
  v66 = 0x40000000;
  v67 = -1073741824;
  v64 = -1073741824;
  v65 = 1036831949;
  v63 = 0x40000000;
  kaldi::nnet1::Component::TypeToMarker(2, &v62);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &v61);
  memset(v60, 0, sizeof(v60));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_227;
    }

    kaldi::ReadToken(a2, 0, v60);
    if ((SHIBYTE(v60[2]) & 0x80000000) == 0)
    {
      break;
    }

    v8 = v60[1];
    if (v60[1] > 14)
    {
      if (v60[1] > 20)
      {
        if (v60[1] == 21)
        {
          if (*v60[0] != 0x47746567726F463CLL || *(v60[0] + 8) != 0x5273616942657461 || *(v60[0] + 13) != 0x3E65676E61527361)
          {
            goto LABEL_226;
          }

LABEL_126:
          v21 = &v63;
LABEL_213:
          kaldi::ReadBasicType<float>(a2, 0, v21);
          goto LABEL_214;
        }

        if (v60[1] == 25)
        {
LABEL_106:
          v30 = *v60[0] == 0x7463656A6F72503CLL && *(v60[0] + 8) == 0x6E7261654C6E6F69 && *(v60[0] + 16) == 0x66656F4365746152 && *(v60[0] + 24) == 62;
          v21 = (a1 + 468);
          if (v30)
          {
            goto LABEL_213;
          }

          goto LABEL_173;
        }

        goto LABEL_154;
      }

      if (v60[1] != 15)
      {
        if (v60[1] == 20)
        {
          if (*v60[0] != 0x47746567726F463CLL || *(v60[0] + 8) != 0x4D73616942657461 || *(v60[0] + 16) != 1047421285)
          {
            goto LABEL_226;
          }

LABEL_82:
          v21 = &v64;
          goto LABEL_213;
        }

        goto LABEL_154;
      }

      v5 = v60[0];
LABEL_100:
      v25 = *v5;
      v26 = *(v5 + 7);
      v27 = v25 == 0x61526E7261654C3CLL && v26 == 0x3E66656F43657461;
      v21 = (a1 + 464);
      if (v27)
      {
        goto LABEL_213;
      }

      v8 = v60[1];
      if ((v60[2] & 0x8000000000000000) != 0 && v60[1] == 25)
      {
        goto LABEL_106;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v60[2]) <= 0xBu)
        {
          goto LABEL_139;
        }

LABEL_137:
        if (HIBYTE(v60[2]) == 12)
        {
LABEL_32:
          if (v60[0] != 0x536D6F646E61523CLL || LODWORD(v60[1]) != 1046766949)
          {
            goto LABEL_226;
          }

LABEL_37:
          v12 = &v68;
LABEL_134:
          kaldi::ReadBasicType<int>(a2, 0, v12);
          goto LABEL_214;
        }

LABEL_200:
        if (HIBYTE(v60[2]) != 18)
        {
          if (HIBYTE(v60[2]) != 19)
          {
            goto LABEL_226;
          }

          v5 = v60;
          goto LABEL_203;
        }

        if (v60[0] != 0x4374757074754F3CLL || v60[1] != 0x65756C61566C6C65 || LOWORD(v60[2]) != 15987)
        {
          goto LABEL_226;
        }

        goto LABEL_225;
      }

      goto LABEL_154;
    }

    if (v60[1] != 10)
    {
      if (v60[1] == 11)
      {
        if (*v60[0] != 0x6E6152736169423CLL || *(v60[0] + 3) != 0x3E65676E61527361)
        {
LABEL_226:
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v60, "</Component>"))
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v59);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "Invalid token ", 14);
            if (v60[2] >= 0)
            {
              v54 = v60;
            }

            else
            {
              v54 = v60[0];
            }

            if (v60[2] >= 0)
            {
              v55 = HIBYTE(v60[2]);
            }

            else
            {
              v55 = v60[1];
            }

            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ". Allowed tokens: ", 18);
            v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "(NumCells|BiasMean|BiasRange|ForgetGateBiasMean|ForgetGateBiasRange|ParamStddev|LearnRateCoef|ProjectionLearnRateCoef|MaxNorm|", 126);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "MaxGrad|MaxCell|NoPeep|InitTransformType|GradientNormType|RandomSeed)", 69);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v59);
          }

LABEL_227:
          kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateParams(a1, v69);
        }

        goto LABEL_132;
      }

      if (v60[1] == 13)
      {
        if (*v60[0] != 0x74536D617261503CLL || *(v60[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_226;
        }

        goto LABEL_88;
      }

LABEL_154:
      if (v8 == 9)
      {
        v40 = *v60[0] == 0x6D726F4E78614D3CLL && *(v60[0] + 8) == 62;
        v21 = (a1 + 472);
        if (v40)
        {
          goto LABEL_213;
        }

        v41 = *v60[0] == 0x6461724778614D3CLL && *(v60[0] + 8) == 62;
        v21 = (a1 + 152);
        if (v41)
        {
          goto LABEL_213;
        }
      }

      else if (v8 == 18)
      {
        v37 = *v60[0] == 0x6E6569646172473CLL && *(v60[0] + 8) == 0x7079546D726F4E74;
        if (v37 && *(v60[0] + 16) == 15973)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_173;
    }

    if (*v60[0] == 0x6C6C65436D754E3CLL && *(v60[0] + 8) == 15987)
    {
LABEL_133:
      v12 = &v69;
      goto LABEL_134;
    }

    if (*v60[0] == 0x61654D736169423CLL && *(v60[0] + 8) == 15982)
    {
      goto LABEL_98;
    }

LABEL_173:
    if (v60[1] == 9)
    {
      v45 = *v60[0] == 0x6C6C654378614D3CLL && *(v60[0] + 8) == 62;
      v21 = (a1 + 476);
      if (v45)
      {
        goto LABEL_213;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_199;
      }
    }

    if (v60[1] == 12)
    {
      if (*v60[0] == 0x536D6F646E61523CLL && *(v60[0] + 8) == 1046766949)
      {
        goto LABEL_37;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
LABEL_199:
        if (HIBYTE(v60[2]) == 8)
        {
          goto LABEL_215;
        }

        goto LABEL_200;
      }
    }

    if (v60[1] == 8)
    {
      if (*v60[0] == 0x3E706565506F4E3CLL)
      {
        goto LABEL_216;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }
    }

    if (v60[1] != 18)
    {
      goto LABEL_192;
    }

    if (*v60[0] != 0x4374757074754F3CLL || *(v60[0] + 8) != 0x65756C61566C6C65 || *(v60[0] + 16) != 15987)
    {
      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }

LABEL_192:
      if (v60[1] != 19)
      {
        goto LABEL_226;
      }

      v5 = v60[0];
LABEL_203:
      v46 = *v5;
      v47 = v5[1];
      v48 = *(v5 + 11);
      if (v46 != 0x61725474696E493CLL || v47 != 0x79546D726F66736ELL || v48 != 0x3E657079546D726FLL)
      {
        goto LABEL_226;
      }

      v39 = &v62;
LABEL_212:
      kaldi::ReadToken(a2, 0, v39);
      goto LABEL_214;
    }

LABEL_225:
    *(a1 + 209) = 1;
LABEL_214:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v60[2]) <= 0xCu)
  {
    if (HIBYTE(v60[2]) > 9u)
    {
      if (HIBYTE(v60[2]) == 10)
      {
        if (v60[0] == 0x6C6C65436D754E3CLL && LOWORD(v60[1]) == 15987)
        {
          goto LABEL_133;
        }

        if (v60[0] != 0x61654D736169423CLL || LOWORD(v60[1]) != 15982)
        {
          goto LABEL_226;
        }

LABEL_98:
        v21 = &v67;
        goto LABEL_213;
      }

      if (HIBYTE(v60[2]) != 11)
      {
        goto LABEL_32;
      }

      if (v60[0] != 0x6E6152736169423CLL || *(v60 + 3) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

LABEL_132:
      v21 = &v66;
      goto LABEL_213;
    }

LABEL_139:
    if (HIBYTE(v60[2]) != 8)
    {
      if (HIBYTE(v60[2]) != 9)
      {
        goto LABEL_226;
      }

      v34 = v60[0] == 0x6D726F4E78614D3CLL && LOBYTE(v60[1]) == 62;
      v21 = (a1 + 472);
      if (!v34)
      {
        v35 = v60[0] == 0x6461724778614D3CLL && LOBYTE(v60[1]) == 62;
        v21 = (a1 + 152);
        if (!v35)
        {
          v36 = v60[0] == 0x6C6C654378614D3CLL && LOBYTE(v60[1]) == 62;
          v21 = (a1 + 476);
          if (!v36)
          {
            goto LABEL_226;
          }
        }
      }

      goto LABEL_213;
    }

LABEL_215:
    if (v60[0] != 0x3E706565506F4E3CLL)
    {
      goto LABEL_226;
    }

LABEL_216:
    *(a1 + 208) = 0;
    goto LABEL_214;
  }

  v5 = v60;
  if (HIBYTE(v60[2]) > 0x12u)
  {
    if (HIBYTE(v60[2]) == 19)
    {
      goto LABEL_203;
    }

    if (HIBYTE(v60[2]) != 20)
    {
      if (HIBYTE(v60[2]) != 21)
      {
        goto LABEL_226;
      }

      v13 = v60[0] == 0x47746567726F463CLL && v60[1] == 0x5273616942657461;
      if (!v13 || *(&v60[1] + 5) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

      goto LABEL_126;
    }

    if (v60[0] != 0x47746567726F463CLL || v60[1] != 0x4D73616942657461 || LODWORD(v60[2]) != 1047421285)
    {
      goto LABEL_226;
    }

    goto LABEL_82;
  }

  if (HIBYTE(v60[2]) == 13)
  {
    if (v60[0] != 0x74536D617261503CLL || *(v60 + 5) != 0x3E7665646474536DLL)
    {
      goto LABEL_226;
    }

LABEL_88:
    v21 = &v65;
    goto LABEL_213;
  }

  if (HIBYTE(v60[2]) != 15)
  {
    if (HIBYTE(v60[2]) != 18)
    {
      goto LABEL_226;
    }

    if (v60[0] == 0x6E6569646172473CLL && v60[1] == 0x7079546D726F4E74 && LOWORD(v60[2]) == 15973)
    {
LABEL_164:
      v39 = &v61;
      goto LABEL_212;
    }

    goto LABEL_137;
  }

  goto LABEL_100;
}

void sub_1B53D8074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  if (*(v3 - 185) < 0)
  {
    operator delete(*(v3 - 208));
  }

  if (*(v3 - 161) < 0)
  {
    operator delete(*(v3 - 184));
  }

  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateParams(uint64_t a1, uint64_t a2)
{
  *(a1 + 176) = a2;
  if (*(a1 + *(*a1 - 24) + 12) > a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "# LSTM cells (", 14);
    v5 = MEMORY[0x1B8C84C00](v4, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") should not be less than output dim (", 38);
    v7 = MEMORY[0x1B8C84C00](v6, *(a1 + *(*a1 - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ").");
  }

  else
  {
    if (!*(a1 + 184))
    {
      operator new();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "input_weights_ thought to be un-initialized here");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

uint64_t kaldi::nnet1::RandMatrix<kaldi::QuantizedMatrix<short>>(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, kaldi::quasar::Vocab *this, float a5)
{
  v10 = kaldi::quasar::Vocab::VocabSize(this);
  v11 = kaldi::QuantizedMatrixBase<short>::NumCols(this);
  kaldi::Matrix<float>::Matrix(v17, v10, v11, 0, 0);
  v12 = 0;
LABEL_2:
  if (v12 < kaldi::MatrixBase<float>::NumRows(v17))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::MatrixBase<float>::NumCols(v17))
      {
        ++v12;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0);
          v14 = v15 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v14 = (kaldi::UniformRandomNumber::RandUniform(a1, 0) + -0.5) * (a5 + a5);
        }
      }

      else if (v12 == i)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      *(v17[0] + 4 * v12 * v18 + 4 * i) = v14;
    }
  }

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(this, v17);
  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_1B53D873C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(uint64_t a1)
{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(uint64_t a1)
{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(uint64_t a1)
{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(uint64_t a1)
{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(uint64_t a1)
{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_113:
    v34 = *(a1 + 176);
    v35 = *(a1 + *(*a1 - 24) + 12);
    if (v34 < v35)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "# LSTM cells (", 14);
      v41 = MEMORY[0x1B8C84C00](v40, *(a1 + 176));
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ") should not be less than output dim (", 38);
      v43 = MEMORY[0x1B8C84C00](v42, *(a1 + *(*a1 - 24) + 12));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v43, ").");
    }

    else
    {
      v36 = *(a1 + 184);
      *(a1 + 224) = v34 > v35;
      if (!v36)
      {
        operator new();
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_weights_ thougth to be un-initialized here");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    kaldi::ReadToken(a2, a3, &v46);
    if (SHIBYTE(v48) < 0)
    {
      if (v47 != 10 || (*v46 == 0x6C6C65436D754E3CLL ? (v7 = *(v46 + 4) == 15987) : (v7 = 0), !v7))
      {
        if (v47 != 15)
        {
          v12 = v47;
          if (v47 == 25)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }

        v6 = v46;
LABEL_13:
        v8 = *v6;
        v9 = *(v6 + 7);
        v10 = v8 == 0x61526E7261654C3CLL && v9 == 0x3E66656F43657461;
        v11 = (a1 + 464);
        if (v10)
        {
          goto LABEL_109;
        }

        v12 = v47;
        if (v48 < 0 && v47 == 25)
        {
LABEL_33:
          v17 = *v46 == 0x7463656A6F72503CLL && v46[1] == 0x6E7261654C6E6F69 && v46[2] == 0x66656F4365746152 && *(v46 + 24) == 62;
          v11 = (a1 + 468);
          if (!v17)
          {
LABEL_116:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
            if (v48 >= 0)
            {
              v38 = &v46;
            }

            else
            {
              v38 = v46;
            }

            if (v48 >= 0)
            {
              v39 = HIBYTE(v48);
            }

            else
            {
              v39 = v47;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          goto LABEL_109;
        }

        if (v48 < 0)
        {
LABEL_44:
          if (v12 == 9)
          {
            v18 = *v46 == 0x6D726F4E78614D3CLL && *(v46 + 8) == 62;
            v11 = (a1 + 472);
            if (v18)
            {
              goto LABEL_109;
            }

            if (v48 < 0)
            {
              v30 = *v46 == 0x6C6C654378614D3CLL && *(v46 + 8) == 62;
              v11 = (a1 + 476);
              if (!v30)
              {
                v28 = v46;
                goto LABEL_104;
              }

LABEL_109:
              kaldi::ReadBasicType<float>(a2, a3, v11);
              goto LABEL_110;
            }

            goto LABEL_50;
          }

          if (v12 == 8)
          {
            v29 = *v46;
            goto LABEL_97;
          }

          if (v12 != 18)
          {
            goto LABEL_116;
          }

          if (*v46 != 0x4374757074754F3CLL || v46[1] != 0x65756C61566C6C65 || *(v46 + 8) != 15987)
          {
            if (*v46 == 0x6E6569646172473CLL && v46[1] == 0x7079546D726F4E74 && *(v46 + 8) == 15973)
            {
              goto LABEL_73;
            }

            if (HIBYTE(v48) != 9)
            {
              goto LABEL_116;
            }

LABEL_93:
            v28 = &v46;
LABEL_104:
            v31 = *v28;
            v32 = *(v28 + 8);
            v33 = v31 == 0x6461724778614D3CLL && v32 == 62;
            v11 = (a1 + 152);
            if (!v33)
            {
              goto LABEL_116;
            }

            goto LABEL_109;
          }

LABEL_95:
          *(a1 + 209) = 1;
          goto LABEL_110;
        }

LABEL_25:
        if (HIBYTE(v48) == 9)
        {
          v14 = v46 == 0x6D726F4E78614D3CLL && v47 == 62;
          v11 = (a1 + 472);
          if (v14)
          {
            goto LABEL_109;
          }

LABEL_53:
          v19 = v46 == 0x6C6C654378614D3CLL && v47 == 62;
          v11 = (a1 + 476);
          if (v19)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

LABEL_50:
        if (HIBYTE(v48) == 8)
        {
          v29 = v46;
LABEL_97:
          if (v29 != 0x3E706565506F4E3CLL)
          {
            goto LABEL_116;
          }

          *(a1 + 208) = 0;
          goto LABEL_110;
        }

        if (HIBYTE(v48) != 18)
        {
          if (HIBYTE(v48) != 9)
          {
            goto LABEL_116;
          }

          goto LABEL_53;
        }

        if (v46 != 0x4374757074754F3CLL || v47 != 0x65756C61566C6C65 || v48 != 15987)
        {
          if (v46 != 0x6E6569646172473CLL || v47 != 0x7079546D726F4E74 || v48 != 15973)
          {
            goto LABEL_116;
          }

LABEL_73:
          __p[0] = 0;
          __p[1] = 0;
          v45 = 0;
          kaldi::ReadToken(a2, a3, __p);
          *(a1 + 156) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          if (SHIBYTE(v45) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_110;
        }

        goto LABEL_95;
      }
    }

    else
    {
      if (HIBYTE(v48) != 10)
      {
        if (HIBYTE(v48) == 15)
        {
          v6 = &v46;
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      if (v46 != 0x6C6C65436D754E3CLL || v47 != 15987)
      {
        goto LABEL_25;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, a1 + 176);
LABEL_110:
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v46);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_113;
    }
  }
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<NumCells>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 176));
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<ProjectionLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxCell>");
  result = kaldi::WriteBasicType<float>(a2, a3);
  if ((*(a1 + 208) & 1) == 0)
  {
    result = kaldi::WriteToken(a2, a3, "<NoPeep>");
  }

  if (*(a1 + 209) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<OutputCellValues>");
  }

  return result;
}

void sub_1B53D94F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::WriteData(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 128))(a1);
  (*(*a1 + 192))(a1, a2, a3);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::QuantizedMatrix<short>::Write(v8, a2, a3, a4);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::QuantizedMatrix<short>::Write(v9, a2, a3, a4);
  if (a1[208] == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::Write(v10, a2, a3, a4);
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  kaldi::CuVectorBase<float>::Write(v11, a2, a3);
  if (a1[224] == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);

    kaldi::QuantizedMatrix<short>::Write(v12, a2, a3, a4);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::NumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v3 = kaldi::quasar::Vocab::VocabSize(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4) * v3;
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v7 = kaldi::quasar::Vocab::VocabSize(v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v9 = v5 + kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
  v10 = (v9 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16));
  if (*(a1 + 208) == 1)
  {
    v11 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v10 = (v10 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v11);
  }

  if (*(a1 + 224) == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v13 = kaldi::quasar::Vocab::VocabSize(v12);
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    return v10 + kaldi::QuantizedMatrixBase<short>::NumCols(v14) * v13;
  }

  return v10;
}

const void **kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetParams(_BYTE *a1, void **a2)
{
  v4 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v6 = kaldi::quasar::Vocab::VocabSize(v5);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(v7) * v6;
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v10 = kaldi::quasar::Vocab::VocabSize(v9);
  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v30 = 0;
  v31 = 0;
  v12 = kaldi::QuantizedMatrixBase<short>::NumCols(v11) * v10;
  v29 = *a2;
  LODWORD(v30) = v8;
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v29, v13);
  v30 = 0;
  v31 = 0;
  v14 = v12 + v8;
  v29 = *a2 + 4 * v8;
  LODWORD(v30) = v12;
  v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v29, v15);
  if (a1[208] == 1)
  {
    v16 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v17 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v16;
    v30 = 0;
    v31 = 0;
    v18 = v17 + v14;
    v29 = *a2 + 4 * v14;
    LODWORD(v30) = v17;
    v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v29, v19);
    v14 = v18;
  }

  v20 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
  v30 = 0;
  v31 = 0;
  v29 = *a2 + 4 * v14;
  LODWORD(v30) = v20;
  v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  result = kaldi::CuVectorBase<float>::CopyToVec<float>(v21, &v29);
  if (a1[224] == 1)
  {
    v23 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v14;
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v25 = kaldi::quasar::Vocab::VocabSize(v24);
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v27 = kaldi::QuantizedMatrixBase<short>::NumCols(v26);
    v30 = 0;
    v31 = 0;
    v29 = *a2 + 4 * v23;
    v30 = (v27 * v25);
    v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    return kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v29, v28);
  }

  return result;
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetParams(_BYTE *a1, char **a2)
{
  (*(*a1 + 208))(a1);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v5 = kaldi::quasar::Vocab::VocabSize(v4);
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::NumCols(v6) * v5;
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v9 = kaldi::quasar::Vocab::VocabSize(v8);
  v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v11 = kaldi::QuantizedMatrixBase<short>::NumCols(v10) * v9;
  v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v28 = 0;
  v29 = 0;
  v27 = *a2;
  LODWORD(v28) = v7;
  kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v12, &v27);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v28 = 0;
  v29 = 0;
  v14 = v11 + v7;
  v27 = &(*a2)[4 * v7];
  LODWORD(v28) = v11;
  kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v13, &v27);
  if (a1[208] == 1)
  {
    v15 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v16 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v15;
    v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    v28 = 0;
    v29 = 0;
    v27 = &(*a2)[4 * v14];
    LODWORD(v28) = v16;
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v17, &v27);
    v14 += v16;
  }

  v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  v19 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
  v28 = 0;
  v29 = 0;
  v27 = &(*a2)[4 * v14];
  LODWORD(v28) = v19;
  result = kaldi::CuVectorBase<float>::CopyFromVec<float>(v18, &v27);
  if (a1[224] == 1)
  {
    v21 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v14;
    v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v23 = kaldi::quasar::Vocab::VocabSize(v22);
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v25 = kaldi::QuantizedMatrixBase<short>::NumCols(v24) * v23;
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v28 = 0;
    v29 = 0;
    v27 = &(*a2)[4 * v21];
    LODWORD(v28) = v25;
    return kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v26, &v27);
  }

  return result;
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::Sum(v2);
  v4 = *&v3;
  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v6 = kaldi::QuantizedMatrixBase<short>::Sum(v5);
  v7 = v4 + *&v6;
  if (*(a1 + 208) == 1)
  {
    v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    v7 = v7 + kaldi::CuMatrixBase<float>::Sum(v8);
  }

  if (*(a1 + 224) == 1)
  {
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v10 = kaldi::QuantizedMatrixBase<short>::Sum(v9);
    v7 = v7 + *&v10;
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  v12 = kaldi::CuVectorBase<float>::Sum(v11);
  return v7 + *&v12;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v3 = kaldi::quasar::Vocab::VocabSize(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4);
  kaldi::CuMatrix<float>::CuMatrix(v6, v3, v5, 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v6);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

void sub_1B53D9E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v4);
  v6 = kaldi::quasar::Vocab::VocabSize(v5);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v4);
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(v7);
  kaldi::CuMatrix<float>::Resize(va, v6, v8, 1, 0);
  kaldi::CuMatrixBase<float>::SetRandn(va);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v4);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

void sub_1B53D9FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetGradient(_BYTE *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 336))(v9, a2, a3, 0, 0);
  v10 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a4, v10, 0);
  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v12 = kaldi::quasar::Vocab::VocabSize(v11);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v14 = kaldi::QuantizedMatrixBase<short>::NumCols(v13) * v12;
  v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v16 = kaldi::quasar::Vocab::VocabSize(v15);
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v18 = kaldi::QuantizedMatrixBase<short>::NumCols(v17);
  v40 = 0;
  v41 = 0;
  v39 = *a4;
  LODWORD(v40) = v14;
  v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(v9, 0);
  kaldi::Matrix<float>::Matrix<float>(&v36, v19, 111);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v39, &v36);
  v20 = v18 * v16;
  kaldi::Matrix<float>::~Matrix(&v36);
  v37 = 0;
  v38 = 0;
  v21 = v20 + v14;
  v36 = *a4 + 4 * v14;
  LODWORD(v37) = v20;
  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(v9, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v36, v22);
  if (a1[208] == 1)
  {
    v23 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v24 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v23;
    v37 = 0;
    v38 = 0;
    v25 = v24 + v21;
    v36 = *a4 + 4 * v21;
    LODWORD(v37) = v24;
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v36, v26);
    v21 = v25;
  }

  v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
  v37 = 0;
  v38 = 0;
  v36 = *a4 + 4 * v21;
  LODWORD(v37) = v27;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(v9, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v28, &v36);
  if (a1[224] == 1)
  {
    v29 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v21;
    v30 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v31 = kaldi::quasar::Vocab::VocabSize(v30);
    v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v33 = kaldi::QuantizedMatrixBase<short>::NumCols(v32);
    v37 = 0;
    v38 = 0;
    v36 = *a4 + 4 * v29;
    v37 = (v33 * v31);
    v34 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v36, v34);
  }

  return (*(*v9 + 8))(v9);
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetNormalizedLearningRate(void *a1, int a2)
{
  v2 = (a1 + *(*a1 - 24));
  if ((v2[21] & 1) == 0)
  {
    return v2[14];
  }

  v3 = a1[63];
  v4 = a1[64] - v3;
  if (!v4)
  {
    return NAN;
  }

  v5 = v4 >> 2;
  if (v5 <= a2)
  {
    return NAN;
  }

  v6 = v5 - 1;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  return *(v3 + 4 * v6);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
  (*(*a1 + 192))(a1, &v44, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Input weights:", 16);
  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::nnet1::MomentStatistics<short>(v3);
  if ((v43 & 0x80u) == 0)
  {
    v4 = v42;
  }

  else
  {
    v4 = v42[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v5 = v43;
  }

  else
  {
    v5 = v42[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n Recurrent weights:", 20);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::nnet1::MomentStatistics<short>(v8);
  if ((v41 & 0x80u) == 0)
  {
    v9 = v40;
  }

  else
  {
    v9 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v10 = v41;
  }

  else
  {
    v10 = v40[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n Bias:", 7);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  kaldi::nnet1::MomentStatistics<float>(v13);
  if ((v39 & 0x80u) == 0)
  {
    v14 = v38;
  }

  else
  {
    v14 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v15 = v39;
  }

  else
  {
    v15 = v38[1];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n Forget gate bias:", 19);
  v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  v19 = *(a1 + 176);
  v34 = 0;
  v20 = *(v18 + 8) + 4 * v19;
  v32 = &unk_1F2CFCA48;
  v33 = v20;
  LODWORD(v34) = v19;
  v35 = *(v18 + 24);
  kaldi::nnet1::MomentStatistics<float>(&v32);
  if ((v37 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v22 = v37;
  }

  else
  {
    v22 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v21, v22);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (*(a1 + 208) == 1)
  {
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Peephole weights:", 19);
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v24);
    v25 = v34 >= 0 ? &v32 : v32;
    v26 = v34 >= 0 ? HIBYTE(v34) : v33;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Projection weights:", 21);
    v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    kaldi::nnet1::MomentStatistics<short>(v28);
    v29 = v34 >= 0 ? &v32 : v32;
    v30 = v34 >= 0 ? HIBYTE(v34) : v33;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }
  }

  std::stringbuf::str();
  v44 = *MEMORY[0x1E69E54E8];
  *(&v44 + *(v44 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v45 = MEMORY[0x1E69E5548] + 16;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  v45 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v46);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v48);
}

void sub_1B53DAAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 528))
  {
    memset(&v101, 0, sizeof(v101));
    v100 = 0;
    if (*(a1 + 80) >= 1)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v88, "\n For batch ");
        kaldi::quasar::to_string<int>(&v100);
        if ((v87 & 0x80u) == 0)
        {
          v3 = v86;
        }

        else
        {
          v3 = v86[0];
        }

        if ((v87 & 0x80u) == 0)
        {
          v4 = v87;
        }

        else
        {
          v4 = v86[1];
        }

        v5 = std::string::append(&v88, v3, v4);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v84, ": ");
        if ((v85 & 0x80u) == 0)
        {
          v7 = v84;
        }

        else
        {
          v7 = v84[0];
        }

        if ((v85 & 0x80u) == 0)
        {
          v8 = v85;
        }

        else
        {
          v8 = v84[1];
        }

        v9 = std::string::append(&v89, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v82, "\n  Number of cells : ");
        if ((v83 & 0x80u) == 0)
        {
          v11 = v82;
        }

        else
        {
          v11 = v82[0];
        }

        if ((v83 & 0x80u) == 0)
        {
          v12 = v83;
        }

        else
        {
          v12 = v82[1];
        }

        v13 = std::string::append(&v90, v11, v12);
        v14 = *&v13->__r_.__value_.__l.__data_;
        v91.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v91.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        kaldi::quasar::to_string<int>((a1 + 176));
        if ((v81 & 0x80u) == 0)
        {
          v15 = v80;
        }

        else
        {
          v15 = v80[0];
        }

        if ((v81 & 0x80u) == 0)
        {
          v16 = v81;
        }

        else
        {
          v16 = v80[1];
        }

        v17 = std::string::append(&v91, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v92.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v92.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v78, "\n  Input weights gradient: ");
        if ((v79 & 0x80u) == 0)
        {
          v19 = v78;
        }

        else
        {
          v19 = v78[0];
        }

        if ((v79 & 0x80u) == 0)
        {
          v20 = v79;
        }

        else
        {
          v20 = v78[1];
        }

        v21 = std::string::append(&v92, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v23);
        if ((v77 & 0x80u) == 0)
        {
          v24 = v76;
        }

        else
        {
          v24 = v76[0];
        }

        if ((v77 & 0x80u) == 0)
        {
          v25 = v77;
        }

        else
        {
          v25 = v76[1];
        }

        v26 = std::string::append(&v93, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v74, "\n  Recurrent weights gradient: ");
        if ((v75 & 0x80u) == 0)
        {
          v28 = v74;
        }

        else
        {
          v28 = v74[0];
        }

        if ((v75 & 0x80u) == 0)
        {
          v29 = v75;
        }

        else
        {
          v29 = v74[1];
        }

        v30 = std::string::append(&v94, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v32);
        if ((v73 & 0x80u) == 0)
        {
          v33 = v72;
        }

        else
        {
          v33 = v72[0];
        }

        if ((v73 & 0x80u) == 0)
        {
          v34 = v73;
        }

        else
        {
          v34 = v72[1];
        }

        v35 = std::string::append(&v95, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v70, "\n  Bias gradient: ");
        if ((v71 & 0x80u) == 0)
        {
          v37 = v70;
        }

        else
        {
          v37 = v70[0];
        }

        if ((v71 & 0x80u) == 0)
        {
          v38 = v71;
        }

        else
        {
          v38 = v70[1];
        }

        v39 = std::string::append(&v96, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v41);
        if ((v69 & 0x80u) == 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        if ((v69 & 0x80u) == 0)
        {
          v43 = v69;
        }

        else
        {
          v43 = __p[1];
        }

        v44 = std::string::append(&v97, v42, v43);
        v45 = *&v44->__r_.__value_.__l.__data_;
        v99 = v44->__r_.__value_.__r.__words[2];
        v98 = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if (v99 >= 0)
        {
          v46 = &v98;
        }

        else
        {
          v46 = v98;
        }

        if (v99 >= 0)
        {
          v47 = HIBYTE(v99);
        }

        else
        {
          v47 = *(&v98 + 1);
        }

        std::string::append(&v101, v46, v47);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (v69 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (v73 < 0)
        {
          operator delete(v72[0]);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (v77 < 0)
        {
          operator delete(v76[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (v79 < 0)
        {
          operator delete(v78[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if (v83 < 0)
        {
          operator delete(v82[0]);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (v87 < 0)
        {
          operator delete(v86[0]);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 208) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v97, "\n  Peephole weights gradient: ");
          v48 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v100);
          kaldi::nnet1::MomentStatistics<float>(v48);
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v96;
          }

          else
          {
            v49 = v96.__r_.__value_.__r.__words[0];
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v96.__r_.__value_.__l.__size_;
          }

          v51 = std::string::append(&v97, v49, size);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v99 = v51->__r_.__value_.__r.__words[2];
          v98 = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          if (v99 >= 0)
          {
            v53 = &v98;
          }

          else
          {
            v53 = v98;
          }

          if (v99 >= 0)
          {
            v54 = HIBYTE(v99);
          }

          else
          {
            v54 = *(&v98 + 1);
          }

          std::string::append(&v101, v53, v54);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(v98);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        if (*(a1 + 224) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v97, "\n  Projection weights gradient: ");
          v55 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v100);
          kaldi::nnet1::MomentStatistics<float>(v55);
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &v96;
          }

          else
          {
            v56 = v96.__r_.__value_.__r.__words[0];
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v96.__r_.__value_.__l.__size_;
          }

          v58 = std::string::append(&v97, v56, v57);
          v59 = *&v58->__r_.__value_.__l.__data_;
          v99 = v58->__r_.__value_.__r.__words[2];
          v98 = v59;
          v58->__r_.__value_.__l.__size_ = 0;
          v58->__r_.__value_.__r.__words[2] = 0;
          v58->__r_.__value_.__r.__words[0] = 0;
          if (v99 >= 0)
          {
            v60 = &v98;
          }

          else
          {
            v60 = v98;
          }

          if (v99 >= 0)
          {
            v61 = HIBYTE(v99);
          }

          else
          {
            v61 = *(&v98 + 1);
          }

          std::string::append(&v101, v60, v61);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(v98);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        ++v100;
      }

      while (v100 < *(a1 + 80));
    }

    v62 = std::string::basic_string[abi:ne200100]<0>(&v98, "\n");
    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v101;
    }

    else
    {
      v63 = v101.__r_.__value_.__r.__words[0];
    }

    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v101.__r_.__value_.__l.__size_;
    }

    v65 = std::string::insert(v62, 0, v63, v64);
    v66 = *&v65->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v65->__r_.__value_.__l + 2);
    *a2 = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  Gradients are uninitialized");
  }
}