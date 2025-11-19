void sub_1B54D0CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (*(v20 - 145) < 0)
  {
    operator delete(*(v20 - 168));
  }

  if (*(v20 - 121) < 0)
  {
    operator delete(*(v20 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalComponent::WriteData(uint64_t a1, void *a2, int a3)
{
  v6 = a1 + 152;
  (*(*a1 + 168))(a1);
  kaldi::CuMatrixBase<float>::Write(a1 + 104, a2, a3, 0);

  kaldi::CuVectorBase<float>::Write(v6, a2, a3);
}

void kaldi::nnet1::ConvolutionalComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 96);
  v7 = *(a1 + 124);
  v35 = *(a1 + 120);
  v36 = *(a2 + 20);
  v8 = (v6 - *(a1 + 88)) / *(a1 + 92);
  if (*(a1 + 312) == *(a1 + 304))
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 304), v8 + 1);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 328), v8 + 1);
    if (v8 < 0)
    {
      return;
    }
  }

  else if (v8 < 0)
  {
    return;
  }

  v32 = v7;
  v33 = a3;
  v9 = 0;
  v31 = v7;
  v37 = (v8 + 1);
  v38 = v5 / v6;
  do
  {
    kaldi::CuMatrix<float>::Resize((*(a1 + 304) + 48 * v9), v36, v35, 0, 0);
    memset(__src, 0, 24);
    if (v38 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = *(a1 + 88);
      do
      {
        if (v12 >= 1)
        {
          for (i = 0; i < v12; ++i)
          {
            v14 = i + v11 * *(a1 + 96) + v9 * *(a1 + 92);
            if (v10 >= *&__src[16])
            {
              v15 = *__src;
              v16 = v10 - *__src;
              v17 = (v10 - *__src) >> 2;
              v18 = v17 + 1;
              if ((v17 + 1) >> 62)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v19 = *&__src[16] - *__src;
              if ((*&__src[16] - *__src) >> 1 > v18)
              {
                v18 = v19 >> 1;
              }

              if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v20 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v20 = v18;
              }

              if (v20)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v20);
              }

              v21 = (v10 - *__src) >> 2;
              v22 = (4 * v17);
              v23 = (4 * v17 - 4 * v21);
              *v22 = v14;
              v10 = v22 + 1;
              memcpy(v23, v15, v16);
              v24 = *__src;
              *__src = v23;
              *&__src[8] = v10;
              *&__src[16] = 0;
              if (v24)
              {
                operator delete(v24);
              }
            }

            else
            {
              *v10++ = v14;
            }

            *&__src[8] = v10;
            v12 = *(a1 + 88);
          }
        }

        ++v11;
      }

      while (v11 != v38);
    }

    kaldi::CuMatrixBase<float>::CopyCols(*(a1 + 304) + 48 * v9, a2, __src);
    if (*__src)
    {
      *&__src[8] = *__src;
      operator delete(*__src);
    }

    ++v9;
  }

  while (v9 != v37);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  do
  {
    v28 = *(v33 + 8) + v27;
    v29 = v26 + *(v33 + 28);
    v30 = *(v33 + 32);
    *&__src[16] = v32;
    *&__src[20] = *(v33 + 20);
    *&__src[28] = v29;
    *&__src[32] = v30;
    *__src = &unk_1F2CFA908;
    *&__src[8] = v28;
    kaldi::CuMatrixBase<float>::AddVecToRows(__src, a1 + 152, 1.0, 0.0);
    kaldi::CuMatrixBase<float>::AddMatMat(__src, *(a1 + 304) + v25, 111, a1 + 104, 112);
    *__src = &unk_1F2CFA908;
    memset(&__src[8], 0, 32);
    quasar::Bitmap::~Bitmap(__src);
    v27 += 4 * v31;
    v26 -= v32;
    v25 += 48;
  }

  while (48 * v37 != v25);
}

void sub_1B54D10B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ConvolutionalComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 96);
  v6 = (v5 - *(a1 + 88)) / *(a1 + 92);
  if ((v6 & 0x80000000) == 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(a1 + 124);
    v29 = *(a1 + 120);
    v28 = *(a2 + 20);
    v14 = *(a1 + 8) / v5;
    v27 = (v6 + 1);
    do
    {
      kaldi::CuMatrix<float>::Resize((*(a1 + 328) + v10), v28, v29, 0, 0);
      v15 = *(a4 + 8) + v11;
      v16 = v12 + *(a4 + 28);
      v17 = *(a4 + 32);
      LODWORD(v32[1]) = v13;
      *(&v32[1] + 4) = *(a4 + 20);
      HIDWORD(v32[2]) = v16;
      v32[3] = v17;
      v31 = &unk_1F2CFA908;
      v32[0] = v15;
      kaldi::CuMatrixBase<float>::AddMatMat(*(a1 + 328) + v10, &v31, 111, a1 + 104, 111);
      v31 = &unk_1F2CFA908;
      memset(v32, 0, sizeof(v32));
      quasar::Bitmap::~Bitmap(&v31);
      v12 -= v13;
      v11 += 4 * v13;
      v10 += 48;
    }

    while (48 * v27 != v10);
    v18 = 0;
    do
    {
      if (v14 >= 1)
      {
        for (i = 0; i != v14; ++i)
        {
          v20 = *(a1 + 328) + 48 * v18;
          v21 = *(a1 + 88);
          v22 = *(a1 + 92);
          v23 = *(v20 + 28) - v21 * i;
          v24 = *(v20 + 32);
          v32[0] = *(v20 + 8) + 4 * v21 * i;
          LODWORD(v32[1]) = v21;
          *(&v32[1] + 4) = *(v20 + 20);
          HIDWORD(v32[2]) = v23;
          v32[3] = v24;
          LODWORD(v20) = v22 * v18 + *(a1 + 96) * i;
          v25 = *(a5 + 8) + 4 * v20;
          LODWORD(v20) = *(a5 + 28) - v20;
          v26 = *(a5 + 32);
          LODWORD(v30[2]) = v21;
          *(&v30[2] + 4) = *(a5 + 20);
          HIDWORD(v30[3]) = v20;
          v30[4] = v26;
          v31 = &unk_1F2CFA908;
          v30[0] = &unk_1F2CFA908;
          v30[1] = v25;
          kaldi::CuMatrixBase<float>::AddMat(v30, &v31, 111, 1.0, 1.0);
          v30[0] = &unk_1F2CFA908;
          memset(&v30[1], 0, 32);
          quasar::Bitmap::~Bitmap(v30);
          v31 = &unk_1F2CFA908;
          memset(v32, 0, sizeof(v32));
          quasar::Bitmap::~Bitmap(&v31);
        }
      }

      ++v18;
    }

    while (v18 != v27);
  }
}

void sub_1B54D1380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::ConvolutionalComponent::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v36, 0, 24);
    kaldi::ReadToken(a2, a3, v36);
    if (SHIBYTE(v36[2]) < 0)
    {
      if (v36[1] == 10)
      {
        v8 = *v36[0] == 0x694468637461503CLL && *(v36[0] + 4) == 15981;
        v9 = a1 + 88;
        if (v8)
        {
          goto LABEL_97;
        }
      }

      if (v36[1] == 11)
      {
        v10 = *v36[0] == 0x745368637461503CLL && *(v36[0] + 3) == 0x3E70657453686374;
        v9 = a1 + 92;
        if (v10)
        {
          goto LABEL_97;
        }
      }

      if (v36[1] == 15)
      {
        v12 = *v36[0] == 0x61526E7261654C3CLL && *(v36[0] + 7) == 0x3E66656F43657461;
        v7 = (a1 + 288);
        if (v12)
        {
          goto LABEL_91;
        }
      }

      else if (v36[1] == 13)
      {
        v11 = *v36[0] == 0x745368637461503CLL && *(v36[0] + 5) == 0x3E65646972745368;
        v9 = a1 + 96;
        if (v11)
        {
          goto LABEL_97;
        }
      }

      if (v36[1] == 9)
      {
        v15 = *v36[0] == 0x6D726F4E78614D3CLL && *(v36[0] + 8) == 62;
        v7 = (a1 + 296);
        if (!v15)
        {
LABEL_47:
          if (v36[1] != 9)
          {
            if (v36[1] != 18 || (*v36[0] == 0x6E6569646172473CLL ? (v16 = *(v36[0] + 1) == 0x7079546D726F4E74) : (v16 = 0), v16 ? (v17 = *(v36[0] + 8) == 15973) : (v17 = 0), !v17))
            {
LABEL_113:
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
              if (SHIBYTE(v36[2]) >= 0)
              {
                v32 = v36;
              }

              else
              {
                v32 = v36[0];
              }

              if (SHIBYTE(v36[2]) >= 0)
              {
                v33 = HIBYTE(v36[2]);
              }

              else
              {
                v33 = v36[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
            }

            goto LABEL_110;
          }

          v18 = v36[0];
          goto LABEL_86;
        }
      }

      else
      {
        if (v36[1] != 19)
        {
          goto LABEL_47;
        }

        v13 = *v36[0] == 0x61654C736169423CLL && *(v36[0] + 1) == 0x6F43657461526E72;
        v14 = v13 && *(v36[0] + 11) == 0x3E66656F43657461;
        v7 = (a1 + 292);
        if (!v14)
        {
          goto LABEL_47;
        }
      }
    }

    else if (HIBYTE(v36[2]) <= 0xCu)
    {
      if (HIBYTE(v36[2]) != 9)
      {
        if (HIBYTE(v36[2]) == 10)
        {
          v22 = v36[0] == 0x694468637461503CLL && LOWORD(v36[1]) == 15981;
          v9 = a1 + 88;
          if (!v22)
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (HIBYTE(v36[2]) != 11)
          {
            goto LABEL_113;
          }

          v19 = v36[0] == 0x745368637461503CLL && *(v36 + 3) == 0x3E70657453686374;
          v9 = a1 + 92;
          if (!v19)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_97;
      }

      v23 = v36[0] == 0x6D726F4E78614D3CLL && LOBYTE(v36[1]) == 62;
      v7 = (a1 + 296);
      if (!v23)
      {
        v18 = v36;
LABEL_86:
        v24 = *v18;
        v25 = *(v18 + 8);
        v26 = v24 == 0x6461724778614D3CLL && v25 == 62;
        v7 = (a1 + 188);
        if (!v26)
        {
          goto LABEL_113;
        }
      }
    }

    else if (HIBYTE(v36[2]) > 0x11u)
    {
      if (HIBYTE(v36[2]) == 18)
      {
        if (v36[0] != 0x6E6569646172473CLL || v36[1] != 0x7079546D726F4E74 || LOWORD(v36[2]) != 15973)
        {
          goto LABEL_113;
        }

LABEL_110:
        __p[0] = 0;
        __p[1] = 0;
        v35 = 0;
        kaldi::ReadToken(a2, a3, __p);
        *(a1 + 184) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_98;
      }

      if (HIBYTE(v36[2]) != 19)
      {
        goto LABEL_113;
      }

      v20 = v36[0] == 0x61654C736169423CLL && v36[1] == 0x6F43657461526E72;
      v21 = v20 && *(&v36[1] + 3) == 0x3E66656F43657461;
      v7 = (a1 + 292);
      if (!v21)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (HIBYTE(v36[2]) == 13)
      {
        v27 = v36[0] == 0x745368637461503CLL && *(v36 + 5) == 0x3E65646972745368;
        v9 = a1 + 96;
        if (!v27)
        {
          goto LABEL_113;
        }

LABEL_97:
        kaldi::ReadBasicType<int>(a2, a3, v9);
        goto LABEL_98;
      }

      if (HIBYTE(v36[2]) != 15)
      {
        goto LABEL_113;
      }

      v6 = v36[0] == 0x61526E7261654C3CLL && *(v36 + 7) == 0x3E66656F43657461;
      v7 = (a1 + 288);
      if (!v6)
      {
        goto LABEL_113;
      }
    }

LABEL_91:
    kaldi::ReadBasicType<float>(a2, a3, v7);
LABEL_98:
    if (SHIBYTE(v36[2]) < 0)
    {
      operator delete(v36[0]);
    }
  }

  kaldi::CuMatrix<float>::Read(a1 + 104, a2, a3, 0);
  return kaldi::CuVector<float>::Read(a1 + 152, a2, a3);
}

void *kaldi::nnet1::ConvolutionalComponent::WriteConfig(unsigned int *a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<PatchDim>");
  kaldi::WriteBasicType<int>(a2, a3, a1[22]);
  kaldi::WriteToken(a2, a3, "<PatchStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[23]);
  kaldi::WriteToken(a2, a3, "<PatchStride>");
  kaldi::WriteBasicType<int>(a2, a3, a1[24]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(a1[46], &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B54D1B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **kaldi::nnet1::ConvolutionalComponent::GetParams(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = *(a1 + 120) * *(a1 + 124);
  v9 = 0;
  v10 = 0;
  v8 = *a2;
  LODWORD(v9) = v5;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v8, a1 + 104);
  v6 = *(a1 + 168);
  v9 = 0;
  v10 = 0;
  v8 = *a2 + 4 * v5;
  LODWORD(v9) = v6;
  return kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 152), &v8);
}

void *kaldi::nnet1::ConvolutionalComponent::SetParams(_DWORD *a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = a1[30] * a1[31];
  v8 = 0;
  v9 = 0;
  v7 = *a2;
  LODWORD(v8) = v4;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 26), &v7);
  v5 = a1[42];
  v8 = 0;
  v9 = 0;
  v7 = &(*a2)[4 * v4];
  LODWORD(v8) = v5;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 38, &v7);
}

float kaldi::nnet1::ConvolutionalComponent::SumParams(kaldi::nnet1::ConvolutionalComponent *this)
{
  v2 = kaldi::CuMatrixBase<float>::Sum(this + 104);
  v3 = kaldi::CuVectorBase<float>::Sum(this + 152);
  return v2 + *&v3;
}

uint64_t kaldi::nnet1::ConvolutionalComponent::PerturbParams(kaldi::nnet1::ConvolutionalComponent *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v7, *(this + 31), *(this + 30), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v7);
  kaldi::CuMatrixBase<float>::AddMat(this + 104, v7, 111, a2, 1.0);
  kaldi::CuVector<float>::CuVector(v6, this + 152);
  kaldi::CuVectorBase<float>::SetRandn(v6);
  *&v4 = a2;
  kaldi::CuVectorBase<float>::AddVec(v4, 1.0);
  kaldi::CuVector<float>::~CuVector(v6);
  return kaldi::CuMatrix<float>::~CuMatrix(v7);
}

void sub_1B54D1D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalComponent::GetGradient(_DWORD *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  LODWORD(a3) = a1[30] * a1[31];
  v12 = 0;
  v13 = 0;
  v11 = *a4;
  LODWORD(v12) = a3;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v11, *(v8 + 192));
  v9 = a1[42];
  v12 = 0;
  v13 = 0;
  v11 = *a4 + 4 * a3;
  LODWORD(v12) = v9;
  kaldi::CuVectorBase<float>::CopyToVec<float>(*(v8 + 216), &v11);
  return (*(*v8 + 8))(v8);
}

void kaldi::nnet1::ConvolutionalComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::ConvolutionalComponent::EnsureCorrs(a1);
  v10 = *(a1 + 92);
  v11 = *(a1 + 96) - *(a1 + 88);
  v12 = *(a1 + 124);
  *(*(a1 + 352) + 4 * a5) = *(a2 + 20);
  v13 = *(a1 + 192) + 48 * a5;
  *(*(a1 + 216) + 32 * a5 + 24) = a4;
  *(v13 + 32) = a4;
  v14 = v11 / v10;
  kaldi::CuMatrixBase<float>::SetZero(v13);
  kaldi::CuVectorBase<float>::SetZero(*(a1 + 216) + 32 * a5);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(a3 + 8) + v17;
      v19 = v16 + *(a3 + 28);
      v20 = *(a3 + 32);
      LODWORD(v21[2]) = v12;
      *(&v21[2] + 4) = *(a3 + 20);
      HIDWORD(v21[3]) = v19;
      v21[4] = v20;
      v21[0] = &unk_1F2CFA908;
      v21[1] = v18;
      kaldi::CuMatrixBase<float>::AddMatMat(*(a1 + 192) + 48 * a5, v21, 112, *(a1 + 304) + v15, 111);
      kaldi::CuVectorBase<float>::AddRowSumMat(*(a1 + 216) + 32 * a5, v21);
      v21[0] = &unk_1F2CFA908;
      memset(&v21[1], 0, 32);
      quasar::Bitmap::~Bitmap(v21);
      v17 += 4 * v12;
      v16 -= v12;
      v15 += 48;
    }

    while (48 * (v14 + 1) != v15);
  }
}

void sub_1B54D2040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12)
{
  a11 = 0u;
  a12 = 0u;
  quasar::Bitmap::~Bitmap(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalComponent::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 188) = a3;
  *(result + 184) = a2;
  *(result + 376) = 0;
  return result;
}

void kaldi::nnet1::ConvolutionalComponent::NormalizeGradients(kaldi::nnet1::ConvolutionalComponent *this, float a2, int a3)
{
  v3 = a2;
  v5 = *(this + 46);
  if (v5 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      v9 = a3;
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 24) + 48 * a3, *(this + 30) + 48 * a3, a2);
      v10 = *(this + 27) + 32 * v9;
      v11 = *(this + 33) + 32 * v9;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, v11, v3);
    }
  }

  else if (v5 == 2)
  {
    if (a2 > 0.0)
    {
      v7 = a3;
      if (*(this + 84))
      {
        v3 = *(*(this + 44) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 24) + 48 * a3, (*(this + 30) + 48 * a3), v3);
      v12 = *(this + 27) + 32 * v7;
      v13 = (*(this + 33) + 32 * v7);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v12, v13, v3);
    }
  }

  else if (v5 == 1 && a2 > 0.0)
  {
    v6 = a3;
    if (*(this + 84))
    {
      v3 = *(*(this + 44) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 24) + 48 * a3, v3);
    v14 = *(this + 27) + 32 * v6;

    kaldi::nnet1::UpdatableComponent::ClipGradient(v14, v3);
  }
}

void kaldi::nnet1::ConvolutionalComponent::UpdateWeights(kaldi::nnet1::ConvolutionalComponent *this, void *a2, int a3)
{
  kaldi::nnet1::ConvolutionalComponent::EnsureCorrs(this);
  v6 = (*(this + 24) - *(this + 22)) / *(this + 23);
  v7 = *(this + 14);
  v8 = *(this + 20);
  if (a3 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(this + 20);
  }

  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = *(this + 24);
  v12 = v11 + 48 * v9;
  *(v12 + 32) = a2;
  *(*(this + 27) + 32 * v9 + 24) = a2;
  *(*(this + 30) + 48 * v9 + 32) = a2;
  *(*(this + 33) + 32 * v9 + 24) = a2;
  if (v9 == v8)
  {
    kaldi::CuMatrixBase<float>::AddMat(v12, v11, 111, 1.0, 0.0);
    LODWORD(v13) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v13, 0.0);
    if (*(this + 20) > 1)
    {
      v14 = 1;
      v15 = 32;
      v16 = 48;
      do
      {
        kaldi::CuMatrixBase<float>::AddMat(*(this + 24) + 48 * v10, *(this + 24) + v16, 111, 1.0, 1.0);
        LODWORD(v17) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v17, 1.0);
        ++v14;
        v16 += 48;
        v15 += 32;
      }

      while (v14 < *(this + 20));
    }

    v18 = *(this + 44);
    v18[v10] = 0;
    if (v8 >= 1)
    {
      v19 = 0;
      v20 = v18;
      do
      {
        v21 = *v20++;
        v19 += v21;
        v18[v10] = v19;
        --v8;
      }

      while (v8);
    }
  }

  if (*(this + 84) == 1)
  {
    v7 = v7 / *(*(this + 44) + 4 * v10);
  }

  v22 = 1.0 / (v6 + 1);
  kaldi::CuMatrixBase<float>::Scale(*(this + 24) + 48 * v10, v22);
  kaldi::CuVectorBase<float>::Scale();
  if (*(this + 47) >= 0.0)
  {
    (*(*this + 248))(this, v10);
  }

  *(this + 17) = a2;
  *(this + 22) = a2;
  kaldi::CuMatrixBase<float>::AddMat(this + 104, *(this + 24) + 48 * v10, 111, -(v7 * *(this + 72)), 1.0);
  *&v23 = -(v7 * *(this + 73));
  kaldi::CuVectorBase<float>::AddVec(v23, 1.0);
  if (*(this + 74) > 0.0)
  {
    kaldi::CuMatrix<float>::CuMatrix(v30, this + 104, 111);
    kaldi::CuMatrixBase<float>::MulElements(v30, this + 104);
    v24 = *(this + 31);
    v28[2] = 0;
    v29 = 0;
    v28[0] = &unk_1F2D3AC18;
    v28[1] = 0;
    kaldi::CuVector<float>::Resize(v28, v24, 0);
    v29 = a2;
    kaldi::CuVectorBase<float>::AddColSumMat(v28, v30);
    kaldi::CuVectorBase<float>::ApplyPow(v28, 0.5);
    kaldi::CuVector<float>::CuVector(v27, v28);
    kaldi::CuVectorBase<float>::Scale();
    kaldi::CuVectorBase<float>::ApplyFloor(v27, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(v27);
    kaldi::CuMatrixBase<float>::MulRowsVec(this + 104, v27);
    kaldi::CuVector<float>::~CuVector(v27);
    kaldi::CuVector<float>::~CuVector(v28);
    kaldi::CuMatrix<float>::~CuMatrix(v30);
  }

  v25 = *(this + 44);
  if (v10 == *(this + 20))
  {
    v26 = *(this + 45);
    if (v25 != v26)
    {
      bzero(v25, v26 - v25);
    }
  }

  else
  {
    *&v25[4 * v10] = 0;
  }
}

void sub_1B54D2574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  kaldi::CuVector<float>::~CuVector(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MaxPoolingComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v3 = a2 + 4;
  v4 = a1 + 56;
  v5 = a1 + 52;
  v6 = a1 + 48;
  while (1)
  {
    if ((*(v3 + *(*a2 - 24)) & 2) != 0)
    {
      v7 = HIBYTE(v29);
      goto LABEL_44;
    }

    kaldi::ReadToken(a2, 0, &v27);
    v7 = HIBYTE(v29);
    if (SHIBYTE(v29) < 0)
    {
      break;
    }

    if (HIBYTE(v29) != 10)
    {
      if (HIBYTE(v29) != 12)
      {
        goto LABEL_47;
      }

      v8 = &v27;
      goto LABEL_18;
    }

    v15 = v27 == 0x7A69536C6F6F503CLL && v28 == 15973;
    v10 = v6;
    if (!v15)
    {
      v16 = v27 == 0x6574536C6F6F503CLL && v28 == 15984;
      v10 = v5;
      if (!v16)
      {
        goto LABEL_47;
      }
    }

LABEL_32:
    kaldi::ReadBasicType<int>(a2, 0, v10);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v28 == 10)
  {
    v9 = *v27 == 0x7A69536C6F6F503CLL && v27[4] == 15973;
    v10 = v6;
    if (v9)
    {
      goto LABEL_32;
    }

    v11 = *v27 == 0x6574536C6F6F503CLL && v27[4] == 15984;
    v10 = v5;
    if (v11)
    {
      goto LABEL_32;
    }
  }

  if (v28 != 12)
  {
    goto LABEL_47;
  }

  v8 = v27;
LABEL_18:
  v12 = *v8;
  v13 = *(v8 + 2);
  v14 = v12 == 0x7274536C6F6F503CLL && v13 == 1046832233;
  v10 = v4;
  if (v14)
  {
    goto LABEL_32;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v29) == 12)
    {
      v17 = &v27;
      goto LABEL_39;
    }

    goto LABEL_47;
  }

  if (v28 != 12)
  {
    goto LABEL_47;
  }

  v17 = v27;
LABEL_39:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 0x6E6F706D6F432F3CLL || v19 != 1047817829)
  {
LABEL_47:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Unknown token ", 14);
    if (v29 >= 0)
    {
      v22 = &v27;
    }

    else
    {
      v22 = v27;
    }

    if (v29 >= 0)
    {
      v23 = HIBYTE(v29);
    }

    else
    {
      v23 = v28;
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " (PoolSize|PoolStep|PoolStride)", 31);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

LABEL_44:
  if (v7 < 0)
  {
    operator delete(v27);
  }
}

void sub_1B54D2914(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MaxPoolingComponent::WriteData(unsigned int *a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<PoolSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<PoolStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<PoolStride>");
  v6 = a1[14];

  return kaldi::WriteBasicType<int>(a2, a3, v6);
}

void kaldi::nnet1::MaxPoolingComponent::PropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1[2] / a1[14] - a1[12]) / a1[13];
  if ((v3 & 0x80000000) == 0)
  {
    v7 = 0;
    do
    {
      v8 = a1[14];
      v9 = *(a3 + 8) + 4 * (v8 * v7);
      v10 = *(a3 + 28) - v8 * v7;
      v11 = *(a3 + 32);
      LODWORD(v20[2]) = v8;
      *(&v20[2] + 4) = *(a3 + 20);
      v12.i32[1] = v20[3];
      HIDWORD(v20[3]) = v10;
      v20[4] = v11;
      v20[0] = &unk_1F2CFA908;
      v20[1] = v9;
      v12.i32[0] = -525502228;
      kaldi::CuMatrixBase<float>::Set(v20, v12);
      if (a1[12] >= 1)
      {
        v13 = 0;
        do
        {
          v14 = (v13 + v7 * a1[13]) * a1[14];
          v15 = *(a2 + 8) + 4 * v14;
          v16 = *(a2 + 28) - v14;
          v17 = *(a2 + 32);
          LODWORD(v19[2]) = a1[14];
          *(&v19[2] + 4) = *(a2 + 20);
          HIDWORD(v19[3]) = v16;
          v19[4] = v17;
          v19[0] = &unk_1F2CFA908;
          v19[1] = v15;
          kaldi::CuMatrixBase<float>::Max(v20, v19);
          v19[0] = &unk_1F2CFA908;
          memset(&v19[1], 0, 32);
          quasar::Bitmap::~Bitmap(v19);
          ++v13;
        }

        while (v13 < a1[12]);
      }

      v20[0] = &unk_1F2CFA908;
      memset(&v20[1], 0, 32);
      quasar::Bitmap::~Bitmap(v20);
    }

    while (v7++ != v3);
  }
}

void sub_1B54D2B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MaxPoolingComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[13];
  v8 = (a1[2] / a1[14]);
  v9 = a1[12];
  LODWORD(v44[0]) = 0;
  std::vector<int>::vector[abi:ne200100](v48, v8);
  kaldi::CuMatrixBase<float>::SetZero(a5);
  v35 = v8;
  v10 = a1;
  v36 = (v8 - v9) / v7;
  if ((v36 & 0x80000000) == 0)
  {
    v37 = 0;
    v11 = a1[12];
    do
    {
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = &unk_1F2CFA908;
        do
        {
          v15 = v10[13];
          v14 = v10[14];
          v16 = (v12 + v37 * v15) * v14;
          v17 = *(a2 + 8) + 4 * v16;
          v18 = *(a2 + 28) - v16;
          v19 = *(a2 + 32);
          *(&v47[2] + 4) = *(a2 + 20);
          LODWORD(v47[2]) = v14;
          HIDWORD(v47[3]) = v18;
          v47[4] = v19;
          v47[0] = v13;
          v47[1] = v17;
          v20 = v13;
          v21 = *(a3 + 8) + 4 * (v14 * v37);
          LODWORD(v19) = *(a3 + 28) - v14 * v37;
          v22 = *(a3 + 32);
          *(&v46[2] + 4) = *(a3 + 20);
          LODWORD(v46[2]) = v14;
          HIDWORD(v46[3]) = v19;
          v46[4] = v22;
          v46[0] = &unk_1F2CFA908;
          v46[1] = v21;
          v23 = *(a5 + 8) + 4 * v16;
          v24 = *(a5 + 28) - v16;
          v25 = *(a5 + 32);
          LODWORD(v45[2]) = v14;
          *(&v45[2] + 4) = *(a5 + 20);
          HIDWORD(v45[3]) = v24;
          v45[4] = v25;
          v45[0] = &unk_1F2CFA908;
          v45[1] = v23;
          v26 = *(a4 + 8) + 4 * (v14 * v37);
          LODWORD(v17) = *(a4 + 28) - v14 * v37;
          v27 = *(a4 + 32);
          LODWORD(v42[1]) = v14;
          *(&v42[1] + 4) = *(a4 + 20);
          HIDWORD(v42[2]) = v17;
          v42[3] = v27;
          v41 = &unk_1F2CFA908;
          v42[0] = v26;
          kaldi::CuMatrix<float>::CuMatrix(v44, &v41, 111);
          v41 = &unk_1F2CFA908;
          memset(v42, 0, sizeof(v42));
          quasar::Bitmap::~Bitmap(&v41);
          memset(v42, 0, sizeof(v42));
          v41 = &unk_1F2D0EE38;
          v43 = 0;
          kaldi::CuMatrixBase<float>::EqualElementMask(v47, v46, &v41);
          kaldi::CuMatrixBase<float>::MulElements(v44, &v41);
          kaldi::CuMatrixBase<float>::AddMat(v45, v44, 111, 1.0, 1.0);
          ++*(v48[0] + v12 + v37 * v15);
          kaldi::CuMatrix<float>::~CuMatrix(&v41);
          kaldi::CuMatrix<float>::~CuMatrix(v44);
          v45[0] = &unk_1F2CFA908;
          memset(&v45[1], 0, 32);
          quasar::Bitmap::~Bitmap(v45);
          v46[0] = &unk_1F2CFA908;
          memset(&v46[1], 0, 32);
          quasar::Bitmap::~Bitmap(v46);
          v47[0] = v20;
          memset(&v47[1], 0, 32);
          quasar::Bitmap::~Bitmap(v47);
          v13 = v20;
          v10 = a1;
          v11 = a1[12];
          ++v12;
        }

        while (v12 < v11);
      }
    }

    while (v37++ != v36);
  }

  if (v35 >= 1)
  {
    for (i = 0; i != v35; ++i)
    {
      v30 = v10[14];
      v31 = *(a5 + 8) + 4 * (v30 * i);
      v32 = *(a5 + 28) - v30 * i;
      v33 = *(a5 + 32);
      LODWORD(v44[2]) = v30;
      *(&v44[2] + 4) = *(a5 + 20);
      HIDWORD(v34) = v44[3];
      HIDWORD(v44[3]) = v32;
      v44[4] = v33;
      v44[0] = &unk_1F2CFA908;
      v44[1] = v31;
      LODWORD(v34) = *(v48[0] + i);
      *&v34 = 1.0 / v34;
      kaldi::CuMatrixBase<float>::Scale(v44, *&v34);
      v44[0] = &unk_1F2CFA908;
      memset(&v44[1], 0, 32);
      quasar::Bitmap::~Bitmap(v44);
      v10 = a1;
    }
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }
}

void sub_1B54D2FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MaxPoolingComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<PoolSize>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 48);
  kaldi::ExpectToken(a2, a3, "<PoolStep>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 52);
  kaldi::ExpectToken(a2, a3, "<PoolStride>");

  return kaldi::ReadBasicType<int>(a2, a3, a1 + 56);
}

void kaldi::nnet1::TemporalMaxPoolingComponent::PropagateFnc(int16x4_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1.i32[0] = -525502228;
  kaldi::CuMatrixBase<float>::Set(a4, a1);
  if (*(a3 + 20) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(a3 + 24);
      v8 = *(a3 + 8) + 4 * (v7 * v6);
      v9 = *(a3 + 28) - v7 * v6;
      v10 = *(a3 + 32);
      DWORD2(v12) = *(a3 + 16);
      HIDWORD(v12) = 1;
      *&v13 = __PAIR64__(v9, v7);
      *(&v13 + 1) = v10;
      v11 = &unk_1F2CFA908;
      *&v12 = v8;
      kaldi::CuMatrixBase<float>::Max(a4, &v11);
      ++v6;
      v11 = &unk_1F2CFA908;
      v12 = 0u;
      v13 = 0u;
      quasar::Bitmap::~Bitmap(&v11);
    }

    while (v6 < *(a3 + 20));
  }
}

void sub_1B54D3300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::TemporalMaxPoolingComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0u;
  v17 = 0u;
  v16 = &unk_1F2D0EE38;
  v19 = 0;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v13 = *(a3 + 8);
  v12 = &unk_1F2CFCA48;
  v14 = v7;
  v15 = v8;
  kaldi::CuMatrixBase<float>::EqualElementColMask(a2, &v12, &v16);
  v9 = *(a4 + 16);
  v10 = *(a4 + 32);
  v13 = *(a4 + 8);
  v12 = &unk_1F2CFCA48;
  v14 = v9;
  v15 = v10;
  kaldi::CuMatrixBase<float>::MulColsVec(&v16, &v12);
  kaldi::CuMatrixBase<float>::AddMat(a5, &v16, 111, 1.0, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(&v16);
}

void sub_1B54D3430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AveragePooling2DComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v35 = 0uLL;
  v36 = 0;
  v3 = a2 + 4;
  v4 = a1 + 68;
  v5 = a1 + 64;
  v32 = a1 + 60;
  v33 = a1 + 56;
  v6 = a1 + 52;
  v7 = a1 + 48;
  while (1)
  {
    if ((*(v3 + *(*a2 - 24)) & 2) != 0)
    {
      v8 = HIBYTE(v36);
      goto LABEL_71;
    }

    kaldi::ReadToken(a2, 0, &v35);
    v8 = HIBYTE(v36);
    if (SHIBYTE(v36) < 0)
    {
      break;
    }

    if (HIBYTE(v36) == 10)
    {
      v16 = v35 == 0x654C5870616D463CLL && WORD4(v35) == 15982;
      v10 = v7;
      if (v16)
      {
        goto LABEL_59;
      }

      v17 = v35 == 0x654C5970616D463CLL && WORD4(v35) == 15982;
      v10 = v6;
      if (v17)
      {
        goto LABEL_59;
      }

      v18 = v35 == 0x654C586C6F6F503CLL && WORD4(v35) == 15982;
      v10 = v33;
      if (v18)
      {
        goto LABEL_59;
      }

      v19 = v35 == 0x654C596C6F6F503CLL && WORD4(v35) == 15982;
      v10 = v32;
      if (v19)
      {
        goto LABEL_59;
      }

      if ((SHIBYTE(v36) & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_47;
    }

    if (HIBYTE(v36) != 11)
    {
      if (HIBYTE(v36) == 12)
      {
        v11 = &v35;
        goto LABEL_66;
      }

      goto LABEL_75;
    }

    v9 = v35 == 0x7453586C6F6F503CLL && *(&v35 + 3) == 0x3E70657453586C6FLL;
    v10 = v5;
    if (v9)
    {
      goto LABEL_59;
    }

    v11 = &v35;
LABEL_54:
    v21 = *v11;
    v22 = *(v11 + 3);
    v23 = v21 == 0x7453596C6F6F503CLL && v22 == 0x3E70657453596C6FLL;
    v10 = v4;
    if (!v23)
    {
      if (SHIBYTE(v36) < 0)
      {
LABEL_64:
        if (*(&v35 + 1) == 12)
        {
          v11 = v35;
          goto LABEL_66;
        }
      }

      goto LABEL_75;
    }

LABEL_59:
    kaldi::ReadBasicType<int>(a2, 0, v10);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (*(&v35 + 1) == 10)
  {
    v12 = *v35 == 0x654C5870616D463CLL && *(v35 + 8) == 15982;
    v10 = v7;
    if (v12)
    {
      goto LABEL_59;
    }

    v13 = *v35 == 0x654C5970616D463CLL && *(v35 + 8) == 15982;
    v10 = v6;
    if (v13)
    {
      goto LABEL_59;
    }

    v14 = *v35 == 0x654C586C6F6F503CLL && *(v35 + 8) == 15982;
    v10 = v33;
    if (v14)
    {
      goto LABEL_59;
    }

    v15 = *v35 == 0x654C596C6F6F503CLL && *(v35 + 8) == 15982;
    v10 = v32;
    if (v15)
    {
      goto LABEL_59;
    }
  }

LABEL_47:
  if (*(&v35 + 1) != 11)
  {
    goto LABEL_64;
  }

  v11 = v35;
  v20 = *v35 == 0x7453586C6F6F503CLL && *(v35 + 3) == 0x3E70657453586C6FLL;
  v10 = v5;
  if (v20)
  {
    goto LABEL_59;
  }

  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_54;
  }

  v11 = &v35;
  if (HIBYTE(v36) == 11)
  {
    goto LABEL_54;
  }

  if (HIBYTE(v36) != 12)
  {
    goto LABEL_75;
  }

LABEL_66:
  v24 = *v11;
  v25 = *(v11 + 2);
  if (v24 != 0x6E6F706D6F432F3CLL || v25 != 1047817829)
  {
LABEL_75:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v34);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unknown token ", 14);
    if (v36 >= 0)
    {
      v28 = &v35;
    }

    else
    {
      v28 = v35;
    }

    if (v36 >= 0)
    {
      v29 = HIBYTE(v36);
    }

    else
    {
      v29 = *(&v35 + 1);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " (FmapXLen|FmapYLen|PoolXLen|PoolYLen|PoolXStep|PoolYStep)", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

LABEL_71:
  if (v8 < 0)
  {
    operator delete(v35);
  }
}

void sub_1B54D38E0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::AveragePooling2DComponent::WriteData(unsigned int *a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<FmapXLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<FmapYLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<PoolXLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[14]);
  kaldi::WriteToken(a2, a3, "<PoolYLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[15]);
  kaldi::WriteToken(a2, a3, "<PoolXStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[16]);
  kaldi::WriteToken(a2, a3, "<PoolYStep>");
  v6 = a1[17];

  return kaldi::WriteBasicType<int>(a2, a3, v6);
}

uint64_t kaldi::nnet1::AveragePooling2DComponent::PropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[12];
  v5 = a1[13];
  v7 = (a1[2] / (v5 * v6));
  v28 = a1[15];
  v29 = a1[14];
  v9 = a1[16];
  v8 = a1[17];
  kaldi::CuMatrixBase<float>::SetZero(a3);
  if (v7 >= 1)
  {
    v10 = 0;
    v32 = (v6 - v29) / v9;
    v30 = (v5 - v28) / v8;
    v38 = (v32 + 1);
    v33 = (v30 + 1);
    for (i = 0; i != v7; ++i)
    {
      v31 = v10;
      if ((v30 & 0x80000000) == 0)
      {
        v35 = 0;
        do
        {
          if ((v32 & 0x80000000) == 0)
          {
            v11 = 0;
            v37 = (v35 + i * v33) * v38;
            do
            {
              v39 = v11;
              v12 = *(a3 + 8) + 4 * (v11 + v37);
              v13 = *(a3 + 28) - (v11 + v37);
              v14 = *(a3 + 32);
              LODWORD(v41[2]) = 1;
              *(&v41[2] + 4) = *(a3 + 20);
              HIDWORD(v41[3]) = v13;
              v41[4] = v14;
              v41[0] = &unk_1F2CFA908;
              v41[1] = v12;
              v15 = a1[15];
              if (v15 >= 1)
              {
                v16 = 0;
                v17 = 0;
                v18 = a1[14];
                v19 = a1[12] * (v35 * a1[17] + i * a1[13]) + a1[16] * v39;
                do
                {
                  if (v18 >= 1)
                  {
                    v20 = 0;
                    v21 = -v19;
                    do
                    {
                      v22 = a1[12];
                      v23 = *(a2 + 8) + 4 * (v19 + v20 + v17 * v22);
                      v24 = v21 + *(a2 + 28) + v16 * v22;
                      v25 = *(a2 + 32);
                      LODWORD(v40[2]) = 1;
                      *(&v40[2] + 4) = *(a2 + 20);
                      HIDWORD(v40[3]) = v24;
                      v40[4] = v25;
                      v40[0] = &unk_1F2CFA908;
                      v40[1] = v23;
                      kaldi::CuMatrixBase<float>::AddMat(v41, v40, 111, 1.0, 1.0);
                      v40[0] = &unk_1F2CFA908;
                      memset(&v40[1], 0, 32);
                      quasar::Bitmap::~Bitmap(v40);
                      ++v20;
                      v18 = a1[14];
                      --v21;
                    }

                    while (v20 < v18);
                    v15 = a1[15];
                  }

                  ++v17;
                  --v16;
                }

                while (v17 < v15);
              }

              v41[0] = &unk_1F2CFA908;
              memset(&v41[1], 0, 32);
              quasar::Bitmap::~Bitmap(v41);
              v11 = v39 + 1;
            }

            while (v39 + 1 != v38);
          }

          ++v35;
        }

        while (v35 != v33);
      }

      v10 = v31 + v33 * v38;
    }
  }

  v26 = 1.0 / (v28 * v29);
  return kaldi::CuMatrixBase<float>::Scale(a3, v26);
}

void sub_1B54D3D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  *(v17 - 128) = a13;
  v19 = v17 - 128;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v17 - 128));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AveragePooling2DComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[12];
  v7 = a1[13];
  v9 = (a1[2] / (v7 * v8));
  v11 = a1[14];
  v10 = a1[15];
  v13 = a1[16];
  v12 = a1[17];
  kaldi::CuMatrixBase<float>::SetZero(a5);
  v31 = v9;
  if (v9 >= 1)
  {
    v14 = 0;
    v34 = (v8 - v11) / v13;
    v15 = 1.0 / (v10 * v11);
    v32 = (v7 - v10) / v12;
    v40 = (v34 + 1);
    v35 = (v32 + 1);
    v36 = 0;
    do
    {
      v33 = v14;
      if ((v32 & 0x80000000) == 0)
      {
        v37 = 0;
        do
        {
          if ((v34 & 0x80000000) == 0)
          {
            v16 = 0;
            v39 = (v37 + v36 * v35) * v40;
            do
            {
              v41 = v16;
              v17 = *(a4 + 8) + 4 * (v16 + v39);
              v18 = *(a4 + 28) - (v16 + v39);
              v19 = *(a4 + 32);
              LODWORD(v43[2]) = 1;
              *(&v43[2] + 4) = *(a4 + 20);
              HIDWORD(v43[3]) = v18;
              v43[4] = v19;
              v43[0] = &unk_1F2CFA908;
              v43[1] = v17;
              v20 = a1[15];
              if (v20 >= 1)
              {
                v21 = 0;
                v22 = 0;
                v23 = a1[14];
                v24 = a1[12] * (v37 * a1[17] + v36 * a1[13]) + a1[16] * v41;
                do
                {
                  if (v23 >= 1)
                  {
                    v25 = 0;
                    v26 = -v24;
                    do
                    {
                      v27 = a1[12];
                      v28 = *(a5 + 8) + 4 * (v24 + v25 + v22 * v27);
                      v29 = v26 + *(a5 + 28) + v21 * v27;
                      v30 = *(a5 + 32);
                      LODWORD(v42[2]) = 1;
                      *(&v42[2] + 4) = *(a5 + 20);
                      HIDWORD(v42[3]) = v29;
                      v42[4] = v30;
                      v42[0] = &unk_1F2CFA908;
                      v42[1] = v28;
                      kaldi::CuMatrixBase<float>::AddMat(v42, v43, 111, v15, 1.0);
                      v42[0] = &unk_1F2CFA908;
                      memset(&v42[1], 0, 32);
                      quasar::Bitmap::~Bitmap(v42);
                      ++v25;
                      v23 = a1[14];
                      --v26;
                    }

                    while (v25 < v23);
                    v20 = a1[15];
                  }

                  ++v22;
                  --v21;
                }

                while (v22 < v20);
              }

              v43[0] = &unk_1F2CFA908;
              memset(&v43[1], 0, 32);
              quasar::Bitmap::~Bitmap(v43);
              v16 = v41 + 1;
            }

            while (v41 + 1 != v40);
          }

          ++v37;
        }

        while (v37 != v35);
      }

      v14 = v33 + v35 * v40;
      ++v36;
    }

    while (v36 != v31);
  }
}

void sub_1B54D4020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  *(v17 - 144) = a13;
  v19 = v17 - 144;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v17 - 144));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AveragePooling2DComponent::ReadData(_DWORD *a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<FmapXLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 12));
  kaldi::ExpectToken(a2, a3, "<FmapYLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 13));
  kaldi::ExpectToken(a2, a3, "<PoolXLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 14));
  kaldi::ExpectToken(a2, a3, "<PoolYLen>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 15));
  kaldi::ExpectToken(a2, a3, "<PoolXStep>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 16));
  kaldi::ExpectToken(a2, a3, "<PoolYStep>");
  kaldi::ReadBasicType<int>(a2, a3, (a1 + 17));
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    v6 = a1[2];
    v8 = a1[12];
    v7 = a1[13];
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "num_fmaps ", 10);
    MEMORY[0x1B8C84C00](v9, (v6 / (v7 * v8)));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v10);
  }
}

void kaldi::nnet1::MaxPooling2DComponent::InitData(_DWORD *a1, uint64_t *a2)
{
  v35 = 0uLL;
  v36 = 0;
  v4 = a2 + 4;
  v5 = a1 + 17;
  v6 = a1 + 16;
  v32 = a1 + 15;
  v33 = a1 + 14;
  v7 = a1 + 13;
  v8 = a1 + 12;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_70;
    }

    kaldi::ReadToken(a2, 0, &v35);
    if (SHIBYTE(v36) < 0)
    {
      break;
    }

    if (HIBYTE(v36) == 10)
    {
      v16 = v35 == 0x654C5870616D463CLL && WORD4(v35) == 15982;
      v10 = v8;
      if (!v16)
      {
        v17 = v35 == 0x654C5970616D463CLL && WORD4(v35) == 15982;
        v10 = v7;
        if (!v17)
        {
          v18 = v35 == 0x654C586C6F6F503CLL && WORD4(v35) == 15982;
          v10 = v33;
          if (!v18)
          {
            v19 = v35 == 0x654C596C6F6F503CLL && WORD4(v35) == 15982;
            v10 = v32;
            if (!v19)
            {
              goto LABEL_75;
            }
          }
        }
      }

      goto LABEL_59;
    }

    if (HIBYTE(v36) != 11)
    {
      if (HIBYTE(v36) == 12)
      {
        v11 = &v35;
        goto LABEL_65;
      }

      goto LABEL_75;
    }

    v9 = v35 == 0x7453586C6F6F503CLL && *(&v35 + 3) == 0x3E70657453586C6FLL;
    v10 = v6;
    if (!v9)
    {
      v11 = &v35;
LABEL_54:
      v21 = *v11;
      v22 = *(v11 + 3);
      v23 = v21 == 0x7453596C6F6F503CLL && v22 == 0x3E70657453596C6FLL;
      v10 = v5;
      if (!v23)
      {
        if (v36 < 0)
        {
LABEL_63:
          if (*(&v35 + 1) == 12)
          {
            v11 = v35;
            goto LABEL_65;
          }
        }

        goto LABEL_75;
      }
    }

LABEL_59:
    kaldi::ReadBasicType<int>(a2, 0, v10);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (*(&v35 + 1) == 10)
  {
    v12 = *v35 == 0x654C5870616D463CLL && *(v35 + 8) == 15982;
    v10 = v8;
    if (v12)
    {
      goto LABEL_59;
    }

    v13 = *v35 == 0x654C5970616D463CLL && *(v35 + 8) == 15982;
    v10 = v7;
    if (v13)
    {
      goto LABEL_59;
    }

    v14 = *v35 == 0x654C586C6F6F503CLL && *(v35 + 8) == 15982;
    v10 = v33;
    if (v14)
    {
      goto LABEL_59;
    }

    v15 = *v35 == 0x654C596C6F6F503CLL && *(v35 + 8) == 15982;
    v10 = v32;
    if (v15)
    {
      goto LABEL_59;
    }
  }

  if (*(&v35 + 1) != 11)
  {
    goto LABEL_63;
  }

  v11 = v35;
  v20 = *v35 == 0x7453586C6F6F503CLL && *(v35 + 3) == 0x3E70657453586C6FLL;
  v10 = v6;
  if (v20)
  {
    goto LABEL_59;
  }

  if (v36 < 0)
  {
    goto LABEL_54;
  }

  v11 = &v35;
  if (HIBYTE(v36) == 11)
  {
    goto LABEL_54;
  }

  if (HIBYTE(v36) != 12)
  {
    goto LABEL_75;
  }

LABEL_65:
  v24 = *v11;
  v25 = *(v11 + 2);
  if (v24 != 0x6E6F706D6F432F3CLL || v25 != 1047817829)
  {
LABEL_75:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v34);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unknown token ", 14);
    if (v36 >= 0)
    {
      v28 = &v35;
    }

    else
    {
      v28 = v35;
    }

    if (v36 >= 0)
    {
      v29 = HIBYTE(v36);
    }

    else
    {
      v29 = *(&v35 + 1);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " (FmapXLen|FmapYLen|PoolXLen|PoolYLen|PoolXStep|PoolYStep)", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

LABEL_70:
  if (a1[2] % (a1[13] * a1[12]))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Invalid component parameters", 28);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }
}

void sub_1B54D4658(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MaxPooling2DComponent::WriteData(unsigned int *a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<FmapXLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<FmapYLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<PoolXLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[14]);
  kaldi::WriteToken(a2, a3, "<PoolYLen>");
  kaldi::WriteBasicType<int>(a2, a3, a1[15]);
  kaldi::WriteToken(a2, a3, "<PoolXStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[16]);
  kaldi::WriteToken(a2, a3, "<PoolYStep>");
  v6 = a1[17];

  return kaldi::WriteBasicType<int>(a2, a3, v6);
}

void kaldi::nnet1::MaxPooling2DComponent::PropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, int16x4_t a4)
{
  v7 = a1[12];
  v6 = a1[13];
  v8 = (a1[2] / (v6 * v7));
  v10 = a1[14];
  v9 = a1[15];
  v12 = a1[16];
  v11 = a1[17];
  a4.i32[0] = -525502228;
  kaldi::CuMatrixBase<float>::Set(a3, a4);
  v29 = v8;
  if (v8 >= 1)
  {
    v13 = 0;
    v32 = (v7 - v10) / v12;
    v30 = (v6 - v9) / v11;
    v38 = (v32 + 1);
    v33 = (v30 + 1);
    v34 = 0;
    do
    {
      v31 = v13;
      if ((v30 & 0x80000000) == 0)
      {
        v35 = 0;
        do
        {
          if ((v32 & 0x80000000) == 0)
          {
            v14 = 0;
            v37 = (v35 + v34 * v33) * v38;
            do
            {
              v39 = v14;
              v15 = *(a3 + 8) + 4 * (v14 + v37);
              v16 = *(a3 + 28) - (v14 + v37);
              v17 = *(a3 + 32);
              LODWORD(v41[2]) = 1;
              *(&v41[2] + 4) = *(a3 + 20);
              HIDWORD(v41[3]) = v16;
              v41[4] = v17;
              v41[0] = &unk_1F2CFA908;
              v41[1] = v15;
              v18 = a1[15];
              if (v18 >= 1)
              {
                v19 = 0;
                v20 = 0;
                v21 = a1[14];
                v22 = a1[12] * (v35 * a1[17] + v34 * a1[13]) + a1[16] * v39;
                do
                {
                  if (v21 >= 1)
                  {
                    v23 = 0;
                    v24 = -v22;
                    do
                    {
                      v25 = a1[12];
                      v26 = *(a2 + 8) + 4 * (v22 + v23 + v20 * v25);
                      v27 = v24 + *(a2 + 28) + v19 * v25;
                      v28 = *(a2 + 32);
                      LODWORD(v40[2]) = 1;
                      *(&v40[2] + 4) = *(a2 + 20);
                      HIDWORD(v40[3]) = v27;
                      v40[4] = v28;
                      v40[0] = &unk_1F2CFA908;
                      v40[1] = v26;
                      kaldi::CuMatrixBase<float>::Max(v41, v40);
                      v40[0] = &unk_1F2CFA908;
                      memset(&v40[1], 0, 32);
                      quasar::Bitmap::~Bitmap(v40);
                      ++v23;
                      v21 = a1[14];
                      --v24;
                    }

                    while (v23 < v21);
                    v18 = a1[15];
                  }

                  ++v20;
                  --v19;
                }

                while (v20 < v18);
              }

              v41[0] = &unk_1F2CFA908;
              memset(&v41[1], 0, 32);
              quasar::Bitmap::~Bitmap(v41);
              v14 = v39 + 1;
            }

            while (v39 + 1 != v38);
          }

          ++v35;
        }

        while (v35 != v33);
      }

      v13 = v31 + v33 * v38;
      ++v34;
    }

    while (v34 != v29);
  }
}

void sub_1B54D4A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  *(v17 - 128) = a13;
  v19 = v17 - 128;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v17 - 128));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MaxPooling2DComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[12];
  v8 = a1[13];
  v10 = (a1[2] / (v8 * v9));
  v12 = a1[14];
  v11 = a1[15];
  v14 = a1[16];
  v13 = a1[17];
  kaldi::CuMatrixBase<float>::SetZero(a5);
  if (v10 >= 1)
  {
    v15 = a1;
    v16 = 0;
    v41 = (v9 - v12) / v14;
    v39 = (v8 - v11) / v13;
    v48 = (v41 + 1);
    v42 = (v39 + 1);
    v43 = 0;
    v17 = 0uLL;
    do
    {
      v40 = v16;
      if ((v39 & 0x80000000) == 0)
      {
        v44 = 0;
        do
        {
          if ((v41 & 0x80000000) == 0)
          {
            v18 = 0;
            v47 = (v44 + v43 * v42) * v48;
            do
            {
              v49 = v18;
              v19 = v18 + v47;
              v20 = *(a3 + 8) + 4 * (v18 + v47);
              v21 = *(a3 + 28) - (v18 + v47);
              v22 = *(a3 + 32);
              *(&v60[2] + 4) = *(a3 + 20);
              LODWORD(v60[2]) = 1;
              HIDWORD(v60[3]) = v21;
              v60[4] = v22;
              v60[0] = &unk_1F2CFA908;
              v60[1] = v20;
              v23 = *(a4 + 8) + 4 * v19;
              LODWORD(v19) = *(a4 + 28) - v19;
              v24 = *(a4 + 32);
              *&v59[12] = *(a4 + 20);
              *&v59[8] = 1;
              *&v59[20] = v19;
              *&v59[24] = v24;
              v58 = &unk_1F2CFA908;
              *v59 = v23;
              v25 = v15[15];
              if (v25 >= 1)
              {
                v51 = 0;
                v26 = v15[14];
                v50 = v15[12] * (v44 * v15[17] + v43 * v15[13]) + v15[16] * v49;
                do
                {
                  if (v26 >= 1)
                  {
                    v27 = 0;
                    v28 = -v50;
                    do
                    {
                      v29 = v15[12];
                      v30 = v50 + v27 + v51 * v29;
                      v31 = *(a2 + 8) + 4 * v30;
                      v32 = *(a2 + 32);
                      v33 = HIDWORD(v51) * v29;
                      v34 = v28 + *(a2 + 28) + v33;
                      LODWORD(v57[2]) = 1;
                      *(&v57[2] + 4) = *(a2 + 20);
                      HIDWORD(v57[3]) = v34;
                      v57[4] = v32;
                      v57[0] = &unk_1F2CFA908;
                      v57[1] = v31;
                      v35 = *(a5 + 8) + 4 * v30;
                      v36 = v28 + *(a5 + 28) + v33;
                      v37 = *(a5 + 32);
                      LODWORD(v56[2]) = 1;
                      *(&v56[2] + 4) = *(a5 + 20);
                      HIDWORD(v56[3]) = v36;
                      v56[4] = v37;
                      v56[0] = &unk_1F2CFA908;
                      v56[1] = v35;
                      v54 = v17;
                      v53 = v17;
                      v52 = &unk_1F2D0EE38;
                      v55 = 0;
                      kaldi::CuMatrixBase<float>::EqualElementMask(v57, v60, &v52);
                      kaldi::CuMatrixBase<float>::MulElements(&v52, &v58);
                      kaldi::CuMatrixBase<float>::AddMat(v56, &v52, 111, 1.0, 1.0);
                      kaldi::CuMatrix<float>::~CuMatrix(&v52);
                      v56[0] = &unk_1F2CFA908;
                      memset(&v56[1], 0, 32);
                      quasar::Bitmap::~Bitmap(v56);
                      v57[0] = &unk_1F2CFA908;
                      memset(&v57[1], 0, 32);
                      quasar::Bitmap::~Bitmap(v57);
                      v17 = 0uLL;
                      ++v27;
                      v15 = a1;
                      v26 = a1[14];
                      --v28;
                    }

                    while (v27 < v26);
                    v25 = a1[15];
                  }

                  v38 = v51 + 1;
                  v51 = __PAIR64__(HIDWORD(v51), v51 + 1) - 0x100000000;
                }

                while (v38 < v25);
              }

              v58 = &unk_1F2CFA908;
              *v59 = v17;
              *&v59[16] = v17;
              quasar::Bitmap::~Bitmap(&v58);
              v60[0] = &unk_1F2CFA908;
              memset(&v60[1], 0, 32);
              quasar::Bitmap::~Bitmap(v60);
              v17 = 0uLL;
              v15 = a1;
              v18 = v49 + 1;
            }

            while (v49 + 1 != v48);
          }

          ++v44;
        }

        while (v44 != v42);
      }

      v16 = v40 + v42 * v48;
      ++v43;
    }

    while (v43 != v10);
  }
}

void sub_1B54D4ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35, __int128 a36)
{
  kaldi::CuMatrix<float>::~CuMatrix(&a28);
  a35 = 0u;
  a36 = 0u;
  quasar::Bitmap::~Bitmap(&a34);
  *(v37 - 208) = v36;
  v39 = v37 - 208;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v37 - 208));
  *(v37 - 168) = a23;
  v40 = v37 - 168;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v37 - 168));
  *(v37 - 128) = a24;
  v41 = v37 - 128;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v37 - 128));
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MaxPooling2DComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<FmapXLen>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 48);
  kaldi::ExpectToken(a2, a3, "<FmapYLen>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 52);
  kaldi::ExpectToken(a2, a3, "<PoolXLen>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 56);
  kaldi::ExpectToken(a2, a3, "<PoolYLen>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 60);
  kaldi::ExpectToken(a2, a3, "<PoolXStep>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 64);
  kaldi::ExpectToken(a2, a3, "<PoolYStep>");

  return kaldi::ReadBasicType<int>(a2, a3, a1 + 68);
}

void kaldi::nnet1::Desplice::InitData(kaldi::nnet1::Desplice *a1, uint64_t *a2)
{
  v27 = 0uLL;
  v28 = 0;
  v3 = a2 + 4;
  v4 = a1 + 56;
  v5 = a1 + 52;
  v6 = a1 + 48;
  while (1)
  {
    if ((*(v3 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_47;
    }

    kaldi::ReadToken(a2, 0, &v27);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      switch(HIBYTE(v28))
      {
        case 0xBu:
          v15 = v27 == 0x69727453776F523CLL && *(&v27 + 3) == 0x3E65646972745377;
          v8 = v5;
          if (!v15)
          {
            goto LABEL_50;
          }

          break;
        case 0xCu:
          v11 = &v27;
          goto LABEL_26;
        case 0xEu:
          v7 = v27 == 0x4C6563696C70533CLL && *(&v27 + 6) == 0x3E6874676E654C65;
          v8 = v6;
          if (!v7)
          {
            goto LABEL_50;
          }

          break;
        default:
          goto LABEL_50;
      }

      goto LABEL_36;
    }

    if (*(&v27 + 1) == 11)
    {
      break;
    }

    if (*(&v27 + 1) != 14)
    {
      goto LABEL_23;
    }

    v9 = *v27 == 0x4C6563696C70533CLL && *(v27 + 6) == 0x3E6874676E654C65;
    v8 = v6;
    if (!v9)
    {
      goto LABEL_23;
    }

LABEL_36:
    kaldi::ReadBasicType<int>(a2, 0, v8);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v10 = *v27 == 0x69727453776F523CLL && *(v27 + 3) == 0x3E65646972745377;
  v8 = v5;
  if (v10)
  {
    goto LABEL_36;
  }

LABEL_23:
  if (*(&v27 + 1) != 12)
  {
    goto LABEL_50;
  }

  v11 = v27;
LABEL_26:
  v12 = *v11;
  v13 = *(v11 + 2);
  v14 = v12 == 0x6E654C656D69543CLL && v13 == 1047032935;
  v8 = v4;
  if (v14)
  {
    goto LABEL_36;
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v28) == 12)
    {
      v16 = &v27;
      goto LABEL_42;
    }

    goto LABEL_50;
  }

  if (*(&v27 + 1) != 12)
  {
    goto LABEL_50;
  }

  v16 = v27;
LABEL_42:
  v17 = *v16;
  v18 = *(v16 + 2);
  if (v17 != 0x6E6F706D6F432F3CLL || v18 != 1047817829)
  {
LABEL_50:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Unknown token ", 14);
    if (v28 >= 0)
    {
      v21 = &v27;
    }

    else
    {
      v21 = v27;
    }

    if (v28 >= 0)
    {
      v22 = HIBYTE(v28);
    }

    else
    {
      v22 = *(&v27 + 1);
    }

    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " (FmapXLen|FmapYLen|PoolXLen|PoolYLen|PoolXStep|PoolYStep)", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

LABEL_47:
  kaldi::nnet1::Desplice::Init(a1);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }
}

void sub_1B54D53D8(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Desplice::WriteData(unsigned int *a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<SpliceLength>");
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<RowStride>");
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<TimeLength>");
  v6 = a1[14];

  return kaldi::WriteBasicType<int>(a2, a3, v6);
}

void kaldi::nnet1::Desplice::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 48) = 0x100000001;
  v6 = a1 + 48;
  *(a1 + 56) = 1;
  v7 = a1 + 56;
  kaldi::ExpectToken(a2, a3, "<SpliceLength>");
  kaldi::ReadBasicType<int>(a2, a3, v6);
  kaldi::ExpectToken(a2, a3, "<RowStride>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 52);
  kaldi::ExpectToken(a2, a3, "<TimeLength>");
  kaldi::ReadBasicType<int>(a2, a3, v7);

  kaldi::nnet1::Desplice::Init(a1);
}

uint64_t kaldi::nnet1::FramePoolingComponent::Info(kaldi::nnet1::FramePoolingComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n  (offset,weights) : ", 22);
  if (*(this + 16) != *(this + 15))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
      v5 = MEMORY[0x1B8C84C00](v4, *(*(this + 12) + 4 * v3));
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ",", 1);
      kaldi::VectorBase<float>::Write(*(this + 15) + v2, v6, 0);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "), ", 3);
      ++v3;
      v2 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 3) > v3);
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

void sub_1B54D5840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FramePoolingComponent::InfoGradient(kaldi::nnet1::FramePoolingComponent *this)
{
  v20 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "\n  lr-coef ", 11);
  kaldi::nnet1::ToString<float>();
  if ((v18 & 0x80u) == 0)
  {
    v3 = v17;
  }

  else
  {
    v3 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v4 = v18;
  }

  else
  {
    v4 = v17[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "\n  (offset,weights_grad) : ", 27);
  if (*(this + 19) != *(this + 18))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "(", 1);
      v8 = MEMORY[0x1B8C84C00](v7, *(*(this + 12) + 4 * v6));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ",", 1);
      kaldi::VectorBase<float>::Write(*(this + 18) + v5, &v11, 0);
      MEMORY[0x1B8C84B80](v16, &v11);
      v9 = &v11 + *(v11 - 24);
      if ((v9[32] & 5) == 0)
      {
        (*(**(v9 + 5) + 32))(v17);
        if (v19 == -1)
        {
          std::ios_base::clear((&v11 + *(v11 - 24)), *(&v13[2].__locale_ + *(v11 - 24)) | 4);
        }
      }

      MEMORY[0x1B8C84B90](v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "), ", 3);
      ++v6;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - *(this + 18)) >> 3) > v6);
  }

  std::stringbuf::str();
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v15);
}

void sub_1B54D5B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 209) < 0)
  {
    operator delete(*(v9 - 232));
  }

  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FramePoolingComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 1008981770;
  v4 = a2 + 4;
  v53 = 0uLL;
  v54 = 0;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_84;
    }

    kaldi::ReadToken(a2, 0, &v53);
    if (SHIBYTE(v54) < 0)
    {
      break;
    }

    if (HIBYTE(v54) > 0xBu)
    {
      if (HIBYTE(v54) == 12)
      {
        if (v53 != 0x657275746165463CLL || DWORD2(v53) != 1047357764)
        {
          if (v53 != 0x6965576C6F6F503CLL || DWORD2(v53) != 1047816295)
          {
            v43 = &v53;
            goto LABEL_79;
          }

LABEL_62:
          kaldi::Vector<float>::Read(&v56, a2, 0, 0);
          goto LABEL_75;
        }

LABEL_63:
        kaldi::ReadBasicType<int>(a2, 0, a1 + 88);
        goto LABEL_75;
      }

      if (HIBYTE(v54) != 15)
      {
        goto LABEL_107;
      }

      if (v53 != 0x6C6172746E65433CLL || *(&v53 + 7) != 0x3E74657366664F6CLL)
      {
        if (v53 != 0x61526E7261654C3CLL || *(&v53 + 7) != 0x3E66656F43657461)
        {
          goto LABEL_107;
        }

        goto LABEL_72;
      }

LABEL_73:
      v15 = &v59;
      goto LABEL_74;
    }

    if (HIBYTE(v54) != 10)
    {
      if (HIBYTE(v54) != 11)
      {
        goto LABEL_107;
      }

      v5 = &v53;
      goto LABEL_66;
    }

    if (v53 != 0x7A69536C6F6F503CLL || WORD4(v53) != 15973)
    {
      goto LABEL_107;
    }

LABEL_52:
    v15 = &v62;
LABEL_74:
    kaldi::ReadIntegerVector<int>(a2, 0, v15, 0, 0, 0, 0);
LABEL_75:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (*(&v53 + 1) == 12 && *v53 == 0x657275746165463CLL && *(v53 + 8) == 1047357764)
  {
    goto LABEL_63;
  }

  if (*(&v53 + 1) == 15 && *v53 == 0x6C6172746E65433CLL && *(v53 + 7) == 0x3E74657366664F6CLL)
  {
    goto LABEL_73;
  }

  if (*(&v53 + 1) != 12)
  {
    if (*(&v53 + 1) != 10)
    {
      goto LABEL_29;
    }

    if (*v53 != 0x7A69536C6F6F503CLL || *(v53 + 8) != 15973)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

  if (*v53 == 0x6965576C6F6F503CLL && *(v53 + 8) == 1047816295)
  {
    goto LABEL_62;
  }

LABEL_29:
  v10 = *(&v53 + 1);
  if (*(&v53 + 1) != 15)
  {
    goto LABEL_64;
  }

  if (*v53 == 0x61526E7261654C3CLL && *(v53 + 7) == 0x3E66656F43657461)
  {
LABEL_72:
    kaldi::ReadBasicType<float>(a2, 0, &v55);
    goto LABEL_75;
  }

  v10 = *(&v53 + 1);
LABEL_64:
  if (v10 != 11)
  {
    goto LABEL_77;
  }

  v5 = v53;
LABEL_66:
  v18 = *v5;
  v19 = *(v5 + 3);
  if (v18 == 0x696C616D726F4E3CLL && v19 == 0x3E657A696C616D72)
  {
    kaldi::ReadBasicType<BOOL>(a2, 0, (a1 + 172));
    goto LABEL_75;
  }

  if ((v54 & 0x8000000000000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_77:
  if (*(&v53 + 1) != 12)
  {
    goto LABEL_107;
  }

  v43 = v53;
LABEL_79:
  v21 = *v43;
  v22 = *(v43 + 2);
  if (v21 != 0x6E6F706D6F432F3CLL || v22 != 1047817829)
  {
LABEL_107:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Unknown token ", 14);
    if (v54 >= 0)
    {
      v45 = &v53;
    }

    else
    {
      v45 = v53;
    }

    if (v54 >= 0)
    {
      v46 = HIBYTE(v54);
    }

    else
    {
      v46 = *(&v53 + 1);
    }

    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " (FeatureDim|CentralOffset <vec>|PoolSize <vec>|LearnRateCoef|Normalize)", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v49);
  }

LABEL_84:
  v24 = *(a1 + 88);
  v25 = v60 - v59;
  v26 = *(a1 + 8);
  std::vector<int>::resize((a1 + 96), ((v60 - v59) >> 2));
  std::vector<kaldi::Vector<float>>::resize((a1 + 120), (v25 >> 2));
  v27 = v25 >> 2;
  v28 = (v25 >> 2) & 0x7FFFFFFF;
  if ((v25 >> 2) >= 1)
  {
    v29 = 0;
    v30 = 0;
    v31 = (v26 / v24 - 1) / 2 + 1;
    do
    {
      v32 = v62;
      v33 = v62[v30];
      if (v33 >= -1)
      {
        v33 = -1;
      }

      *(*(a1 + 96) + 4 * v30) = v31 + *&v59[4 * v30] + v33;
      v34 = v32[v30];
      if (v34 >= 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = -v34;
      }

      kaldi::Vector<float>::Resize((*(a1 + 120) + v29), v35, 0);
      v36 = v62[v30];
      if (v36 < 0)
      {
        v36 = -v36;
      }

      v37 = 1.0 / v36;
      *&v37 = v37;
      kaldi::VectorBase<float>::Set((*(a1 + 120) + v29), *&v37);
      ++v30;
      v29 += 24;
    }

    while (v28 != v30);
  }

  *(a1 + 168) = v55;
  if (v57)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Initializing from pool-weight vector", 36);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v49);
    }

    if (v27 >= 1)
    {
      v38 = 0;
      v39 = *(a1 + 120);
      v40 = 8;
      do
      {
        v41 = v39 + v40 - 8;
        v42 = *(v39 + v40);
        v51 = 0;
        v52 = 0;
        v49.__locale_ = (v56 + 4 * v38);
        v50 = v42;
        kaldi::VectorBase<float>::CopyFromVec(v41, &v49.__locale_);
        v39 = *(a1 + 120);
        v38 += *(v39 + v40);
        v40 += 24;
        --v28;
      }

      while (v28);
    }
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  kaldi::Vector<float>::Destroy(&v56);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }
}

void sub_1B54D6250(_Unwind_Exception *a1)
{
  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
  }

  kaldi::Vector<float>::Destroy(v1 - 184);
  kaldi::nnet1::FramePoolingComponent::InitData(v1 - 184, v1 - 160, v1 - 136);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FramePoolingComponent::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<FeatureDim>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 88));
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<Normalize>");
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 172));
  kaldi::WriteToken(a2, a3, "<FrameOffset>");
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, (*(a1 + 104) - *(a1 + 96)) >> 2, *(a1 + 96));
  kaldi::WriteToken(a2, a3, "<FrameWeight>");
  v6 = *(a1 + 104) - *(a1 + 96);
  if ((v6 >> 2) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 2) & 0x7FFFFFFF;
    do
    {
      kaldi::VectorBase<float>::Write(*(a1 + 120) + v7, a2, a3);
      v7 += 24;
      --v8;
    }

    while (v8);
  }
}

void kaldi::nnet1::FramePoolingComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104) - *(a1 + 96);
  if ((v3 >> 2) >= 1)
  {
    v7 = 0;
    v8 = (v3 >> 2) & 0x7FFFFFFF;
    do
    {
      v9 = *(a1 + 88);
      v10 = *(a3 + 8) + 4 * (v9 * v7);
      v11 = *(a3 + 28) - v9 * v7;
      v12 = *(a3 + 32);
      LODWORD(v21[2]) = v9;
      *(&v21[2] + 4) = *(a3 + 20);
      HIDWORD(v21[3]) = v11;
      v21[4] = v12;
      v21[0] = &unk_1F2CFA908;
      v21[1] = v10;
      kaldi::CuMatrixBase<float>::SetZero(v21);
      v13 = *(a1 + 120) + 24 * v7;
      if (*(v13 + 8) >= 1)
      {
        v14 = 0;
        do
        {
          v15 = *(*v13 + 4 * v14);
          v16 = (v14 + *(*(a1 + 96) + 4 * v7)) * *(a1 + 88);
          v17 = *(a2 + 8) + 4 * v16;
          v18 = *(a2 + 28) - v16;
          v19 = *(a2 + 32);
          LODWORD(v20[2]) = *(a1 + 88);
          *(&v20[2] + 4) = *(a2 + 20);
          HIDWORD(v20[3]) = v18;
          v20[4] = v19;
          v20[0] = &unk_1F2CFA908;
          v20[1] = v17;
          kaldi::CuMatrixBase<float>::AddMat(v21, v20, 111, v15, 1.0);
          v20[0] = &unk_1F2CFA908;
          memset(&v20[1], 0, 32);
          quasar::Bitmap::~Bitmap(v20);
          ++v14;
          v13 = *(a1 + 120) + 24 * v7;
        }

        while (v14 < *(v13 + 8));
      }

      v21[0] = &unk_1F2CFA908;
      memset(&v21[1], 0, 32);
      quasar::Bitmap::~Bitmap(v21);
      ++v7;
    }

    while (v7 != v8);
  }
}

void sub_1B54D6564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16)
{
  a15 = 0u;
  a16 = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FramePoolingComponent::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::FramePoolingComponent::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  kaldi::ExpectToken(a2, a3, "<FeatureDim>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 88);
  kaldi::ExpectToken(a2, a3, "<LearnRateCoef>");
  kaldi::ReadBasicType<float>(a2, a3, (a1 + 168));
  kaldi::ExpectToken(a2, a3, "<Normalize>");
  kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 172));
  kaldi::ExpectToken(a2, a3, "<FrameOffset>");
  kaldi::ReadIntegerVector<int>(a2, a3, (a1 + 96), 0, 0, 0, 0);
  kaldi::ExpectToken(a2, a3, "<FrameWeight>");
  v6 = *(a1 + 104) - *(a1 + 96);
  std::vector<kaldi::Vector<float>>::resize((a1 + 120), (v6 >> 2));
  if ((v6 >> 2) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 2) & 0x7FFFFFFF;
    do
    {
      kaldi::Vector<float>::Read(*(a1 + 120) + v7, a2, a3, 0);
      v7 += 24;
      --v8;
    }

    while (v8);
  }
}

uint64_t kaldi::nnet1::FramePoolingComponent::NumParams(kaldi::nnet1::FramePoolingComponent *this)
{
  v2 = *(this + 15);
  v1 = *(this + 16);
  result = 0;
  v4 = v1 - v2;
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (v2 + 8);
    do
    {
      v7 = *v6;
      v6 += 6;
      result = (v7 + result);
      --v5;
    }

    while (v5);
  }

  return result;
}

void kaldi::nnet1::FramePoolingComponent::GetParams(void *a1, void **a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = a1[15];
  if (a1[16] != v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 8;
    do
    {
      v9 = (v5 + v8 - 8);
      v10 = *(v5 + v8);
      v12 = 0;
      v13 = 0;
      v11 = *a2 + 4 * v7;
      LODWORD(v12) = v10;
      kaldi::VectorBase<float>::CopyFromVec(&v11, v9);
      v5 = a1[15];
      v7 += *(v5 + v8);
      ++v6;
      v8 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[16] - v5) >> 3) > v6);
  }
}

uint64_t kaldi::nnet1::FramePoolingComponent::SetParams(void *a1, void *a2)
{
  (*(*a1 + 176))(a1);
  v4 = a1[15];
  if (a1[16] != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 8;
    do
    {
      v8 = v4 + v7 - 8;
      v9 = *(v4 + v7);
      v12 = 0;
      v13 = 0;
      v11 = *a2 + 4 * v6;
      LODWORD(v12) = v9;
      kaldi::VectorBase<float>::CopyFromVec(v8, &v11);
      v4 = a1[15];
      v6 += *(v4 + v7);
      ++v5;
      v7 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[16] - v4) >> 3) > v5);
  }

  return (*(*a1 + 176))(a1);
}

float kaldi::nnet1::FramePoolingComponent::SumParams(kaldi::nnet1::FramePoolingComponent *this)
{
  v1 = *(this + 15);
  if (*(this + 16) == v1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = kaldi::VectorBase<float>::Sum(v1 + v3);
    v5 = v5 + *&v6;
    ++v4;
    v1 = *(this + 15);
    v3 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - v1) >> 3) > v4);
  return v5;
}

void kaldi::nnet1::FramePoolingComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 144);
  v7 = (a1 + 144);
  v9 = *(v7 - 5) - *(v7 - 6);
  if (0xAAAAAAAAAAAAAAABLL * ((v7[1] - v8) >> 3) != (v9 >> 2))
  {
    std::vector<kaldi::Vector<float>>::resize(v7, (v9 >> 2));
  }

  if ((v9 >> 2) >= 1)
  {
    v10 = 0;
    v11 = (v9 >> 2) & 0x7FFFFFFF;
    v12 = *(a1 + 120);
    v23 = v11;
    do
    {
      kaldi::Vector<float>::Resize((*(a1 + 144) + 24 * v10), *(v12 + 24 * v10 + 8), 0);
      v12 = *(a1 + 120);
      if (*(v12 + 24 * v10 + 8) >= 1)
      {
        v13 = 0;
        do
        {
          v14 = *(a1 + 88);
          v15 = (v13 + *(*(a1 + 96) + 4 * v10)) * v14;
          v16 = *(a2 + 8) + 4 * v15;
          v17 = *(a2 + 28) - v15;
          LODWORD(v27[2]) = v14;
          *(&v27[2] + 4) = *(a2 + 20);
          HIDWORD(v27[3]) = v17;
          v27[0] = &unk_1F2CFA908;
          v27[1] = v16;
          v18 = *(a3 + 8) + 4 * (v14 * v10);
          v19 = *(a3 + 28);
          LODWORD(v26[2]) = v14;
          *(&v26[2] + 4) = *(a3 + 20);
          HIDWORD(v26[3]) = v19 - v14 * v10;
          v26[0] = &unk_1F2CFA908;
          v26[1] = v18;
          v27[4] = a4;
          v26[4] = a4;
          kaldi::CuMatrix<float>::CuMatrix(v25, v27, 111);
          kaldi::CuMatrixBase<float>::MulElements(v25, v26);
          *(*(*(a1 + 144) + 24 * v10) + 4 * v13) = kaldi::CuMatrixBase<float>::Sum(v25);
          kaldi::CuMatrix<float>::~CuMatrix(v25);
          v26[0] = &unk_1F2CFA908;
          memset(&v26[1], 0, 32);
          quasar::Bitmap::~Bitmap(v26);
          v27[0] = &unk_1F2CFA908;
          memset(&v27[1], 0, 32);
          quasar::Bitmap::~Bitmap(v27);
          ++v13;
          v12 = *(a1 + 120);
        }

        while (v13 < *(v12 + 24 * v10 + 8));
        v11 = v23;
      }

      ++v10;
    }

    while (v10 != v11);
    v20 = 0;
    v21 = v11;
    do
    {
      kaldi::VectorBase<float>::AddVec<float>();
      v20 += 24;
      --v21;
    }

    while (v21);
    if (*(a1 + 172) == 1)
    {
      v22 = 0;
      do
      {
        kaldi::VectorBase<float>::ApplyFloor(*(a1 + 120) + v22, 0.0);
        kaldi::VectorBase<float>::Sum(*(a1 + 120) + v22);
        kaldi::VectorBase<float>::Scale();
        v22 += 24;
        --v11;
      }

      while (v11);
    }
  }
}

void sub_1B54D6C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, __int128 a22, __int128 a23)
{
  a19 = 0u;
  a20 = 0u;
  quasar::Bitmap::~Bitmap(&a18);
  a22 = 0u;
  a23 = 0u;
  quasar::Bitmap::~Bitmap(&a21);
  _Unwind_Resume(a1);
}

__n128 kaldi::nnet1::FramePoolingComponent::SetTrainOptions(kaldi::nnet1::FramePoolingComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  if (*(a2 + 8) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "the multi subbatch version for this class is not implemented yet");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  result = *(a2 + 8);
  *(this + 71) = *(a2 + 23);
  *(this + 56) = result;
  return result;
}

void kaldi::nnet1::InterpolationComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = (a1 + 48);
  *(a1 + 56) = *(a1 + 48);
  kaldi::ExpectToken(a2, 0, "<NumComponents>");
  kaldi::ReadBasicType<int>(a2, 0, &v8);
  if (v8 < 1 || (v5 = *(a1 + 8), v5 % v8))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "The input dimension is not divisible by the number of components");
    goto LABEL_9;
  }

  if (v5 / v8 != *(a1 + 12))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "The output dimension does not match the dimension of individual component");
LABEL_9:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  v6 = 0;
  do
  {
    kaldi::ExpectToken(a2, 0, "<ComponentWeight>");
    kaldi::ReadBasicType<float>(a2, 0, &v8 + 1);
    std::vector<float>::push_back[abi:ne200100](v4, &v8 + 1);
    ++v6;
  }

  while (v6 < v8);
  kaldi::ExpectToken(a2, 0, "</InterpolationComponent>");
}

void *kaldi::nnet1::InterpolationComponent::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<NumComponents>");
  kaldi::WriteBasicType<int>(a2, a3, (*(a1 + 56) - *(a1 + 48)) >> 2);
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v6 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v12);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a1 + 56) != *(a1 + 48))
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E5318];
    do
    {
      kaldi::WriteToken(a2, a3, "<ComponentWeight>");
      kaldi::WriteBasicType<float>(a2, a3);
      if ((a3 & 1) == 0)
      {
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v9 = std::locale::use_facet(&v12, v8);
        (v9->__vftable[2].~facet_0)(v9, 10);
        std::locale::~locale(&v12);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v7;
    }

    while (v7 < (*(a1 + 56) - *(a1 + 48)) >> 2);
  }

  result = kaldi::WriteToken(a2, a3, "</InterpolationComponent>");
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v11 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v12);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

void kaldi::nnet1::InterpolationComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56) - v3;
  if (v4)
  {
    v8 = 0;
    v9 = *(a1 + 8) / (v4 >> 2);
    do
    {
      v10 = *(a2 + 8) + 4 * v8 * v9;
      v11 = *(a2 + 28) - v8 * v9;
      v12 = *(a2 + 32);
      LODWORD(v14[2]) = v9;
      *(&v14[2] + 4) = *(a2 + 20);
      HIDWORD(v14[3]) = v11;
      v14[4] = v12;
      v14[0] = &unk_1F2CFA908;
      v14[1] = v10;
      if (v8)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      kaldi::CuMatrixBase<float>::AddMat(a3, v14, 111, *(v3 + 4 * v8), v13);
      v14[0] = &unk_1F2CFA908;
      memset(&v14[1], 0, 32);
      quasar::Bitmap::~Bitmap(v14);
      ++v8;
      v3 = *(a1 + 48);
    }

    while (v8 < (*(a1 + 56) - v3) >> 2);
  }
}

void sub_1B54D72B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::InterpolationComponent::PropagateFnc(uint64_t result, double a2)
{
  v2 = *(result + 48);
  if (*(result + 56) != v2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = v4 + 1;
      if (v4)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      LODWORD(a2) = *(v2 + 4 * v4);
      result = kaldi::CuVectorBase<float>::AddVec(a2, v6);
      v2 = *(v3 + 48);
      v4 = v5;
    }

    while (v5 < (*(v3 + 56) - v2) >> 2);
  }

  return result;
}

void kaldi::nnet1::InterpolationComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56) - v5;
  if (v6)
  {
    v10 = 0;
    v11 = *(a1 + 8) / (v6 >> 2);
    v12 = *(a4 + 32);
    do
    {
      v13 = *(a5 + 8) + 4 * v10 * v11;
      v14 = *(a5 + 28);
      LODWORD(v15[2]) = v11;
      *(&v15[2] + 4) = *(a5 + 20);
      HIDWORD(v15[3]) = v14 - v10 * v11;
      v15[0] = &unk_1F2CFA908;
      v15[1] = v13;
      v15[4] = v12;
      kaldi::CuMatrixBase<float>::AddMat(v15, a4, 111, *(v5 + 4 * v10), 0.0);
      v15[0] = &unk_1F2CFA908;
      memset(&v15[1], 0, 32);
      quasar::Bitmap::~Bitmap(v15);
      ++v10;
      v5 = *(a1 + 48);
    }

    while (v10 < (*(a1 + 56) - v5) >> 2);
  }
}

void sub_1B54D74C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::InterpolationComponent::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a4 + 24);
  v11 = *(a4 + 16);
  v20[2] = 0;
  v21 = 0;
  v20[0] = &unk_1F2D3AC18;
  v20[1] = 0;
  kaldi::CuVector<float>::Resize(v20, v11, 0);
  v21 = v10;
  if (*(a1 + 56) != *(a1 + 48))
  {
    v12 = 0;
    v13 = (v7 / ((v8 - v9) >> 2));
    do
    {
      v14 = a3 + v12 * v13;
      v15 = *(a2 + 8) + 4 * v14;
      LODWORD(v14) = *(a2 + 28) - v14;
      LODWORD(v19[2]) = 1;
      *(&v19[2] + 4) = *(a2 + 20);
      HIDWORD(v19[3]) = v14;
      v19[0] = &unk_1F2CFA908;
      v19[1] = v15;
      v19[4] = v10;
      kaldi::CuVectorBase<float>::CopyRowsFromMat(v20, v19);
      if (v12)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      LODWORD(v16) = *(*(a1 + 48) + 4 * v12);
      kaldi::CuVectorBase<float>::AddVec(v16, v17);
      v19[0] = &unk_1F2CFA908;
      memset(&v19[1], 0, 32);
      quasar::Bitmap::~Bitmap(v19);
      ++v12;
    }

    while (v12 < (*(a1 + 56) - *(a1 + 48)) >> 2);
  }

  return kaldi::CuVector<float>::~CuVector(v20);
}

void sub_1B54D7664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  kaldi::CuVector<float>::~CuVector(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::InterpolationComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v10 = 0;
  v6 = (a1 + 48);
  *(a1 + 56) = *(a1 + 48);
  kaldi::ExpectToken(a2, a3, "<NumComponents>");
  kaldi::ReadBasicType<int>(a2, a3, &v10);
  if (v10 < 1 || (v7 = *(a1 + 8), v7 % v10))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "The input dimension is not divisible by the number of components");
    goto LABEL_9;
  }

  if (v7 / v10 != *(a1 + 12))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "The output dimension does not match the dimension of individual component");
LABEL_9:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v8 = 0;
  do
  {
    kaldi::ExpectToken(a2, a3, "<ComponentWeight>");
    kaldi::ReadBasicType<float>(a2, a3, &v10 + 1);
    std::vector<float>::push_back[abi:ne200100](v6, &v10 + 1);
    ++v8;
  }

  while (v8 < v10);
  kaldi::ExpectToken(a2, a3, "</InterpolationComponent>");
}

char **kaldi::nnet1::InterpolationComponent::SetComponentWeights(uint64_t a1, char **a2)
{
  result = (a1 + 48);
  if (result != a2)
  {
    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

uint64_t kaldi::nnet1::ParallelComponent::HistoryStateSize(kaldi::nnet1::ParallelComponent *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 == v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v3 = kaldi::nnet1::Nnet::HistoryStateSize(v1) + v3;
    v1 = (v1 + 376);
  }

  while (v1 != v2);
  return v3;
}

uint64_t kaldi::nnet1::ParallelComponent::ResetHistoryState(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 184);
  for (i = *(result + 192); v4 != i; v4 += 376)
  {
    result = kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v4, a2, a3, a4);
  }

  return result;
}

uint64_t kaldi::nnet1::ParallelComponent::ResetHistoryState(uint64_t this)
{
  v1 = *(this + 184);
  v2 = *(this + 192);
  while (v1 != v2)
  {
    this = kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v1);
    v1 += 376;
  }

  return this;
}

void kaldi::nnet1::ParallelComponent::GetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 96);
  v7 = (*(*a1 + 16))(a1);
  kaldi::CuMatrix<float>::Resize(a2, v6, v7, 1, 0);
  v8 = *(a1 + 184);
  v9 = *(a1 + 192);
  if (v8 != v9)
  {
    v10 = 0;
    do
    {
      kaldi::nnet1::Nnet::GetHistoricalComponents(v8, &v17);
      v11 = v17;
      v12 = v18;
      if (v17)
      {
        *&v18 = v17;
        operator delete(v17);
      }

      if (v11 != v12)
      {
        v19 = 0u;
        v18 = 0u;
        v17 = &unk_1F2D0EE38;
        v20 = 0;
        kaldi::nnet1::Nnet::GetHistoryState(v8, &v17, a3);
        v13 = *(a2 + 8) + 4 * v10;
        v14 = *(a2 + 28) - v10;
        v15 = *(a2 + 32);
        LODWORD(v16[2]) = DWORD2(v18);
        *(&v16[2] + 4) = *(a2 + 20);
        HIDWORD(v16[3]) = v14;
        v16[4] = v15;
        v16[0] = &unk_1F2CFA908;
        v16[1] = v13;
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(v16, &v17, 111);
        v16[0] = &unk_1F2CFA908;
        memset(&v16[1], 0, 32);
        quasar::Bitmap::~Bitmap(v16);
        v10 += DWORD2(v18);
        kaldi::CuMatrix<float>::~CuMatrix(&v17);
      }

      v8 = (v8 + 376);
    }

    while (v8 != v9);
  }
}

void sub_1B54D7A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ParallelComponent::GetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  kaldi::CuVector<float>::Resize(a2, v8, 1);
  v9 = a1[23];
  v10 = a1[24];
  if (v9 != v10)
  {
    v11 = 0;
    do
    {
      kaldi::nnet1::Nnet::GetHistoricalComponents(v9, &v16);
      v12 = v16;
      v13 = v17;
      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      if (v12 != v13)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v16 = &unk_1F2D3AC18;
        kaldi::nnet1::Nnet::GetHistoryState(v9, &v16, a3, a4);
        v14 = *(a2 + 8) + 4 * v11;
        v15[0] = &unk_1F2CFCA48;
        v15[1] = v14;
        v15[2] = v18;
        v15[3] = *(a2 + 24);
        kaldi::CuVectorBase<float>::CopyFromVec(v15, &v16);
        v11 += v18;
        kaldi::CuVector<float>::~CuVector(&v16);
      }

      v9 = (v9 + 376);
    }

    while (v9 != v10);
  }
}

void sub_1B54D7C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ParallelComponent::SetHistoryState(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1);
  if (*(a2 + 16) != v6)
  {
    v16 = v6;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "the ParallelComponent has history size ", 39);
    v18 = MEMORY[0x1B8C84C00](v17, v16);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " , but the input history data has dimension ", 44);
    MEMORY[0x1B8C84C00](v19, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v7 = a1[23];
  v8 = a1[24];
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      kaldi::nnet1::Nnet::GetHistoricalComponents(v7, v20);
      v10 = v20[0];
      v11 = v20[1];
      if (v20[0])
      {
        v20[1] = v20[0];
        operator delete(v20[0]);
      }

      if (v10 != v11)
      {
        v12 = kaldi::nnet1::Nnet::HistoryStateSize(v7);
        v13 = (*(a2 + 8) + 4 * v9);
        v14 = *(a2 + 28) - v9;
        v15 = *(a2 + 32);
        LODWORD(v20[2]) = v12;
        *(&v20[2] + 4) = *(a2 + 20);
        HIDWORD(v20[3]) = v14;
        v20[4] = v15;
        v20[0] = &unk_1F2CFA908;
        v20[1] = v13;
        kaldi::nnet1::Nnet::SetHistoryState(v7, v20, a3);
        v9 += v12;
        v20[0] = &unk_1F2CFA908;
        memset(&v20[1], 0, 32);
        quasar::Bitmap::~Bitmap(v20);
      }

      v7 = (v7 + 376);
    }

    while (v7 != v8);
  }
}

void sub_1B54D7DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ParallelComponent::SetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  if (*(a2 + 16) != v8)
  {
    v17 = v8;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "the network has history size ", 29);
    v19 = MEMORY[0x1B8C84C00](v18, v17);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " , but the input history data has dimension ", 44);
    MEMORY[0x1B8C84C00](v20, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v21);
  }

  v9 = a1[23];
  v10 = a1[24];
  if (v9 != v10)
  {
    v11 = 0;
    do
    {
      kaldi::nnet1::Nnet::GetHistoricalComponents(v9, &v21);
      v12 = v21;
      v13 = v22;
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v12 != v13)
      {
        v14 = kaldi::nnet1::Nnet::HistoryStateSize(v9);
        v15 = v14 + v11;
        v16 = *(a2 + 8) + 4 * v11;
        v21 = &unk_1F2CFCA48;
        v22 = v16;
        v23 = v14;
        v24 = *(a2 + 24);
        kaldi::nnet1::Nnet::SetHistoryState(v9, &v21, a3, a4);
        v11 = v15;
      }

      v9 = (v9 + 376);
    }

    while (v9 != v10);
  }
}

void kaldi::nnet1::ParallelComponent::SetHistoryOptions(kaldi::nnet1::ParallelComponent *this, const kaldi::nnet1::HistoryOptions *a2)
{
  v4 = (*(*this + 120))(this);
  if (v5)
  {
    v6 = *(v5 + 8);
    *&v11[15] = *(v5 + 23);
    *v11 = v6;
    v10 = &unk_1F2D27A38;
    v12 = &unk_1F2D27A58;
    v7 = *(v5 + 13);
    v13 = *(a2 + 2);
    v14 = v7;
    (*(*this + 104))(this, &v10);
    *(this + 10) = *(a2 + 2);
    v9 = *(this + 23);
    v8 = *(this + 24);
    while (v9 != v8)
    {
      kaldi::nnet1::Nnet::SetHistoryOptions(v9, a2, 1);
      v9 = (v9 + 376);
    }

    kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions(&v10);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v10);
  }
}

uint64_t kaldi::nnet1::ParallelComponent::SetInternalBoundary(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 184);
  for (i = *(result + 192); v3 != i; v3 += 376)
  {
    result = kaldi::nnet1::Nnet::SetInternalBoundary(v3, a2, a3);
  }

  return result;
}

void kaldi::nnet1::ParallelComponent::SetTrainOptions(kaldi::nnet1::ParallelComponent *this, const kaldi::nnet1::NnetTrainOptions *lpsrc)
{
  if (*(lpsrc + 8) == 1)
  {
    *(this + 178) = *(lpsrc + 38);
    {
      operator new();
    }

    operator new();
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "the multi subbatch version for this class is not implemented yet");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::nnet1::ParallelComponent::InitData(kaldi::nnet1::ParallelComponent *this, uint64_t *a2)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v4 = a2 + 4;
  v36 = 0;
  v37 = 0;
  v38 = 0;
LABEL_2:
  if ((*(v4 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v36);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      if (HIBYTE(v38) != 17)
      {
        if (HIBYTE(v38) == 20)
        {
          v5 = v36 == 0x4E64657473654E3CLL && v37 == 0x6E656C694674656ELL;
          if (v5 && v38 == 1046834529)
          {
            goto LABEL_14;
          }
        }

LABEL_79:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
        if (v38 >= 0)
        {
          v30 = &v36;
        }

        else
        {
          v30 = v36;
        }

        if (v38 >= 0)
        {
          v31 = HIBYTE(v38);
        }

        else
        {
          v31 = v37;
        }

        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", typo in config?", 17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " (NestedNnetFilename|NestedNnetProto)", 37);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      v16 = &v36;
      goto LABEL_45;
    }

    if (v37 == 17)
    {
      v16 = v36;
LABEL_45:
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v16 + 16);
      if (v17 != 0x4E64657473654E3CLL || v18 != 0x6F746F725074656ELL || v19 != 62)
      {
        goto LABEL_79;
      }

      while (1)
      {
        if ((*(v4 + *(*a2 - 24)) & 2) != 0)
        {
          goto LABEL_71;
        }

        __p = 0uLL;
        v35 = 0;
        kaldi::ReadToken(a2, 0, &__p);
        if (SHIBYTE(v35) < 0)
        {
          if (*(&__p + 1) != 18)
          {
            goto LABEL_66;
          }

          p_p = __p;
        }

        else
        {
          if (SHIBYTE(v35) != 18)
          {
            goto LABEL_66;
          }

          p_p = &__p;
        }

        v23 = *p_p;
        v24 = *(p_p + 1);
        v25 = *(p_p + 8);
        if (v23 == 0x64657473654E2F3CLL && v24 == 0x746F725074656E4ELL && v25 == 15983)
        {
          v28 = 0;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

LABEL_70:
          operator delete(__p);
          if ((v28 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
LABEL_66:
          std::vector<std::string>::push_back[abi:ne200100](&v42, &__p);
          v28 = 1;
          if (v35 < 0)
          {
            goto LABEL_70;
          }

LABEL_67:
          if ((v28 & 1) == 0)
          {
            goto LABEL_71;
          }
        }
      }
    }

    if (v37 != 20)
    {
      goto LABEL_79;
    }

    v14 = *v36 == 0x4E64657473654E3CLL && v36[1] == 0x6E656C694674656ELL;
    if (!v14 || *(v36 + 4) != 1046834529)
    {
      goto LABEL_79;
    }

    while (1)
    {
LABEL_14:
      if ((*(v4 + *(*a2 - 24)) & 2) != 0)
      {
LABEL_71:
        std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
        goto LABEL_2;
      }

      __p = 0uLL;
      v35 = 0;
      kaldi::ReadToken(a2, 0, &__p);
      if (SHIBYTE(v35) < 0)
      {
        if (*(&__p + 1) != 21)
        {
          goto LABEL_27;
        }

        v7 = __p;
      }

      else
      {
        if (SHIBYTE(v35) != 21)
        {
          goto LABEL_27;
        }

        v7 = &__p;
      }

      v8 = *v7;
      v9 = *(v7 + 1);
      v10 = *(v7 + 13);
      if (v8 == 0x64657473654E2F3CLL && v9 == 0x656C694674656E4ELL && v10 == 0x3E656D616E656C69)
      {
        v13 = 0;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_28:
        operator delete(__p);
        goto LABEL_29;
      }

LABEL_27:
      std::vector<std::string>::push_back[abi:ne200100](&v39, &__p);
      v13 = 1;
      if (v35 < 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      if ((v13 & 1) == 0)
      {
        goto LABEL_71;
      }
    }
  }

  if (v40 != v39)
  {
    kaldi::nnet1::Nnet::Nnet(&__p);
  }

  if (v43 != v42)
  {
    kaldi::nnet1::Nnet::Nnet(&__p);
  }

  kaldi::nnet1::ParallelComponent::CheckNetworkDimensions(this);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v36);
  }

  *&__p = &v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  *&__p = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B54D8924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  kaldi::nnet1::Nnet::~Nnet(&a10);
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = v10 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1B54D8938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = (v10 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1B54D8940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  __p = (v15 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v15 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::nnet1::ParallelComponent::ReadData(uint64_t *a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<NestedNnetCount>");
  v10 = 0;
  kaldi::ReadBasicType<int>(a2, a3, &v10);
  std::vector<kaldi::nnet1::Nnet>::resize(a1 + 23, v10);
  if (v10 >= 1)
  {
    v6 = 0;
    for (i = 0; i < v10; ++i)
    {
      kaldi::ExpectToken(a2, a3, "<NestedNnet>");
      v9 = 0;
      kaldi::ReadBasicType<int>(a2, a3, &v9);
      kaldi::nnet1::Nnet::Read((a1[23] + v6), a2, a3);
      v6 += 376;
    }
  }

  kaldi::ExpectToken(a2, a3, "</ParallelComponent>");
  return kaldi::nnet1::ParallelComponent::CheckNetworkDimensions(a1);
}

void *kaldi::nnet1::ParallelComponent::WriteData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0x51B3BEA3677D46CFLL * ((*(a1 + 192) - *(a1 + 184)) >> 3);
  kaldi::WriteToken(a2, a3, "<NestedNnetCount>");
  kaldi::WriteBasicType<int>(a2, a3, v8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v8 & 0x7FFFFFFF;
    v11 = 1;
    do
    {
      kaldi::WriteToken(a2, a3, "<NestedNnet>");
      kaldi::WriteBasicType<int>(a2, a3, v11);
      kaldi::nnet1::Nnet::Write((*(a1 + 184) + v9), a2, a3, a4);
      v9 += 376;
      v11 = (v11 + 1);
      --v10;
    }

    while (v10);
  }

  return kaldi::WriteToken(a2, a3, "</ParallelComponent>");
}

uint64_t kaldi::nnet1::ParallelComponent::NumParams(kaldi::nnet1::ParallelComponent *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 == v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v3 = kaldi::nnet1::Nnet::NumParams(v1) + v3;
    v1 = (v1 + 376);
  }

  while (v1 != v2);
  return v3;
}

uint64_t kaldi::nnet1::ParallelComponent::CountZeroCorr(uint64_t this, int *a2, int *a3)
{
  *a2 = 0;
  *a3 = 0;
  v3 = *(this + 184);
  for (i = *(this + 192); v3 != i; v3 = (v3 + 376))
  {
    if (((*(v3 + 1) - *v3) >> 3) >= 1)
    {
      v7 = 0;
      do
      {
        this = kaldi::nnet1::Nnet::IsComponentFrozen(v3, v7);
        if ((this & 1) == 0)
        {
          Component = kaldi::nnet1::Nnet::GetComponent(v3, v7);
          this = (*(*Component + 32))(Component);
          if (this)
          {
            v10 = 0;
            this = (*(*v9 + 40))(v9, &v10 + 4, &v10);
            *a2 += HIDWORD(v10);
            *a3 += v10;
          }
        }

        ++v7;
      }

      while (v7 < ((*(v3 + 1) - *v3) >> 3));
    }
  }

  return this;
}

uint64_t kaldi::nnet1::ParallelComponent::VectorizeWeightsCorrs(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 184);
  for (i = *(result + 192); v4 != i; v4 = (v4 + 376))
  {
    if (((*(v4 + 1) - *v4) >> 3) >= 1)
    {
      v9 = 0;
      do
      {
        Component = kaldi::nnet1::Nnet::GetComponent(v4, v9);
        result = (*(*Component + 32))(Component);
        if (result)
        {
          result = (*(*v11 + 48))(v11, a2, a3, a4);
        }

        ++v9;
      }

      while (v9 < ((*(v4 + 1) - *v4) >> 3));
    }
  }

  return result;
}

uint64_t kaldi::nnet1::ParallelComponent::GetNormalizedLearningRate(uint64_t this, uint64_t a2)
{
  v2 = *(this + 184);
  v3 = *(this + 192);
  if (v2 != v3)
  {
    v5 = 0;
    v6 = NAN;
    while (((*(v2 + 1) - *v2) >> 3) < 1)
    {
      v9 = v6;
LABEL_15:
      v2 = (v2 + 376);
      v6 = v9;
      if (v2 == v3)
      {
        return this;
      }
    }

    v7 = 0;
    while (1)
    {
      Component = kaldi::nnet1::Nnet::GetComponent(v2, v7);
      this = (*(*Component + 32))(Component);
      if (this)
      {
        this = (*(*Component + 200))(Component, a2);
        if ((v5 & 1) == 0)
        {
          v5 = 1;
          goto LABEL_12;
        }

        if (v6 != v9)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Two different learning rates: ", 30);
          v10 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
          std::ostream::operator<<();
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
        }

        v5 = 1;
      }

      v9 = v6;
LABEL_12:
      ++v7;
      v6 = v9;
      if (v7 >= ((*(v2 + 1) - *v2) >> 3))
      {
        goto LABEL_15;
      }
    }
  }

  return this;
}

uint64_t kaldi::nnet1::ParallelComponent::GetParams(void *a1, void **a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = a1[23];
  v6 = a1[24];
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      kaldi::nnet1::Nnet::GetParams(v5, &v13);
      v11 = 0;
      v12 = 0;
      v10 = *a2 + 4 * v7;
      LODWORD(v11) = v14;
      kaldi::VectorBase<float>::CopyFromVec(&v10, &v13);
      v8 = v14;
      kaldi::Vector<float>::Destroy(&v13);
      v7 += v8;
      v5 = (v5 + 376);
    }

    while (v5 != v6);
  }

  return (*(*a1 + 176))(a1);
}

void sub_1B54D915C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ParallelComponent::SetParams(void *a1, void *a2)
{
  (*(*a1 + 176))(a1);
  v4 = a1[23];
  v5 = a1[24];
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = kaldi::nnet1::Nnet::NumParams(v4);
      v11 = 0;
      v12 = 0;
      v8 = v7 + v6;
      v10 = *a2 + 4 * v6;
      LODWORD(v11) = v7;
      kaldi::nnet1::Nnet::SetParams(v4, &v10);
      v4 = (v4 + 376);
      v6 = v8;
    }

    while (v4 != v5);
  }

  return (*(*a1 + 176))(a1);
}

float kaldi::nnet1::ParallelComponent::SumParams(kaldi::nnet1::ParallelComponent *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  v3 = 0.0;
  while (v1 != v2)
  {
    v3 = v3 + kaldi::nnet1::Nnet::SumParams(v1);
    v1 = (v1 + 376);
  }

  return v3;
}

uint64_t kaldi::nnet1::ParallelComponent::Info@<X0>(kaldi::nnet1::ParallelComponent *this@<X0>, std::string *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  if (*(this + 24) != *(this + 23))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "nested_network #", 16);
      v7 = MEMORY[0x1B8C84C00](v6, ++v5);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "{\n", 2);
      kaldi::nnet1::Nnet::Info(__p, (*(this + 23) + v4));
      if ((v18 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v18 & 0x80u) == 0)
      {
        v10 = v18;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "}\n", 2);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v4 += 376;
    }

    while (0x51B3BEA3677D46CFLL * ((*(this + 24) - *(this + 23)) >> 3) > v5);
  }

  std::stringbuf::str();
  v12 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = a2 + v12;
  if (v13 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v14 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v14 + ~v15, 1uLL);
  v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v23);
}

void sub_1B54D950C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ParallelComponent::InfoGradient@<X0>(kaldi::nnet1::ParallelComponent *this@<X0>, std::string *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  if (*(this + 24) != *(this + 23))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "nested_gradient #", 17);
      v7 = MEMORY[0x1B8C84C00](v6, ++v5);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "{\n", 2);
      kaldi::nnet1::Nnet::InfoGradient((*(this + 23) + v4), __p);
      if ((v18 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v18 & 0x80u) == 0)
      {
        v10 = v18;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "}\n", 2);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v4 += 376;
    }

    while (0x51B3BEA3677D46CFLL * ((*(this + 24) - *(this + 23)) >> 3) > v5);
  }

  std::stringbuf::str();
  v12 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = a2 + v12;
  if (v13 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v14 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v14 + ~v15, 1uLL);
  v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v23);
}

void sub_1B54D97B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ParallelComponent::InfoPropagate(kaldi::nnet1::ParallelComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  if (*(this + 24) != *(this + 23))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "nested_propagate #", 18);
      v5 = MEMORY[0x1B8C84C00](v4, ++v3);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "{\n", 2);
      kaldi::nnet1::Nnet::InfoPropagate((*(this + 23) + v2), __p);
      if ((v12 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v8 = v12;
      }

      else
      {
        v8 = __p[1];
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "}\n", 2);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v2 += 376;
    }

    while (0x51B3BEA3677D46CFLL * ((*(this + 24) - *(this + 23)) >> 3) > v3);
  }

  std::stringbuf::str();
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v17);
}

uint64_t kaldi::nnet1::ParallelComponent::InfoBackPropagate(kaldi::nnet1::ParallelComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  if (*(this + 24) != *(this + 23))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "nested_backpropagate #", 22);
      v5 = MEMORY[0x1B8C84C00](v4, ++v3);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "{\n", 2);
      kaldi::nnet1::Nnet::InfoBackPropagate((*(this + 23) + v2), __p);
      if ((v12 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v8 = v12;
      }

      else
      {
        v8 = __p[1];
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "}\n", 2);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v2 += 376;
    }

    while (0x51B3BEA3677D46CFLL * ((*(this + 24) - *(this + 23)) >> 3) > v3);
  }

  std::stringbuf::str();
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v17);
}

void kaldi::nnet1::ParallelComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 184);
  v19 = *(a1 + 192);
  if (v4 != v19)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a3 + 32);
    do
    {
      v11 = kaldi::nnet1::Nnet::InputDim(v4);
      v12 = *(a2 + 8) + 4 * v8;
      v13 = *(a2 + 28) - v8;
      v14 = *(a2 + 32);
      v23[2].i32[0] = v11;
      *(&v23[2] + 4) = *(a2 + 20);
      v23[3].i32[1] = v13;
      v23[4] = v14;
      v23[0] = &unk_1F2CFA908;
      v23[1] = v12;
      v15 = kaldi::nnet1::Nnet::OutputDim(v4);
      v16 = *(a3 + 8) + 4 * v9;
      v17 = *(a3 + 28) - v9;
      LODWORD(v22[2]) = v15;
      *(&v22[2] + 4) = *(a3 + 20);
      HIDWORD(v22[3]) = v17;
      v23[4] = v10;
      v22[0] = &unk_1F2CFA908;
      v22[1] = v16;
      v22[4] = v10;
      memset(&v20[1], 0, 24);
      v21 = 0;
      v20[0] = &unk_1F2D0EE38;
      v20[4] = v10;
      if (*(a1 + 178) == 1)
      {
        kaldi::nnet1::Nnet::Feedforward(v4, v23, v20, 0xFFFFFFFF, 0);
      }

      else
      {
        kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(v4, v23, v20, a4);
      }

      if (*(a1 + 176) == 1)
      {
        v8 += kaldi::nnet1::Nnet::InputDim(v4);
      }

      if (*(a1 + 177) == 1)
      {
        kaldi::CuMatrixBase<float>::AddMat(v22, v20, 111, 1.0, 1.0);
      }

      else
      {
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(v22, v20, 111);
        v9 += kaldi::nnet1::Nnet::OutputDim(v4);
      }

      kaldi::CuMatrix<float>::~CuMatrix(v20);
      v22[0] = &unk_1F2CFA908;
      memset(&v22[1], 0, 32);
      quasar::Bitmap::~Bitmap(v22);
      v23[0] = &unk_1F2CFA908;
      memset(&v23[1], 0, 32);
      quasar::Bitmap::~Bitmap(v23);
      v4 = (v4 + 376);
    }

    while (v4 != v19);
  }
}

void sub_1B54D9EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24)
{
  a23 = 0u;
  a24 = 0u;
  quasar::Bitmap::~Bitmap(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ParallelComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a4;
  }

  v7 = *(a1 + 184);
  v20 = *(a1 + 192);
  if (v7 != v20)
  {
    v11 = 0;
    v12 = 0;
    v13 = v6[4];
    do
    {
      v14 = kaldi::nnet1::Nnet::OutputDim(v7);
      v15 = *(a4 + 8) + 4 * v12;
      v16 = *(a4 + 28) - v12;
      v25[2].i32[0] = v14;
      *(&v25[2] + 4) = *(a4 + 20);
      v25[3].i32[1] = v16;
      v25[0] = &unk_1F2CFA908;
      v25[1] = v15;
      v25[4] = v13;
      if (a5)
      {
        v17 = kaldi::nnet1::Nnet::InputDim(v7);
        v18 = *(a5 + 8) + 4 * v11;
        v19 = *(a5 + 28) - v11;
        LODWORD(v24[2]) = v17;
        *(&v24[2] + 4) = *(a5 + 20);
        HIDWORD(v24[3]) = v19;
        v24[0] = &unk_1F2CFA908;
        v24[1] = v18;
        v24[4] = v13;
        memset(&v22[1], 0, 24);
        v23 = 0;
        v22[0] = &unk_1F2D0EE38;
        v22[4] = v13;
        kaldi::nnet1::Nnet::Backpropagate(v7, v25, v22, a6);
        if (*(a1 + 176) == 1)
        {
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(v24, v22, 111);
        }

        else
        {
          kaldi::CuMatrixBase<float>::AddMat(v24, v22, 111, 1.0, 1.0);
        }

        kaldi::CuMatrix<float>::~CuMatrix(v22);
        v24[0] = &unk_1F2CFA908;
        memset(&v24[1], 0, 32);
        quasar::Bitmap::~Bitmap(v24);
      }

      else
      {
        kaldi::nnet1::Nnet::Backpropagate(v7, v25, 0, a6);
      }

      if (*(a1 + 176) == 1)
      {
        v11 += kaldi::nnet1::Nnet::InputDim(v7);
      }

      if ((*(a1 + 177) & 1) == 0)
      {
        v12 += kaldi::nnet1::Nnet::OutputDim(v7);
      }

      v25[0] = &unk_1F2CFA908;
      memset(&v25[1], 0, 32);
      quasar::Bitmap::~Bitmap(v25);
      v7 = (v7 + 376);
    }

    while (v7 != v20);
  }
}

void sub_1B54DA17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24)
{
  a23 = 0u;
  a24 = 0u;
  quasar::Bitmap::~Bitmap(&a22);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::ParallelComponent::SetGradientNormalization(void *result, uint64_t a2, float a3)
{
  v3 = result[23];
  if (v3 != result[24])
  {
    v6 = result;
    do
    {
      result = kaldi::nnet1::Nnet::SetGradientNormalization(v3, a2, 0, 0, a3);
      v3 += 47;
    }

    while (v3 != v6[24]);
  }

  return result;
}

void kaldi::nnet1::ParallelComponent::UpdateWeights(kaldi::nnet1::ParallelComponent *this, void *a2, uint64_t a3)
{
  for (i = *(this + 23); i != *(this + 24); i = (i + 376))
  {
    kaldi::nnet1::Nnet::Update(i, a2, a3);
  }
}

uint64_t virtual thunk tokaldi::nnet1::ParallelComponent::NumParams(kaldi::nnet1::ParallelComponent *this)
{
  v1 = this + *(*this - 192);
  v2 = *(v1 + 23);
  v3 = *(v1 + 24);
  if (v2 == v3)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  do
  {
    v4 = kaldi::nnet1::Nnet::NumParams(v2) + v4;
    v2 = (v2 + 376);
  }

  while (v2 != v3);
  return v4;
}

float virtual thunk tokaldi::nnet1::ParallelComponent::SumParams(kaldi::nnet1::ParallelComponent *this)
{
  v1 = this + *(*this - 224);
  v2 = *(v1 + 23);
  v3 = *(v1 + 24);
  v4 = 0.0;
  while (v2 != v3)
  {
    v4 = v4 + kaldi::nnet1::Nnet::SumParams(v2);
    v2 = (v2 + 376);
  }

  return v4;
}

void *virtual thunk tokaldi::nnet1::ParallelComponent::SetGradientNormalization(void *result, uint64_t a2, float a3)
{
  v3 = result + *(*result - 256);
  for (i = *(v3 + 23); i != *(v3 + 24); i += 47)
  {
    result = kaldi::nnet1::Nnet::SetGradientNormalization(i, a2, 0, 0, a3);
  }

  return result;
}

void virtual thunk tokaldi::nnet1::ParallelComponent::UpdateWeights(kaldi::nnet1::ParallelComponent *this, void *a2, uint64_t a3)
{
  v3 = this + *(*this - 272);
  for (i = *(v3 + 23); i != *(v3 + 24); i = (i + 376))
  {
    kaldi::nnet1::Nnet::Update(i, a2, a3);
  }
}

void sub_1B54DA874(_Unwind_Exception *a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SentenceAveragingComponent::Info(kaldi::nnet1::SentenceAveragingComponent *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "nested_network {\n");
  kaldi::nnet1::Nnet::Info(__p, (this + 88));
  if ((v10 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v11, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v12, "}\n");
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B54DA988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SentenceAveragingComponent::InfoGradient(kaldi::nnet1::SentenceAveragingComponent *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "nested_gradient {\n");
  kaldi::nnet1::Nnet::InfoGradient((this + 88), __p);
  if ((v10 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v11, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v12, "}\n");
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B54DAAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SentenceAveragingComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v4 = a2 + 4;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  while ((*(v4 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v26);
    if (SHIBYTE(v28) < 0)
    {
      if (v27 == 17)
      {
        if (*v26 == 0x4E64657473654E3CLL && v26[1] == 0x6F746F725074656ELL && *(v26 + 16) == 62)
        {
LABEL_51:
          v7 = &v29;
          goto LABEL_52;
        }
      }

      else if (v27 == 20)
      {
        v8 = *v26 == 0x4E64657473654E3CLL && v26[1] == 0x6E656C694674656ELL;
        if (v8 && *(v26 + 4) == 1046834529)
        {
          goto LABEL_14;
        }
      }

      if (v27 != 17)
      {
        goto LABEL_70;
      }

      v12 = v26;
    }

    else
    {
      if (HIBYTE(v28) != 17)
      {
        if (HIBYTE(v28) != 20)
        {
          goto LABEL_70;
        }

        v5 = v26 == 0x4E64657473654E3CLL && v27 == 0x6E656C694674656ELL;
        if (!v5 || v28 != 1046834529)
        {
          goto LABEL_70;
        }

LABEL_14:
        v7 = &v32;
LABEL_52:
        kaldi::ReadToken(a2, 0, v7);
        goto LABEL_53;
      }

      if (v26 == 0x4E64657473654E3CLL && v27 == 0x6F746F725074656ELL && v28 == 62)
      {
        goto LABEL_51;
      }

      v12 = &v26;
    }

    v15 = *v12;
    v16 = v12[1];
    v17 = *(v12 + 16);
    if (v15 != 0x61526E7261654C3CLL || v16 != 0x726F746361466574 || v17 != 62)
    {
LABEL_70:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unknown token ", 14);
      if (v28 >= 0)
      {
        v22 = &v26;
      }

      else
      {
        v22 = v26;
      }

      if (v28 >= 0)
      {
        v23 = HIBYTE(v28);
      }

      else
      {
        v23 = v27;
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " Typo in config?", 16);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
    }

    kaldi::ReadBasicType<float>(a2, 0, (a1 + 464));
LABEL_53:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v20 = HIBYTE(v31);
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    if (!HIBYTE(v34))
    {
      goto LABEL_56;
    }

LABEL_60:
    kaldi::nnet1::Nnet::Read((a1 + 88), &v32);
    v20 = HIBYTE(v31);
    if (v31 < 0)
    {
      goto LABEL_61;
    }

LABEL_57:
    if (!v20)
    {
      goto LABEL_63;
    }

LABEL_62:
    kaldi::nnet1::Nnet::Init((a1 + 88), &v29);
    goto LABEL_63;
  }

  if (v33)
  {
    goto LABEL_60;
  }

LABEL_56:
  if ((v31 & 0x8000000000000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_61:
  if (v30)
  {
    goto LABEL_62;
  }

LABEL_63:
  kaldi::nnet1::Nnet::InputDim((a1 + 88));
  kaldi::nnet1::Nnet::OutputDim((a1 + 88));
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}

void sub_1B54DAE00(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::PropagateFnc(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  memset(&v21[1], 0, 24);
  v22 = 0;
  v7 = *(a3 + 32);
  v21[0] = &unk_1F2D0EE38;
  v21[4] = v7;
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>((a1 + 88), a2, v21, a4);
  v8 = a2[2].i32[0];
  v9 = kaldi::nnet1::Nnet::OutputDim((v6 + 88));
  LODWORD(v6) = v9;
  v19[1] = 0;
  v19[2] = 0;
  v19[0] = &unk_1F2D3AC18;
  v20 = 0;
  kaldi::CuVector<float>::Resize(v19, v9, 0);
  v20 = *(a3 + 32);
  kaldi::CuVectorBase<float>::AddRowSumMat(v19, v21);
  v10 = *(a3 + 8);
  v11 = *(a3 + 28);
  v12 = *(a3 + 32);
  LODWORD(v18[1]) = v6;
  *(&v18[1] + 4) = *(a3 + 20);
  HIDWORD(v18[2]) = v11;
  v18[3] = v12;
  v17 = &unk_1F2CFA908;
  v18[0] = v10;
  kaldi::CuMatrixBase<float>::AddVecToRows(&v17, v19, 1.0, 0.0);
  v17 = &unk_1F2CFA908;
  memset(v18, 0, sizeof(v18));
  quasar::Bitmap::~Bitmap(&v17);
  v13 = *(a3 + 8) + 4 * v6;
  v14 = *(a3 + 28) - v6;
  v15 = *(a3 + 32);
  LODWORD(v18[1]) = v8;
  *(&v18[1] + 4) = *(a3 + 20);
  HIDWORD(v18[2]) = v14;
  v18[3] = v15;
  v17 = &unk_1F2CFA908;
  v18[0] = v13;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v17, a2, 111);
  v17 = &unk_1F2CFA908;
  memset(v18, 0, sizeof(v18));
  quasar::Bitmap::~Bitmap(&v17);
  kaldi::CuVector<float>::~CuVector(v19);
  return kaldi::CuMatrix<float>::~CuMatrix(v21);
}

void sub_1B54DB02C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  kaldi::CuVector<float>::~CuVector(va1);
  kaldi::CuMatrix<float>::~CuMatrix(va2);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SentenceAveragingComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    v7 = *(a2 + 16);
    v8 = kaldi::nnet1::Nnet::OutputDim((a1 + 88));
    v9 = *(a4 + 8) + 4 * v8;
    v10 = *(a4 + 28) - v8;
    v11 = *(a4 + 32);
    LODWORD(v12[2]) = v7;
    *(&v12[2] + 4) = *(a4 + 20);
    HIDWORD(v12[3]) = v10;
    v12[4] = v11;
    v12[0] = &unk_1F2CFA908;
    v12[1] = v9;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, v12, 111);
    v12[0] = &unk_1F2CFA908;
    memset(&v12[1], 0, 32);
    quasar::Bitmap::~Bitmap(v12);
  }
}

void sub_1B54DB148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::nnet1::Nnet::Read((a1 + 88), a2, a3);
  kaldi::nnet1::Nnet::InputDim((a1 + 88));

  return kaldi::nnet1::Nnet::OutputDim((a1 + 88));
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::GetParams(uint64_t a1, void **a2)
{
  v3 = (a1 + 88);
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);

  return kaldi::nnet1::Nnet::GetParams(v3, a2);
}

uint64_t kaldi::nnet1::SentenceAveragingComponent::SetParams(uint64_t a1, void *a2)
{
  v3 = (a1 + 88);
  (*(*a1 + 176))(a1);

  return kaldi::nnet1::Nnet::SetParams(v3, a2);
}

void *kaldi::nnet1::SentenceAveragingComponent::AccumGradients(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = kaldi::nnet1::Nnet::OutputDim((a1 + 88));
  v10 = a3[2].u32[1];
  v16[1] = 0;
  v16[2] = 0;
  v16[0] = &unk_1F2D3AC18;
  v16[3] = a4;
  kaldi::CuVector<float>::Resize(v16, v9, 1);
  v11 = a3[1];
  v12 = a3[3].i32[1];
  v13 = a3[4];
  v15[2].i32[0] = v9;
  *(&v15[2] + 4) = *(a3 + 20);
  v15[3].i32[1] = v12;
  v15[4] = v13;
  v15[0] = &unk_1F2CFA908;
  v15[1] = v11;
  kaldi::CuVectorBase<float>::AddRowSumMat(v16, v15);
  v15[0] = &unk_1F2CFA908;
  memset(&v15[1], 0, 32);
  quasar::Bitmap::~Bitmap(v15);
  kaldi::CuMatrix<float>::CuMatrix(v15, v10, v9, 1, a4, 0);
  kaldi::CuMatrixBase<float>::AddVecToRows(v15, v16, 1.0, 0.0);
  kaldi::nnet1::Nnet::Backpropagate((a1 + 88), v15, 0, a5);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  return kaldi::CuVector<float>::~CuVector(v16);
}

void sub_1B54DB3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SentenceAveragingComponent::SetTrainOptions(kaldi::nnet1::SentenceAveragingComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = &unk_1F2D279F8;
  *v3 = *(a2 + 8);
  *(&v3[3] + 3) = *(a2 + 23);
  v3[0] = *(this + 116) * v3[0];
  kaldi::nnet1::Nnet::SetTrainOptions((this + 88), (this + 48), 1);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&v2);
}

void sub_1B54DB4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::CompressedWordTransComponent::Info(kaldi::nnet1::CompressedWordTransComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  (*(*this + 168))(this, &v3, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v3, "\n CompressedWordTrans table", 27);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v7);
}

void sub_1B54DB6E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::CompressedWordTransComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrix<float>::CuMatrix(v6, a2, 111);
  kaldi::CuMatrixBase<float>::AddVecToRows(v6, a1 + 48, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::SetZero(a3);
  kaldi::CuMatrixBase<float>::SummarizeVec(a3, (a1 + 80), v6);
  return kaldi::CuMatrix<float>::~CuMatrix(v6);
}

void kaldi::nnet1::CompressedWordTransComponent::ReadData(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  kaldi::CompressedMatrix::Read(a1 + 80, a2, a3, a4);
  v5 = *(a1 + 80);
  if (v5)
  {
    LODWORD(v5) = *(v5 + 8);
  }

  v6 = *(a1 + 8);
  v7 = v5 / v6;
  *(a1 + 96) = v7;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = vdupq_n_s64(v6 - 1);
    v10 = (v6 + 3) & 0xFFFFFFFC;
    v11 = (*(a1 + 56) + 8);
    v12 = xmmword_1B5AE0050;
    v13 = xmmword_1B5AE0060;
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v9, v13));
      if (vuzp1_s16(v15, *v9.i8).u8[0])
      {
        *(v11 - 2) = v8;
      }

      if (vuzp1_s16(v15, *&v9).i8[2])
      {
        *(v11 - 1) = (v7 + v8);
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v12))).i32[1])
      {
        *v11 = (2 * v7 + v8);
        v11[1] = (3 * v7 + v8);
      }

      v12 = vaddq_s64(v12, v14);
      v13 = vaddq_s64(v13, v14);
      v8 += 4 * v7;
      v11 += 4;
      v10 -= 4;
    }

    while (v10);
  }
}

void sub_1B54DB94C(_Unwind_Exception *a1)
{
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::CompressedWordVecComponent::Info(kaldi::nnet1::CompressedWordVecComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  (*(*this + 168))(this, &v3, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v3, "\n CompressedWordVec table", 25);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v7);
}

void sub_1B54DBB10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::Info(kaldi::nnet1::SharedNceComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  (*(*this + 168))(this, &v14, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "\n linearity", 11);
  kaldi::nnet1::MomentStatistics<float>(this + 88);
  if ((v13 & 0x80u) == 0)
  {
    v3 = v12;
  }

  else
  {
    v3 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v12[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n bias", 6);
  kaldi::nnet1::MomentStatistics<float>(this + 136);
  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::stringbuf::str();
  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v18);
}

void sub_1B54DBDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::InfoGradient(kaldi::nnet1::SharedNceComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "\n  linearity_grad", 17);
  kaldi::nnet1::MomentStatistics<float>(this + 216);
  if ((v15 & 0x80u) == 0)
  {
    v3 = v14;
  }

  else
  {
    v3 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v14[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", lr-coef ", 10);
  v6 = std::ostream::operator<<();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n bias", 6);
  kaldi::nnet1::MomentStatistics<float>(this + 312);
  if ((v13 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", bias-lr-coef ", 15);
  std::ostream::operator<<();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  std::stringbuf::str();
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v20);
}

void sub_1B54DC05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SharedNceComponent::InitData(int32x2_t *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v71 = 2.0;
  v72 = -1073741824;
  v70 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v69);
  kaldi::nnet1::Component::TypeToMarker(a1[52].u32[0], &v68);
  v67 = -1;
  memset(v66, 0, sizeof(v66));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_142;
    }

    kaldi::ReadToken(a2, 0, v66);
    if ((SHIBYTE(v66[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v66[2]) <= 0xCu)
      {
        if (HIBYTE(v66[2]) <= 0xAu)
        {
          if (HIBYTE(v66[2]) != 9)
          {
            if (HIBYTE(v66[2]) != 10)
            {
              goto LABEL_174;
            }

            if (v66[0] != 0x61654D736169423CLL || LOWORD(v66[1]) != 15982)
            {
              goto LABEL_174;
            }

LABEL_22:
            v8 = &v72;
            goto LABEL_122;
          }

          v21 = v66;
          goto LABEL_105;
        }

        if (HIBYTE(v66[2]) != 11)
        {
          if (v66[0] != 0x536D6F646E61523CLL || LODWORD(v66[1]) != 1046766949)
          {
            v33 = v66;
            goto LABEL_137;
          }

          goto LABEL_66;
        }

        if (v66[0] != 0x6E6152736169423CLL || *(v66 + 3) != 0x3E65676E61527361)
        {
          goto LABEL_174;
        }

        goto LABEL_121;
      }

      if (HIBYTE(v66[2]) <= 0x11u)
      {
        if (HIBYTE(v66[2]) == 13)
        {
          if (v66[0] != 0x74536D617261503CLL || *(v66 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_174;
          }

          goto LABEL_115;
        }

        if (HIBYTE(v66[2]) != 15)
        {
          goto LABEL_174;
        }

        v9 = v66[0] == 0x61526E7261654C3CLL && *(v66 + 7) == 0x3E66656F43657461;
LABEL_35:
        v8 = &a1[51];
        if (!v9)
        {
          goto LABEL_174;
        }

LABEL_122:
        kaldi::ReadBasicType<float>(a2, 0, v8);
        goto LABEL_133;
      }

      if (HIBYTE(v66[2]) == 18)
      {
        if (v66[0] != 0x6E6569646172473CLL || v66[1] != 0x7079546D726F4E74 || LOWORD(v66[2]) != 15973)
        {
          goto LABEL_174;
        }

LABEL_131:
        v20 = &v68;
        goto LABEL_132;
      }

      if (HIBYTE(v66[2]) != 19)
      {
        goto LABEL_174;
      }

      v12 = v66[0] == 0x61654C736169423CLL && v66[1] == 0x6F43657461526E72 && *(&v66[1] + 3) == 0x3E66656F43657461;
      v8 = &a1[51] + 1;
      if (v12)
      {
        goto LABEL_122;
      }

      if (v66[0] != 0x61725474696E493CLL || v66[1] != 0x79546D726F66736ELL || *(&v66[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_174;
      }

      goto LABEL_84;
    }

    if (v66[1] <= 12)
    {
      break;
    }

    if (v66[1] <= 17)
    {
      if (v66[1] != 13)
      {
        if (v66[1] != 15)
        {
          goto LABEL_174;
        }

        v9 = *v66[0] == 0x61526E7261654C3CLL && *(v66[0] + 7) == 0x3E66656F43657461;
        goto LABEL_35;
      }

      if (*v66[0] != 0x74536D617261503CLL || *(v66[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_174;
      }

LABEL_115:
      v8 = &v70;
      goto LABEL_122;
    }

    if (v66[1] == 18)
    {
      if (*v66[0] != 0x6E6569646172473CLL || *(v66[0] + 1) != 0x7079546D726F4E74 || *(v66[0] + 8) != 15973)
      {
        goto LABEL_135;
      }

      goto LABEL_131;
    }

    if (v66[1] != 19)
    {
      goto LABEL_174;
    }

    v17 = *v66[0] == 0x61654C736169423CLL && *(v66[0] + 1) == 0x6F43657461526E72 && *(v66[0] + 11) == 0x3E66656F43657461;
    v8 = &a1[51] + 1;
    if (v17)
    {
      goto LABEL_122;
    }

    if (*v66[0] != 0x61725474696E493CLL || *(v66[0] + 1) != 0x79546D726F66736ELL || *(v66[0] + 11) != 0x3E657079546D726FLL)
    {
      goto LABEL_135;
    }

LABEL_84:
    v20 = &v69;
LABEL_132:
    kaldi::ReadToken(a2, 0, v20);
LABEL_133:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v66[1] > 10)
  {
    if (v66[1] != 11)
    {
      if (*v66[0] != 0x536D6F646E61523CLL || *(v66[0] + 2) != 1046766949)
      {
        goto LABEL_136;
      }

LABEL_66:
      kaldi::ReadBasicType<int>(a2, 0, &v67);
      goto LABEL_133;
    }

    if (*v66[0] != 0x6E6152736169423CLL || *(v66[0] + 3) != 0x3E65676E61527361)
    {
      goto LABEL_174;
    }

LABEL_121:
    v8 = &v71;
    goto LABEL_122;
  }

  if (v66[1] != 9)
  {
    if (v66[1] != 10)
    {
      goto LABEL_174;
    }

    if (*v66[0] != 0x61654D736169423CLL || *(v66[0] + 4) != 15982)
    {
      goto LABEL_174;
    }

    goto LABEL_22;
  }

  v21 = v66[0];
LABEL_105:
  v26 = *v21;
  v27 = *(v21 + 8);
  v28 = v26 == 0x6461724778614D3CLL && v27 == 62;
  v8 = &a1[52] + 1;
  if (v28)
  {
    goto LABEL_122;
  }

  if ((HIBYTE(v66[2]) & 0x80) == 0)
  {
    goto LABEL_174;
  }

LABEL_135:
  if (v66[1] != 12)
  {
LABEL_174:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Unknown token ", 14);
    if (SHIBYTE(v66[2]) >= 0)
    {
      v53 = v66;
    }

    else
    {
      v53 = v66[0];
    }

    if (SHIBYTE(v66[2]) >= 0)
    {
      v54 = HIBYTE(v66[2]);
    }

    else
    {
      v54 = v66[1];
    }

    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v53, v54);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " (ParamStddev|BiasMean|BiasRange|LearnRateCoef|BiasLearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 119);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v62);
  }

LABEL_136:
  v33 = v66[0];
LABEL_137:
  v34 = *v33;
  v35 = *(v33 + 2);
  if (v34 != 0x6E6F706D6F432F3CLL || v35 != 1047817829)
  {
    goto LABEL_174;
  }

LABEL_142:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v69);
  a1[52].i32[0] = kaldi::nnet1::Component::MarkerToGradientNormType(&v68);
  if (v67 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v67);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v62, a3);
  kaldi::Matrix<float>::Matrix(v60, a1[1].u32[1], a1[1].u32[0], 0, 0);
  v38 = a1[1].i32[1];
  if (v38 < 1)
  {
    goto LABEL_160;
  }

  v39 = 0;
  v40 = a1[1].i32[0];
  while (2)
  {
    if (v40 < 1)
    {
      goto LABEL_159;
    }

    v41 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v39 == v41)
          {
            v43 = 1.0;
          }

          else
          {
            v43 = 0.0;
          }

          goto LABEL_156;
        case 2:
          v44 = *&v70;
          kaldi::GaussRandomNumber::Rand(v62, 0);
          v43 = v44 * v45;
LABEL_156:
          *(v60[0] + v39 * v61 + v41) = v43;
          v40 = a1[1].i32[0];
          break;
        case 1:
          v42 = *&v70;
          v43 = (kaldi::UniformRandomNumber::RandUniform(a3, 0) + -0.5) * (v42 + v42);
          goto LABEL_156;
      }

      if (++v41 < v40)
      {
        continue;
      }

      break;
    }

    v38 = a1[1].i32[1];
LABEL_159:
    if (++v39 < v38)
    {
      continue;
    }

    break;
  }

LABEL_160:
  kaldi::CuMatrix<float>::operator=(a1 + 11, v60);
  v46 = a1[1].u32[1];
  v58 = 0;
  v59 = 0;
  v57 = 0;
  kaldi::Vector<float>::Resize(&v57, v46, 0);
  if (a1[1].i32[1] < 1)
  {
    v51 = v58;
  }

  else
  {
    v47 = 0;
    do
    {
      v48 = *&v72;
      v49 = kaldi::UniformRandomNumber::RandUniform(a3, 0);
      v50 = v48 + (v49 + -0.5) * v71;
      v51 = v58;
      v57[v47++] = v50;
    }

    while (v47 < a1[1].i32[1]);
  }

  kaldi::CuVector<float>::Resize(&a1[17], v51, 1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(&a1[17], &v57);
  kaldi::Vector<float>::Destroy(&v57);
  kaldi::Matrix<float>::~Matrix(v60);
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  v60[0] = &v63;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v60);
  if (SHIBYTE(v66[2]) < 0)
  {
    operator delete(v66[0]);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }
}

void sub_1B54DC97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (*(v18 - 193) < 0)
  {
    operator delete(*(v18 - 216));
  }

  if (*(v18 - 161) < 0)
  {
    operator delete(*(v18 - 184));
  }

  if (*(v18 - 137) < 0)
  {
    operator delete(*(v18 - 160));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SharedNceComponent::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = a1 + 136;
  (*(*a1 + 168))(a1);
  kaldi::CuMatrixBase<float>::Write(a1 + 88, a2, a3, a4);

  kaldi::CuVectorBase<float>::Write(v8, a2, a3);
}

void kaldi::nnet1::SharedNceComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 424);
  if (v6 && (v7 = *(v6 + 16), v7 >= 1))
  {
    v8 = *(a3 + 8);
    v9 = *(a3 + 28);
    v10 = *(a3 + 32);
    LODWORD(v11[2]) = v7;
    *(&v11[2] + 4) = *(a3 + 20);
    HIDWORD(v11[3]) = v9;
    v11[4] = v10;
    v11[0] = &unk_1F2CFA908;
    v11[1] = v8;
    kaldi::CuMatrixBase<float>::AddVecToRows(v11, a1 + 312, 1.0, 0.0);
    kaldi::CuMatrixBase<float>::AddMatMat(v11, a2, 111, a1 + 168, 112);
    v11[0] = &unk_1F2CFA908;
    memset(&v11[1], 0, 32);
    quasar::Bitmap::~Bitmap(v11);
  }

  else
  {
    kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 136, 1.0, 0.0);

    kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, a1 + 88, 112);
  }
}

void sub_1B54DCB94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::PropagateFnc(uint64_t a1, uint64_t a2, void *a3)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a1 + 136);

  return kaldi::CuVectorBase<float>::AddMatVec(a3, a1 + 88, 111, a2);
}

void kaldi::nnet1::SharedNceComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 424);
  if (v5 && (v6 = *(v5 + 16), v6 >= 1))
  {
    v7 = *(a4 + 8);
    v8 = *(a4 + 28);
    v9 = *(a4 + 32);
    LODWORD(v10[2]) = v6;
    *(&v10[2] + 4) = *(a4 + 20);
    HIDWORD(v10[3]) = v8;
    v10[4] = v9;
    v10[0] = &unk_1F2CFA908;
    v10[1] = v7;
    kaldi::CuMatrixBase<float>::AddMatMat(a5, v10, 111, a1 + 168, 111);
    v10[0] = &unk_1F2CFA908;
    memset(&v10[1], 0, 32);
    quasar::Bitmap::~Bitmap(v10);
  }

  else
  {

    kaldi::CuMatrixBase<float>::AddMatMat(a5, a4, 111, a1 + 88, 111);
  }
}

void sub_1B54DCD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12)
{
  a11 = 0u;
  a12 = 0u;
  quasar::Bitmap::~Bitmap(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 144) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  v9 = *(a1 + 104);
  v10 = *(a1 + 120);
  v12[1] = *(a1 + 96) + 4 * *(a1 + 112) * a3;
  v12[0] = &unk_1F2CFCA48;
  v12[2] = v9;
  v12[3] = v10;
  return kaldi::CuVectorBase<float>::AddMatVec(a4, a2, 111, v12);
}

float kaldi::nnet1::SharedNceComponent::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*(a1 + 144) + 4 * a3);
  kaldi::VecVec<float>();
  return v3 + v4;
}

double kaldi::nnet1::SharedNceComponent::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v29, 0, 24);
    kaldi::ReadToken(a2, a3, v29);
    if (SHIBYTE(v29[2]) < 0)
    {
      if (v29[1] != 15 || (*v29[0] == 0x61526E7261654C3CLL ? (v9 = *(v29[0] + 7) == 0x3E66656F43657461) : (v9 = 0), v8 = (a1 + 408), !v9))
      {
        if (v29[1] != 19 || (*v29[0] == 0x61654C736169423CLL ? (v10 = *(v29[0] + 1) == 0x6F43657461526E72) : (v10 = 0), v10 ? (v11 = *(v29[0] + 11) == 0x3E66656F43657461) : (v11 = 0), v8 = (a1 + 412), !v11))
        {
          if (v29[1] != 9)
          {
            if (v29[1] != 18 || (*v29[0] == 0x6E6569646172473CLL ? (v12 = *(v29[0] + 1) == 0x7079546D726F4E74) : (v12 = 0), v12 ? (v13 = *(v29[0] + 8) == 15973) : (v13 = 0), !v13))
            {
LABEL_67:
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
              if (SHIBYTE(v29[2]) >= 0)
              {
                v24 = v29;
              }

              else
              {
                v24 = v29[0];
              }

              if (SHIBYTE(v29[2]) >= 0)
              {
                v25 = HIBYTE(v29[2]);
              }

              else
              {
                v25 = v29[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
            }

            goto LABEL_64;
          }

          v14 = v29[0];
          goto LABEL_46;
        }
      }
    }

    else if (HIBYTE(v29[2]) > 0x11u)
    {
      if (HIBYTE(v29[2]) == 18)
      {
        if (v29[0] != 0x6E6569646172473CLL || v29[1] != 0x7079546D726F4E74 || LOWORD(v29[2]) != 15973)
        {
          goto LABEL_67;
        }

LABEL_64:
        __p[0] = 0;
        __p[1] = 0;
        v28 = 0;
        kaldi::ReadToken(a2, a3, __p);
        *(a1 + 416) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_52;
      }

      if (HIBYTE(v29[2]) != 19)
      {
        goto LABEL_67;
      }

      v15 = v29[0] == 0x61654C736169423CLL && v29[1] == 0x6F43657461526E72;
      v16 = v15 && *(&v29[1] + 3) == 0x3E66656F43657461;
      v8 = (a1 + 412);
      if (!v16)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (HIBYTE(v29[2]) == 9)
      {
        v14 = v29;
LABEL_46:
        v17 = *v14;
        v18 = *(v14 + 8);
        v19 = v17 == 0x6461724778614D3CLL && v18 == 62;
        v8 = (a1 + 420);
        if (!v19)
        {
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      if (HIBYTE(v29[2]) != 15)
      {
        goto LABEL_67;
      }

      v7 = v29[0] == 0x61526E7261654C3CLL && *(v29 + 7) == 0x3E66656F43657461;
      v8 = (a1 + 408);
      if (!v7)
      {
        goto LABEL_67;
      }
    }

LABEL_51:
    kaldi::ReadBasicType<float>(a2, a3, v8);
LABEL_52:
    if (SHIBYTE(v29[2]) < 0)
    {
      operator delete(v29[0]);
    }
  }

  kaldi::CuMatrix<float>::Read(a1 + 88, a2, a3, a4);
  return kaldi::CuVector<float>::Read(a1 + 136, a2, a3);
}

void *kaldi::nnet1::SharedNceComponent::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 416), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B54DD2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **kaldi::nnet1::SharedNceComponent::GetParams(uint64_t a1, void **a2)
{
  v4 = *(a1 + 104) * *(a1 + 108);
  v5 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v5, 0);
  v9 = 0;
  v10 = 0;
  v8 = *a2;
  LODWORD(v9) = v4;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v8, a1 + 88);
  v6 = *(a1 + 152);
  v9 = 0;
  v10 = 0;
  v8 = *a2 + 4 * v4;
  LODWORD(v9) = v6;
  return kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 136), &v8);
}

void *kaldi::nnet1::SharedNceComponent::SetParams(_DWORD *a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = a1[26] * a1[27];
  v8 = 0;
  v9 = 0;
  v7 = *a2;
  LODWORD(v8) = v4;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 22), &v7);
  v5 = a1[38];
  v8 = 0;
  v9 = 0;
  v7 = &(*a2)[4 * v4];
  LODWORD(v8) = v5;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 34, &v7);
}

float kaldi::nnet1::SharedNceComponent::SumParams(kaldi::nnet1::SharedNceComponent *this)
{
  v2 = kaldi::CuMatrixBase<float>::Sum(this + 88);
  v3 = kaldi::CuVectorBase<float>::Sum(this + 136);
  return v2 + *&v3;
}

uint64_t kaldi::nnet1::SharedNceComponent::PerturbParams(kaldi::nnet1::SharedNceComponent *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v8, *(this + 27), *(this + 26), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v8);
  kaldi::CuMatrixBase<float>::AddMat(this + 88, v8, 111, a2, 1.0);
  v4 = *(this + 38);
  v7[0] = &unk_1F2D3AC18;
  memset(&v7[1], 0, 24);
  kaldi::CuVector<float>::Resize(v7, v4, 1);
  kaldi::CuVectorBase<float>::SetRandn(v7);
  *&v5 = a2;
  kaldi::CuVectorBase<float>::AddVec(v5, 1.0);
  kaldi::CuVector<float>::~CuVector(v7);
  return kaldi::CuMatrix<float>::~CuMatrix(v8);
}

void sub_1B54DD574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::SharedNceComponent::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  kaldi::Vector<float>::Resize(a4, (*(a1 + 232) * *(a1 + 236)), 0);

  return kaldi::VectorBase<float>::CopyRowsFromMat(a4, a1 + 216);
}

void kaldi::nnet1::SharedNceComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a1 + 424) + 16);
  v9 = *(a2 + 20);
  *(a1 + 248) = a4;
  kaldi::CuMatrix<float>::Resize((a1 + 216), *(a1 + 188), *(a1 + 184), 3, 0);
  v10 = *(a3 + 8);
  v11 = *(a3 + 28);
  v12 = *(a3 + 32);
  LODWORD(v28[2]) = v8;
  *(&v28[2] + 4) = *(a3 + 20);
  HIDWORD(v28[3]) = v11;
  v28[4] = v12;
  v28[0] = &unk_1F2CFA908;
  v28[1] = v10;
  kaldi::CuMatrixBase<float>::AddMatMat(a1 + 216, v28, 112, a2, 111);
  *(a1 + 368) = a4;
  kaldi::CuVector<float>::Resize(a1 + 344, *(a1 + 328), 3);
  kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 344, v28);
  *(a1 + 120) = a4;
  *(a1 + 160) = a4;
  v13 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    v13 = v13 / v9;
  }

  v14 = *(a1 + 420);
  if (v14 > 0.0)
  {
    v15 = v9;
    if (!*(a1 + 84))
    {
      v15 = 1.0;
    }

    v16 = v15 * v14;
    v17 = *(a1 + 416);
    if (v17 == 1)
    {
      kaldi::nnet1::UpdatableComponent::ClipGradient(a1 + 216, v15 * v14);
      kaldi::nnet1::UpdatableComponent::ClipGradient(a1 + 344, v16);
    }

    else if (v17 == 2)
    {
      *(a1 + 296) = a4;
      kaldi::CuMatrix<float>::Resize((a1 + 264), *(a1 + 236), *(a1 + 232), 1, 0);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(a1 + 216, (a1 + 264), v16);
      *(a1 + 400) = a4;
      kaldi::CuVector<float>::Resize(a1 + 376, *(a1 + 360), 1);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(a1 + 344, (a1 + 376), v16);
    }
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v25, *(a1 + 424), v8);
  kaldi::CuMatrixBase<float>::AddIndexedRows(a1 + 88, &v25, a1 + 216, -(v13 * *(a1 + 408)));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v22, a1 + 136, *(a1 + 12));
  v18 = *(a1 + 412);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a1 + 344, v8);
  kaldi::CuMatrixBase<float>::AddIndexedRows(&v22, &v25, &v19, v18 * -v13);
  v19 = &unk_1F2CFA908;
  v20 = 0u;
  v21 = 0u;
  quasar::Bitmap::~Bitmap(&v19);
  *(a1 + 424) = 0;
  v22 = &unk_1F2CFA908;
  v23 = 0u;
  v24 = 0u;
  quasar::Bitmap::~Bitmap(&v22);
  v25 = &unk_1F2CFA908;
  v26 = 0u;
  v27 = 0u;
  quasar::Bitmap::~Bitmap(&v25);
  v28[0] = &unk_1F2CFA908;
  memset(&v28[1], 0, 32);
  quasar::Bitmap::~Bitmap(v28);
}

void sub_1B54DD8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, __int128 a10, __int128 a11, void *a12, __int128 a13, __int128 a14, void *a15, __int128 a16, __int128 a17, uint64_t a18)
{
  a9 = &unk_1F2CFA908;
  a10 = 0u;
  a11 = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  a12 = &unk_1F2CFA908;
  a13 = 0u;
  a14 = 0u;
  quasar::Bitmap::~Bitmap(&a12);
  a15 = &unk_1F2CFA908;
  a16 = 0u;
  a17 = 0u;
  quasar::Bitmap::~Bitmap(&a15);
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a18);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  if (a2 == 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "it does not make sense to do RMSPROP in this component");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  *(result + 420) = a3;
  *(result + 416) = a2;
  return result;
}

uint64_t kaldi::nnet1::WordVecComponent::CountZeroCorr(kaldi::nnet1::WordVecComponent *this, int *a2, int *a3)
{
  result = (*(*this + 176))(this);
  *a3 = result;
  *a2 = 0;
  if (*(this + 71))
  {
    result = kaldi::CuMatrixBase<float>::CountZeros(this + 264);
    *a2 = result;
  }

  return result;
}

uint64_t kaldi::nnet1::WordVecComponent::Info(kaldi::nnet1::WordVecComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*this + 168))(this, &v8, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n WordVec table", 15);
  kaldi::nnet1::MomentStatistics<float>(this + 96);
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

void sub_1B54DDCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordVecComponent::InitData(int32x2_t *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v60 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v59);
  kaldi::nnet1::Component::TypeToMarker(a1[30].u32[0], &v58);
  v57 = -1;
  memset(v56, 0, sizeof(v56));
  v6 = &a1[31];
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_127;
    }

    kaldi::ReadToken(a2, 0, v56);
    if ((SHIBYTE(v56[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v56[2]) <= 0xEu)
      {
        if (HIBYTE(v56[2]) <= 0xBu)
        {
          if (HIBYTE(v56[2]) != 9)
          {
            if (HIBYTE(v56[2]) != 11)
            {
              goto LABEL_154;
            }

            v7 = v56[0] == 0x69536261636F563CLL && *(v56 + 3) == 0x3E657A6953626163;
            goto LABEL_18;
          }

          v21 = v56[0] == 0x6461724778614D3CLL && LOBYTE(v56[1]) == 62;
LABEL_91:
          v17 = &a1[30] + 1;
          if (!v21)
          {
            goto LABEL_154;
          }

          goto LABEL_98;
        }

        if (HIBYTE(v56[2]) != 12)
        {
          if (HIBYTE(v56[2]) != 13)
          {
            goto LABEL_154;
          }

          if (v56[0] != 0x74536D617261503CLL || *(v56 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_154;
          }

LABEL_57:
          v17 = &v60;
LABEL_98:
          kaldi::ReadBasicType<float>(a2, 0, v17);
          goto LABEL_116;
        }

        if (v56[0] != 0x536D6F646E61523CLL || LODWORD(v56[1]) != 1046766949)
        {
          goto LABEL_119;
        }

LABEL_104:
        v8 = &v57;
        goto LABEL_105;
      }

      if (HIBYTE(v56[2]) <= 0x11u)
      {
        if (HIBYTE(v56[2]) != 15)
        {
          if (HIBYTE(v56[2]) != 16)
          {
            goto LABEL_154;
          }

          v9 = v56;
          goto LABEL_28;
        }

        v22 = v56[0] == 0x61526E7261654C3CLL && *(v56 + 7) == 0x3E66656F43657461;
        goto LABEL_96;
      }

      if (HIBYTE(v56[2]) == 18)
      {
        if (v56[0] != 0x6E6569646172473CLL || v56[1] != 0x7079546D726F4E74 || LOWORD(v56[2]) != 15973)
        {
          goto LABEL_154;
        }

LABEL_114:
        v20 = &v58;
        goto LABEL_115;
      }

      if (HIBYTE(v56[2]) != 19)
      {
        goto LABEL_154;
      }

      v14 = v56[0] == 0x61725474696E493CLL && v56[1] == 0x79546D726F66736ELL;
      if (!v14 || *(&v56[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_154;
      }

      goto LABEL_68;
    }

    if (v56[1] <= 14)
    {
      if (v56[1] <= 11)
      {
        if (v56[1] != 9)
        {
          if (v56[1] != 11)
          {
            goto LABEL_154;
          }

          v7 = *v56[0] == 0x69536261636F563CLL && *(v56[0] + 3) == 0x3E657A6953626163;
LABEL_18:
          v8 = &a1[31];
          if (!v7)
          {
            goto LABEL_154;
          }

          goto LABEL_105;
        }

        v21 = *v56[0] == 0x6461724778614D3CLL && *(v56[0] + 8) == 62;
        goto LABEL_91;
      }

      if (v56[1] != 12)
      {
        if (v56[1] != 13)
        {
          goto LABEL_154;
        }

        if (*v56[0] != 0x74536D617261503CLL || *(v56[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_154;
        }

        goto LABEL_57;
      }

      if (*v56[0] != 0x536D6F646E61523CLL || *(v56[0] + 2) != 1046766949)
      {
        goto LABEL_121;
      }

      goto LABEL_104;
    }

    if (v56[1] <= 17)
    {
      break;
    }

    if (v56[1] == 18)
    {
      if (*v56[0] != 0x6E6569646172473CLL || *(v56[0] + 1) != 0x7079546D726F4E74 || *(v56[0] + 8) != 15973)
      {
        goto LABEL_154;
      }

      goto LABEL_114;
    }

    if (v56[1] != 19)
    {
      goto LABEL_154;
    }

    v18 = *v56[0] == 0x61725474696E493CLL && *(v56[0] + 1) == 0x79546D726F66736ELL;
    if (!v18 || *(v56[0] + 11) != 0x3E657079546D726FLL)
    {
      goto LABEL_154;
    }

LABEL_68:
    v20 = &v59;
LABEL_115:
    kaldi::ReadToken(a2, 0, v20);
LABEL_116:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v56[1] == 15)
  {
    v22 = *v56[0] == 0x61526E7261654C3CLL && *(v56[0] + 7) == 0x3E66656F43657461;
LABEL_96:
    v17 = &a1[32] + 1;
    if (!v22)
    {
      goto LABEL_154;
    }

    goto LABEL_98;
  }

  if (v56[1] != 16)
  {
    goto LABEL_154;
  }

  v9 = v56[0];
LABEL_28:
  v11 = *v9;
  v10 = v9[1];
  v12 = v11 == 0x5372656C6C69463CLL && v10 == 0x3E64496C6F626D79;
  v8 = &a1[31] + 1;
  if (v12)
  {
LABEL_105:
    kaldi::ReadBasicType<int>(a2, 0, v8);
    goto LABEL_116;
  }

  if ((HIBYTE(v56[2]) & 0x80) == 0)
  {
    if (HIBYTE(v56[2]) == 12)
    {
LABEL_119:
      v29 = v56;
      goto LABEL_122;
    }

    goto LABEL_154;
  }

  if (v56[1] != 12)
  {
    goto LABEL_154;
  }

LABEL_121:
  v29 = v56[0];
LABEL_122:
  v30 = *v29;
  v31 = *(v29 + 2);
  if (v30 != 0x6E6F706D6F432F3CLL || v31 != 1047817829)
  {
LABEL_154:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Unknown token ", 14);
    if (SHIBYTE(v56[2]) >= 0)
    {
      v44 = v56;
    }

    else
    {
      v44 = v56[0];
    }

    if (SHIBYTE(v56[2]) >= 0)
    {
      v45 = HIBYTE(v56[2]);
    }

    else
    {
      v45 = v56[1];
    }

    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " (ParamStddev|LearnRateCoef|VocabSize|RandomSeed|InitTransformType|GradientNormType|MaxGrad)", 92);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

LABEL_127:
  if (*v6 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "invalid vocabulary size ", 24);
    MEMORY[0x1B8C84C00](v48, *v6);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v59);
  a1[30].i32[0] = kaldi::nnet1::Component::MarkerToGradientNormType(&v58);
  if (!inited)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "it doesn't make sense to initialize the word vec as an identify matrix", 70);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

  if (v57 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v57);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v52, a3);
  kaldi::CuMatrix<float>::Resize(a1 + 12, a1[31].u32[0], a1[32].u32[0], 1, 0);
  kaldi::Matrix<float>::Matrix(v50, a1[31].u32[0], a1[32].u32[0], 0, 0);
  v34 = *v6;
  if (*v6 < 1)
  {
    goto LABEL_143;
  }

  v35 = 0;
  v36 = a1[32].i32[0];
  while (2)
  {
    if (v36 < 1)
    {
      goto LABEL_142;
    }

    v37 = 0;
    while (2)
    {
      if (inited == 2)
      {
        v40 = *&v60;
        kaldi::GaussRandomNumber::Rand(v52, 0);
        v39 = v40 * v41;
LABEL_139:
        *(v50[0] + v35 * v51 + v37) = v39;
        v36 = a1[32].i32[0];
      }

      else if (inited == 1)
      {
        v38 = *&v60;
        v39 = (kaldi::UniformRandomNumber::RandUniform(a3, 0) + -0.5) * (v38 + v38);
        goto LABEL_139;
      }

      if (++v37 < v36)
      {
        continue;
      }

      break;
    }

    v34 = *v6;
LABEL_142:
    if (++v35 < v34)
    {
      continue;
    }

    break;
  }

LABEL_143:
  v42 = a1[31].i32[1];
  if ((v42 & 0x80000000) == 0)
  {
    v49[2] = 0;
    v49[0] = v50[0] + 4 * v51 * v42;
    v49[1] = kaldi::MatrixBase<float>::NumCols(v50);
    kaldi::VectorBase<float>::SetZero(v49);
  }

  kaldi::CuMatrix<float>::operator=(a1 + 12, v50);
  kaldi::Matrix<float>::~Matrix(v50);
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  v50[0] = &v53;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v50);
  if (SHIBYTE(v56[2]) < 0)
  {
    operator delete(v56[0]);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }
}

void sub_1B54DE564(_Unwind_Exception *a1)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::WordVecComponent::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a1 + 96;
  (*(*a1 + 168))(a1);

  return kaldi::CuMatrixBase<float>::Write(v7, a2, a3, a4);
}

uint64_t kaldi::nnet1::WordVecComponent::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v31 = 0uLL;
    v32 = 0;
    kaldi::ReadToken(a2, a3, &v31);
    if (SHIBYTE(v32) < 0)
    {
      if (*(&v31 + 1) != 11 || (*v31 == 0x69536261636F563CLL ? (v9 = *(v31 + 3) == 0x3E657A6953626163) : (v9 = 0), v10 = a1 + 248, !v9))
      {
        if (*(&v31 + 1) == 15)
        {
          v11 = *v31 == 0x61526E7261654C3CLL && *(v31 + 7) == 0x3E66656F43657461;
          v12 = (a1 + 260);
          if (v11)
          {
            goto LABEL_67;
          }
        }

        if (*(&v31 + 1) == 9)
        {
          v15 = *v31 == 0x6461724778614D3CLL && *(v31 + 8) == 62;
          v12 = (a1 + 244);
          if (v15)
          {
            goto LABEL_67;
          }
        }

        else if (*(&v31 + 1) == 18)
        {
          v13 = *v31 == 0x6E6569646172473CLL && *(v31 + 8) == 0x7079546D726F4E74;
          if (v13 && *(v31 + 16) == 15973)
          {
            goto LABEL_48;
          }
        }

        if (*(&v31 + 1) != 16)
        {
          goto LABEL_73;
        }

        v16 = v31;
LABEL_56:
        v20 = *v16;
        v19 = v16[1];
        v21 = v20 == 0x5372656C6C69463CLL && v19 == 0x3E64496C6F626D79;
        v10 = a1 + 252;
        if (!v21)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      if (HIBYTE(v32) > 0xEu)
      {
        if (HIBYTE(v32) == 15)
        {
          v18 = v31 == 0x61526E7261654C3CLL && *(&v31 + 7) == 0x3E66656F43657461;
          v12 = (a1 + 260);
          if (!v18)
          {
            goto LABEL_73;
          }

LABEL_67:
          kaldi::ReadBasicType<float>(a2, a3, v12);
          goto LABEL_68;
        }

        if (HIBYTE(v32) != 16)
        {
          if (HIBYTE(v32) != 18)
          {
            goto LABEL_73;
          }

          v7 = v31 == 0x6E6569646172473CLL && *(&v31 + 1) == 0x7079546D726F4E74;
          if (!v7 || v32 != 15973)
          {
            goto LABEL_73;
          }

LABEL_48:
          __p[0] = 0;
          __p[1] = 0;
          v30 = 0;
          kaldi::ReadToken(a2, a3, __p);
          *(a1 + 240) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          if (SHIBYTE(v30) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_68;
        }

        v16 = &v31;
        goto LABEL_56;
      }

      if (HIBYTE(v32) == 9)
      {
        v22 = v31 == 0x6461724778614D3CLL && BYTE8(v31) == 62;
        v12 = (a1 + 244);
        if (!v22)
        {
LABEL_73:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v32 >= 0)
          {
            v25 = &v31;
          }

          else
          {
            v25 = v31;
          }

          if (v32 >= 0)
          {
            v26 = HIBYTE(v32);
          }

          else
          {
            v26 = *(&v31 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_67;
      }

      if (HIBYTE(v32) != 11)
      {
        goto LABEL_73;
      }

      v17 = v31 == 0x69536261636F563CLL && *(&v31 + 3) == 0x3E657A6953626163;
      v10 = a1 + 248;
      if (!v17)
      {
        goto LABEL_73;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, v10);
LABEL_68:
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }
  }

  if (*(a1 + 248) <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "invalid vocabulary size ", 24);
    MEMORY[0x1B8C84C00](v27, *(a1 + 248));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  return kaldi::CuMatrix<float>::Read(a1 + 96, a2, a3, a4);
}

uint64_t kaldi::nnet1::WordVecComponent::WriteConfig(unsigned int *a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<VocabSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[62]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(a1[60], &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<FillerSymbolId>");
  return kaldi::WriteBasicType<int>(a2, a3, a1[63]);
}

void sub_1B54DEBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::WordVecComponent::GetParams(uint64_t a1, void **a2)
{
  v3 = a1 + 96;
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1);

  return kaldi::VectorBase<float>::CopyRowsFromMat(a2, v3);
}

void **kaldi::nnet1::WordVecComponent::SetParams(uint64_t a1, char **a2)
{
  v3 = a1 + 96;
  (*(*a1 + 176))(a1);

  return kaldi::CuMatrixBase<float>::CopyRowsFromVec(v3, a2);
}

uint64_t kaldi::nnet1::WordVecComponent::PerturbParams(kaldi::nnet1::WordVecComponent *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v5, *(this + 29), *(this + 28), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v5);
  kaldi::CuMatrixBase<float>::AddMat(this + 96, v5, 111, a2, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(v5);
}

void *kaldi::nnet1::WordVecComponent::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  kaldi::Vector<float>::Resize(a4, (*(a3 + 16) * *(a3 + 20)), 1);

  return kaldi::VectorBase<float>::CopyRowsFromMat(a4, a3);
}

void kaldi::nnet1::WordVecComponent::AccumGradients(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4)
{
  v7 = *(a2 + 20);
  v8 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    v8 = v8 / v7;
  }

  v9 = *(a1 + 244);
  if (v9 <= 0.0)
  {
    v10 = a3;
  }

  else
  {
    v10 = a1 + 144;
    *(a1 + 176) = a4;
    kaldi::CuMatrix<float>::operator=((a1 + 144), a3);
    v11 = *(a1 + 240);
    if (v11 == 2)
    {
      v13 = v7;
      if (!*(a1 + 84))
      {
        v13 = 1.0;
      }

      v14 = v9 * v13;
      *(a1 + 224) = a4;
      kaldi::CuMatrix<float>::Resize((a1 + 192), *(a1 + 164), *(a1 + 160), 1, 0);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(a1 + 144, (a1 + 192), v14);
    }

    else if (v11 == 1)
    {
      v12 = v7;
      if (!*(a1 + 84))
      {
        v12 = 1.0;
      }

      kaldi::nnet1::UpdatableComponent::ClipGradient(a1 + 144, v9 * v12);
    }
  }

  v15 = *(a1 + 72);
  if (v15 <= 0.0)
  {
    *(a1 + 128) = a4;
    kaldi::CuMatrixBase<float>::AddIndexedRows(a1 + 96, a2, v10, -(v8 * *(a1 + 260)));
  }

  else
  {
    if (*(a1 + 320) == *(a1 + 312))
    {
      kaldi::CuMatrix<float>::Resize((a1 + 264), *(a1 + 116), *(a1 + 112), 0, 0);
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 312), a1 + 264);
    }

    *(a1 + 296) = a4;
    kaldi::CuMatrixBase<float>::SetZero(a1 + 264);
    kaldi::CuMatrixBase<float>::AddIndexedRows(a1 + 264, a2, v10, 1.0);
    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 312), *(a1 + 76), v15);
    *(a1 + 128) = a4;
    kaldi::CuMatrixBase<float>::AddMat(a1 + 96, a1 + 264, 111, -(v8 * *(a1 + 260)), 1.0);
  }

  v16 = *(a1 + 252);
  if ((v16 & 0x80000000) == 0)
  {
    v17 = *(a1 + 112);
    v18 = *(a1 + 128);
    v19[1] = *(a1 + 104) + 4 * *(a1 + 120) * v16;
    v19[0] = &unk_1F2CFCA48;
    v19[2] = v17;
    v19[3] = v18;
    kaldi::CuVectorBase<float>::SetZero(v19);
  }
}

void kaldi::nnet1::WordVecComponent::SetGradientNormalization(uint64_t a1, int a2, float a3)
{
  if (a2 == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "RMSPROP is not implemented in word embedding yet", 48);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v3);
    }
  }

  else
  {
    *(a1 + 244) = a3;
    *(a1 + 240) = a2;
  }
}

void sub_1B54DF0D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_1B54DF1A4(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 392);
  kaldi::nnet1::WordVecComponent::~WordVecComponent(v2);
  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FofeWordVecComponent::PropagateFnc(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 20);
  kaldi::nnet1::FofeWordVecComponent::Prepare(a1, v6);
  kaldi::CuMatrixBase<float>::ConcatenateVec(&a1[55], &a1[12], a2);
  v7 = a1[51].i32[0] - v6;
  v8 = a1[52].i32[0];
  v9 = *&a1[50] + 4 * v7;
  v10 = a1[52].i32[1] - v7;
  v11 = a1[53];
  *&v13 = v9;
  *(&v13 + 1) = v6 | 0x100000000;
  *&v14 = __PAIR64__(v10, v8);
  *(&v14 + 1) = v11;
  v12 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::AddMatMat(a3, &v12, 111, &a1[55], 111);
  v12 = &unk_1F2CFA908;
  v13 = 0u;
  v14 = 0u;
  quasar::Bitmap::~Bitmap(&v12);
}

void sub_1B54DF2D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FofeWordVecComponent::AccumGradients()
{
  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v0, "not implemented", 15);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v0);
  }
}

double kaldi::nnet1::ConvolutionalComponent::ConvolutionalComponent(kaldi::nnet1::ConvolutionalComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F2D279F8;
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F2D15D38;
  *(this + 11) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 13) = &unk_1F2D0EE38;
  *(this + 144) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 19) = &unk_1F2D3AC18;
  *(this + 20) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 35) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 36) = _D1;
  *(this + 74) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 184) = 0u;
  *(this + 264) = 0u;
  *(this + 361) = 0u;
  return result;
}

double kaldi::nnet1::FofeWordVecComponent::FofeWordVecComponent(kaldi::nnet1::FofeWordVecComponent *this, int a2, int a3)
{
  kaldi::nnet1::WordVecComponent::WordVecComponent(this, a2, a3);
  *v3 = &unk_1F2D160A0;
  *(v3 + 88) = &unk_1F2D161D0;
  *(v3 + 384) = 1060320051;
  result = 0.0;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 392) = &unk_1F2D0EE38;
  *(v3 + 432) = 0;
  *(v3 + 448) = 0u;
  *(v3 + 464) = 0u;
  *(v3 + 440) = &unk_1F2D0EE38;
  *(v3 + 480) = 0;
  return result;
}

double kaldi::nnet1::Dropout::Dropout(kaldi::nnet1::Dropout *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F2D15FE0;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 11) = &unk_1F2D0EE38;
  *(this + 128) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 17) = 0;
  *(this + 18) = &unk_1F2D0EE38;
  *(this + 184) = 0;
  *(this + 48) = 1056964608;
  return result;
}

double kaldi::nnet1::Rbm::Rbm(kaldi::nnet1::Rbm *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0x3F0000003ECCCCCDLL;
  *(this + 14) = 1063675494;
  *(this + 60) = 0x7A12000000028;
  *(this + 17) = 961656599;
  *this = &unk_1F2D169F0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = &unk_1F2D0EE38;
  *(this + 112) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 15) = &unk_1F2D3AC18;
  *(this + 16) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 19) = &unk_1F2D3AC18;
  *(this + 20) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 23) = &unk_1F2D0EE38;
  *(this + 224) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 29) = &unk_1F2D3AC18;
  *(this + 30) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 33) = &unk_1F2D3AC18;
  *(this + 34) = 0;
  return result;
}

kaldi::nnet1::Padding2DComponent *kaldi::nnet1::Padding2DComponent::Padding2DComponent(kaldi::nnet1::Padding2DComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F2D11DA0;
  kaldi::nnet1::Padding2DComponent::Init(this);
  return this;
}

void sub_1B54DF768(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F2D15BB8;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::KlHmm *kaldi::nnet1::KlHmm::KlHmm(kaldi::nnet1::KlHmm *this, uint64_t a2, uint64_t a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F2D16458;
  kaldi::Matrix<double>::Matrix(this + 48, a3, a2, 0, 0);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 11) = &unk_1F2D0EE38;
  *(this + 128) = 0;
  return this;
}

void sub_1B54DF834(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F2D15BB8;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SentenceAveragingComponent::SentenceAveragingComponent(kaldi::nnet1::SentenceAveragingComponent *this, int a2, int a3, float a4)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F2D279F8;
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F2D16FA0;
  kaldi::nnet1::Nnet::Nnet((this + 88));
}

double kaldi::nnet1::FramePoolingComponent::FramePoolingComponent(kaldi::nnet1::FramePoolingComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 6) = &unk_1F2D279F8;
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F2D161F8;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 42) = 1008981770;
  *(this + 172) = 0;
  return result;
}

kaldi::nnet1::SharedNceComponent *kaldi::nnet1::SharedNceComponent::SharedNceComponent(kaldi::nnet1::SharedNceComponent *this, uint64_t a2, uint64_t a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F2D279F8;
  *(this + 56) = xmmword_1B5AE0070;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F2D170C8;
  kaldi::CuMatrix<float>::CuMatrix(this + 11, a3, a2, 0, 0, 0);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = &unk_1F2D3AC18;
  *(this + 20) = 0;
  kaldi::CuVector<float>::Resize(this + 136, a3, 0);
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = &unk_1F2D0EE38;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = &unk_1F2D0EE38;
  *(this + 256) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 33) = &unk_1F2D0EE38;
  *(this + 304) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 39) = &unk_1F2D3AC18;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = &unk_1F2D3AC18;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  *(this + 46) = 0;
  *(this + 47) = &unk_1F2D3AC18;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 51) = _D0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  return this;
}

void sub_1B54DFBB8(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 88);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

kaldi::nnet1::InterpolationComponent *kaldi::nnet1::InterpolationComponent::InterpolationComponent(kaldi::nnet1::InterpolationComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v4 = (this + 48);
  *this = &unk_1F2D16390;
  v5 = a2 / a3;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (a2 % a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "The input dimension is not divisible by the output dimension", 60);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 1.0 / v5;
    do
    {
      v8 = *(this + 8);
      if (v6 >= v8)
      {
        v9 = *v4;
        v10 = v6 - *v4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v4, v14);
        }

        *(4 * v11) = v7;
        v6 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *(this + 6);
        *(this + 6) = 0;
        *(this + 7) = v6;
        *(this + 8) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(this + 7) = v6;
      --v5;
    }

    while (v5);
  }

  return this;
}

void sub_1B54DFD9C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  *v1 = v2;
  v6 = v1[3];
  if (v6)
  {
    v1[4] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::CompressedWordTransComponent *kaldi::nnet1::CompressedWordTransComponent::CompressedWordTransComponent(kaldi::nnet1::CompressedWordTransComponent *this, uint64_t a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F2D17530;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 6) = &unk_1F2D3AC18;
  *(this + 7) = 0;
  kaldi::CuVector<float>::Resize(this + 48, a2, 0);
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 24) = -1;
  return this;
}

void sub_1B54DFE5C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F2D15BB8;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  *(this + *(*this - 48)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  return this;
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, uint64_t *a2)
{
  v3 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, a2 + 1);
  v4 = *a2;
  *v3 = *a2;
  *(v3 + *(v4 - 40)) = a2[5];
  *(v3 + *(*v3 - 48)) = a2[6];
  *(v3 + *(*v3 - 56)) = a2[7];
  result = 0.0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  v3[1] = &unk_1F2D0EE38;
  *(v3 + 48) = 0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  v3[7] = &unk_1F2D0EE38;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 27) = 1065353216;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  return result;
}

void kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, uint64_t *a2)
{
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, a2 + 1);
  v3 = *a2;
  *v4 = *a2;
  *(v4 + *(v3 - 40)) = a2[9];
  *(v4 + *(*v4 - 48)) = a2[10];
  *(v4 + *(*v4 - 56)) = a2[11];
  *(v4 + 144) = -1;
}

uint64_t kaldi::nnet1::RelaxedSoftmax::RelaxedSoftmax(uint64_t this, int a2, int a3, float a4)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *this = &unk_1F2D17698;
  *(this + 48) = a4;
  if (a4 <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Relaxation factor must be positive; found: ", 43);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return this;
}

void sub_1B54E0370(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::BlockSoftmax *kaldi::nnet1::BlockSoftmax::BlockSoftmax(kaldi::nnet1::BlockSoftmax *this, const kaldi::nnet1::BlockSoftmax *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D15AF8;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  return this;
}

void sub_1B54E0464(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  *v1 = v2;
  v6 = v1[3];
  if (v6)
  {
    v1[4] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BlockSoftmax::InitOffset(std::vector<int> *this)
{
  v2 = this[2].__end_ - this[2].__begin_;
  LODWORD(v12[0]) = 0;
  std::vector<int>::resize(this + 3, v2 + 1, v12);
  begin = this[2].__begin_;
  end = this[2].__end_;
  v5 = end - begin;
  if (end != begin)
  {
    v6 = this[3].__begin_;
    v7 = v5 >> 2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = *v6;
    v8 = v6 + 1;
    v9 = v10;
    do
    {
      v11 = *begin++;
      v9 += v11;
      *v8++ = v9;
      --v7;
    }

    while (v7);
  }

  if (HIDWORD(this->__end_) != *(this[3].__end_ - 1))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "Total block dimensions and output dimension mismatch");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }
}

uint64_t kaldi::nnet1::Component::GetUnitOutput(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[2] != *(a2 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Non-matching dims! ", 19);
    v7 = (*(*a1 + 24))(a1);
    kaldi::nnet1::Component::TypeToMarker(v7, &v26);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v26;
    }

    else
    {
      v8 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, size);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " input-dim : ", 13);
    v12 = MEMORY[0x1B8C84C00](v11, a1[2]);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " data : ", 8);
    MEMORY[0x1B8C84C00](v13, *(a2 + 16));
    std::string::~string(&v26);
LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  if (*(a4 + 16) != *(a2 + 20))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Non-matching dims! Input batch size: ", 37);
    v16 = MEMORY[0x1B8C84C00](v15, *(a2 + 20));
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " output dim : ", 14);
    MEMORY[0x1B8C84C00](v17, *(a4 + 16));
    goto LABEL_16;
  }

  if (a1[3] <= a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Requested output for invalid unit: ", 35);
    v20 = MEMORY[0x1B8C84C00](v19, a3);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "; total units = ", 16);
    MEMORY[0x1B8C84C00](v21, a1[3]);
    goto LABEL_16;
  }

  v4 = *(*a1 + 144);

  return v4();
}

uint64_t kaldi::nnet1::Component::GetUnitOutput(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[2] != *(a2 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Non-matching dims! ", 19);
    v6 = (*(*a1 + 24))(a1);
    kaldi::nnet1::Component::TypeToMarker(v6, &v20);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v20;
    }

    else
    {
      v7 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, size);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " input-dim : ", 13);
    v11 = MEMORY[0x1B8C84C00](v10, a1[2]);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " data : ", 8);
    MEMORY[0x1B8C84C00](v12, *(a2 + 16));
    std::string::~string(&v20);
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
  }

  if (a1[3] <= a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Requested output for invalid unit: ", 35);
    v15 = MEMORY[0x1B8C84C00](v14, a3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; total units = ", 16);
    MEMORY[0x1B8C84C00](v16, a1[3]);
    goto LABEL_14;
  }

  v3 = *(*a1 + 152);

  return v3();
}

void *kaldi::operator<<<int>(void *a1, int *a2)
{
  memset(&__p, 0, sizeof(__p));
  kaldi::CuArray<int>::CopyToVec(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  if (__p.__end_ != __p.__begin_)
  {
    v3 = 0;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
      MEMORY[0x1B8C84C00](v4, __p.__begin_[v3++]);
    }

    while (v3 < __p.__end_ - __p.__begin_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ]\n", 3);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return a1;
}

void sub_1B54E09E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::AddShift *kaldi::nnet1::AddShift::AddShift(kaldi::nnet1::AddShift *this, const kaldi::nnet1::AddShift *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D172B0;
  *(this + 6) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F2D159D0;
  kaldi::CuVector<float>::CuVector(this + 11, a2 + 88);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 5);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 5);
  v6 = *(a2 + 21);
  v7 = *(a2 + 44);
  *(this + 23) = 0;
  *(this + 44) = v7;
  *(this + 21) = v6;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 184, *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 2);
  *(this + 208) = *(a2 + 208);
  return this;
}

void sub_1B54E0B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuVector<float>::~CuVector(v2 + 11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

void sub_1B54E0CAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::CuVector<float>::~CuVector(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AddShift::EnsureCorrs(kaldi::nnet1::AddShift *this)
{
  if ((*(this + 208) & 1) == 0)
  {
    v2 = *(this + 42);
    v3 = *(this + 20);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<kaldi::CuVector<float>>::resize(this + 15, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 18, v4);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = v2 & 0xFFFFFFFE;
      do
      {
        kaldi::CuVector<float>::Resize(*(this + 15) + v5, *(this + 26), 0);
        if (v6 == 2)
        {
          kaldi::CuVector<float>::Resize(*(this + 18) + v5, *(this + 26), 1);
          if (*(this + 42) == 3)
          {
            v7.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 18) + v5, v7);
          }
        }

        v5 += 32;
      }

      while (32 * v4 != v5);
    }

    std::vector<int>::resize((this + 184), v4);
    *(this + 208) = 1;
  }
}

kaldi::nnet1::Rescale *kaldi::nnet1::Rescale::Rescale(kaldi::nnet1::Rescale *this, const kaldi::nnet1::Rescale *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D172B0;
  *(this + 6) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F2D16E78;
  kaldi::CuVector<float>::CuVector(this + 11, a2 + 88);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 5);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 5);
  kaldi::CuMatrix<float>::CuMatrix(this + 168, a2 + 168, 111);
  v6 = *(a2 + 27);
  v7 = *(a2 + 56);
  *(this + 29) = 0;
  *(this + 56) = v7;
  *(this + 27) = v6;
  *(this + 30) = 0;
  *(this + 31) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 232, *(a2 + 29), *(a2 + 30), (*(a2 + 30) - *(a2 + 29)) >> 2);
  *(this + 256) = *(a2 + 256);
  return this;
}

void sub_1B54E0F34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 168);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuVector<float>::~CuVector(v2 + 11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Rescale::EnsureCorrs(kaldi::nnet1::Rescale *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    v2 = *(this + 54);
    v3 = *(this + 20);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<kaldi::CuVector<float>>::resize(this + 15, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 18, v4);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = v2 & 0xFFFFFFFE;
      do
      {
        kaldi::CuVector<float>::Resize(*(this + 15) + v5, *(this + 26), 0);
        if (v6 == 2)
        {
          kaldi::CuVector<float>::Resize(*(this + 18) + v5, *(this + 26), 1);
          if (*(this + 54) == 3)
          {
            v7.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 18) + v5, v7);
          }
        }

        v5 += 32;
      }

      while (32 * v4 != v5);
    }

    std::vector<int>::resize((this + 232), v4);
    *(this + 256) = 1;
  }
}

kaldi::nnet1::Rbm *kaldi::nnet1::Rbm::Rbm(kaldi::nnet1::Rbm *this, const kaldi::nnet1::Rbm *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D18010;
  v5 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v5;
  *this = &unk_1F2D169F0;
  kaldi::CuMatrix<float>::CuMatrix(this + 72, a2 + 72, 111);
  kaldi::CuVector<float>::CuVector(this + 15, a2 + 120);
  kaldi::CuVector<float>::CuVector(this + 19, a2 + 152);
  kaldi::CuMatrix<float>::CuMatrix(this + 184, a2 + 184, 111);
  kaldi::CuVector<float>::CuVector(this + 29, a2 + 232);
  kaldi::CuVector<float>::CuVector(this + 33, a2 + 264);
  *(this + 37) = *(a2 + 37);
  return this;
}

void sub_1B54E1190(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v1 + 29);
  kaldi::CuMatrix<float>::~CuMatrix((v1 + 23));
  kaldi::CuVector<float>::~CuVector(v1 + 19);
  kaldi::CuVector<float>::~CuVector(v1 + 15);
  kaldi::CuMatrix<float>::~CuMatrix((v1 + 9));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

float kaldi::nnet1::CheckNanInf<float>(uint64_t a1, char *a2)
{
  result = kaldi::CuMatrixBase<float>::Sum(a1);
  if (fabsf(result) == INFINITY)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "'inf' in ", 9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, a2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  return result;
}

float kaldi::nnet1::ComputeStdDev<float>(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 20);
  v4 = kaldi::CuMatrixBase<float>::Sum(a1);
  v5 = kaldi::CuMatrix<float>::CuMatrix(v14, a1, 111);
  kaldi::CuMatrixBase<float>::MulElements(v5, a1);
  v6 = kaldi::CuMatrixBase<float>::Sum(v14);
  v7 = (v3 * v2);
  v8 = v4 / v7;
  v9 = v6 / v7;
  if ((v9 - (v8 * v8)) >= 0.0)
  {
    v10 = v9 - (v8 * v8);
  }

  else
  {
    v10 = 0.0;
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Forcing the variance to be non-negative! ", 41);
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "->0.0", 5);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v13);
    }
  }

  kaldi::CuMatrix<float>::~CuMatrix(v14);
  return sqrtf(v10);
}

kaldi::nnet1::Recurrent *kaldi::nnet1::Recurrent::Recurrent(kaldi::nnet1::Recurrent *this, const kaldi::nnet1::Recurrent *a2)
{
  v4 = a2 + *(*a2 - 24);
  *(this + 66) = &unk_1F2D15BB8;
  v5 = *(v4 + 1);
  *(this + 272) = *(v4 + 8);
  *(this + 67) = v5;
  *(this + 69) = 0;
  *(this + 71) = 0;
  *(this + 70) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 552, *(v4 + 3), *(v4 + 4), (*(v4 + 4) - *(v4 + 3)) >> 3);
  *(this + 66) = &unk_1F2D172B0;
  *(this + 72) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(this + 599) = *(v4 + 71);
  *(this + 584) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F2D16E50, a2);
  *this = &unk_1F2D16AE0;
  *(this + 66) = &unk_1F2D16D30;
  kaldi::CuMatrix<float>::CuMatrix(this + 160, a2 + 160, 111);
  kaldi::CuVector<float>::CuVector(this + 26, a2 + 208);
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 240, *(a2 + 30), *(a2 + 31), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 31) - *(a2 + 30)) >> 4));
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 5);
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 288, *(a2 + 36), *(a2 + 37), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 37) - *(a2 + 36)) >> 4));
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 312, *(a2 + 39), *(a2 + 40), (*(a2 + 40) - *(a2 + 39)) >> 5);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 336, *(a2 + 42), *(a2 + 43), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 43) - *(a2 + 42)) >> 4));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 360, *(a2 + 45), *(a2 + 46), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 46) - *(a2 + 45)) >> 4));
  v7 = *(a2 + 24);
  *(this + 100) = *(a2 + 100);
  *(this + 24) = v7;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 51) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 408, *(a2 + 51), *(a2 + 52), (*(a2 + 52) - *(a2 + 51)) >> 2);
  kaldi::CuMatrix<float>::CuMatrix(this + 432, a2 + 432, 111);
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 480, *(a2 + 60), *(a2 + 61), (*(a2 + 61) - *(a2 + 60)) >> 5);
  *(this + 63) = 0;
  *(this + 64) = 0;
  *(this + 65) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 504, *(a2 + 63), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 63)) >> 4));
  return this;
}

void sub_1B54E16A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuMatrix<float>::~CuMatrix(v3 + 432);
  v5 = *(v3 + 51);
  if (v5)
  {
    *(v3 + 52) = v5;
    operator delete(v5);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuVector<float>::~CuVector(v3 + 26);
  kaldi::CuMatrix<float>::~CuMatrix(v3 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v3, off_1F2D16E50);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

void sub_1B54E1880(_Unwind_Exception *a1, uint64_t a2, ...)
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

void kaldi::nnet1::Recurrent::EnsureTrainingBuffers(kaldi::nnet1::Recurrent *this)
{
  if ((*(this + 389) & 1) == 0)
  {
    v2 = *(this + 39);
    v3 = *(this + 20);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize(this + 30, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 33, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 45, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 36, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 39, v4);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = (*(this + 24) + *(this + 24) * *(this + 25));
      v7 = v2 & 0xFFFFFFFE;
      do
      {
        kaldi::CuMatrix<float>::Resize((*(this + 30) + 48 * v5), *(this + 45), *(this + 44), 0, 0);
        kaldi::CuVector<float>::Resize(*(this + 33) + 32 * v5, *(this + 56), 0);
        kaldi::CuMatrix<float>::Resize((*(this + 45) + 48 * v5), v6, *(this + *(*this - 24) + 12), 0, 0);
        if (v7 == 2)
        {
          kaldi::CuMatrix<float>::Resize((*(this + 36) + 48 * v5), *(this + 45), *(this + 44), 1, 0);
          kaldi::CuVector<float>::Resize(*(this + 39) + 32 * v5, *(this + 56), 1);
          if (*(this + 39) == 3)
          {
            v8.i32[0] = 1.0;
            kaldi::CuMatrixBase<float>::Set(*(this + 36) + 48 * v5, v8);
            v9.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 39) + 32 * v5, v9);
          }
        }

        ++v5;
      }

      while (v5 != v4);
    }

    if (*(this + 100) > 0.0)
    {
      kaldi::CuMatrix<float>::Resize(this + 54, *(this + 45), *(this + 44), 1, 0);
    }

    *(this + 389) = 1;
  }
}

kaldi::nnet1::ConvolutionalComponent *kaldi::nnet1::ConvolutionalComponent::ConvolutionalComponent(kaldi::nnet1::ConvolutionalComponent *this, const kaldi::nnet1::ConvolutionalComponent *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D172B0;
  *(this + 6) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F2D15D38;
  v6 = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 11) = v6;
  kaldi::CuMatrix<float>::CuMatrix(this + 104, a2 + 104, 111);
  kaldi::CuVector<float>::CuVector(this + 19, a2 + 152);
  v7 = *(a2 + 23);
  *(this + 24) = 0;
  *(this + 23) = v7;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 192, *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 4));
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 5);
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 240, *(a2 + 30), *(a2 + 31), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 31) - *(a2 + 30)) >> 4));
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 5);
  v8 = *(a2 + 36);
  *(this + 74) = *(a2 + 74);
  *(this + 36) = v8;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 304, *(a2 + 38), *(a2 + 39), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 39) - *(a2 + 38)) >> 4));
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 328, *(a2 + 41), *(a2 + 42), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 42) - *(a2 + 41)) >> 4));
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 352, *(a2 + 44), *(a2 + 45), (*(a2 + 45) - *(a2 + 44)) >> 2);
  *(this + 376) = *(a2 + 376);
  return this;
}

void sub_1B54E1CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuVector<float>::~CuVector(v2 + 19);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 104);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalComponent::EnsureCorrs(kaldi::nnet1::ConvolutionalComponent *this)
{
  if ((*(this + 376) & 1) == 0)
  {
    v2 = *(this + 46);
    v3 = *(this + 20);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize(this + 24, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 27, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 30, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 33, v4);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = v2 & 0xFFFFFFFE;
      do
      {
        kaldi::CuMatrix<float>::Resize((*(this + 24) + 48 * v5), *(this + 31), *(this + 30), 0, 0);
        kaldi::CuVector<float>::Resize(*(this + 27) + 32 * v5, *(this + 31), 0);
        if (v6 == 2)
        {
          kaldi::CuMatrix<float>::Resize((*(this + 30) + 48 * v5), *(this + 31), *(this + 30), 1, 0);
          kaldi::CuVector<float>::Resize(*(this + 33) + 32 * v5, *(this + 31), 1);
          if (*(this + 46) == 3)
          {
            v7.i32[0] = 1.0;
            kaldi::CuMatrixBase<float>::Set(*(this + 30) + 48 * v5, v7);
            v8.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 33) + 32 * v5, v8);
          }
        }

        ++v5;
      }

      while (v5 != v4);
    }

    std::vector<int>::resize((this + 352), v4);
    *(this + 376) = 1;
  }
}

kaldi::nnet1::MaxPooling2DComponent *kaldi::nnet1::MaxPooling2DComponent::MaxPooling2DComponent(kaldi::nnet1::MaxPooling2DComponent *this, const kaldi::nnet1::MaxPooling2DComponent *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D15910;
  *(this + 3) = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  return this;
}

kaldi::nnet1::Desplice *kaldi::nnet1::Desplice::Desplice(kaldi::nnet1::Desplice *this, const kaldi::nnet1::Desplice *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D15F20;
  v5 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v5;
  kaldi::CuArray<int>::CuArray(this + 16, a2 + 16);
  kaldi::CuArray<int>::CuArray(this + 22, a2 + 22);
  kaldi::CuArray<int>::CuArray(this + 28, a2 + 28);
  kaldi::CuArray<int>::CuArray(this + 34, a2 + 34);
  return this;
}

void sub_1B54E1FFC(_Unwind_Exception *exception_object)
{
  v4 = v1[15];
  if (v4)
  {
    free(v4);
  }

  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 0;
  v5 = v1[12];
  if (v5)
  {
    free(v5);
  }

  v1[11] = 0;
  v1[12] = 0;
  v1[13] = 0;
  v6 = v1[9];
  if (v6)
  {
    free(v6);
  }

  v1[8] = 0;
  v1[9] = 0;
  v1[10] = 0;
  *v1 = v2;
  v7 = v1[3];
  if (v7)
  {
    v1[4] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Desplice::Init(kaldi::nnet1::Desplice *this)
{
  v2 = *(this + 12);
  v3 = *(this + 13) * v2;
  v4 = *(this + 14);
  v5 = *(this + 2);
  std::vector<int>::vector[abi:ne200100](&v28, *(this + 3) * v3);
  std::vector<int>::vector[abi:ne200100](&v26, *(this + 3) * v3);
  v6 = *(this + 13) * *(this + 2);
  LODWORD(__p) = -1;
  std::vector<int>::vector[abi:ne200100](&v24, v6);
  std::vector<int>::vector[abi:ne200100](&__p, *(this + 13) * *(this + 2));
  if (v3 >= 1)
  {
    v7 = 0;
    v8 = v5 / v4;
    v9 = v4 / v2;
    do
    {
      if (v8 >= 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = v28;
        v13 = v24;
        v14 = v26;
        v15 = __p;
        do
        {
          if (v9 >= 1)
          {
            v16 = 0;
            v17 = v10;
            do
            {
              v18 = *(this + 13);
              v19 = v7 / v18;
              v20 = v7 % v18;
              v21 = v19 + *(this + 12) * v16 + *(this + 14) * v11;
              v12[v17 + *(this + 3) * v7] = v20;
              v14[v17 + *(this + 3) * v7] = v21;
              v13[v21 + *(this + 2) * v20] = v7;
              v15[v21 + *(this + 2) * v20] = v10 + v16++;
              ++v17;
            }

            while (v9 != v16);
          }

          ++v11;
          v10 += v9;
        }

        while (v11 != v8);
      }

      ++v7;
    }

    while (v7 != v3);
  }

  kaldi::CuArray<int>::Resize(this + 64, (v29 - v28) >> 2, 1);
  memcpy(*(this + 9), v28, v29 - v28);
  kaldi::CuArray<int>::Resize(this + 88, (v27 - v26) >> 2, 1);
  memcpy(*(this + 12), v26, v27 - v26);
  kaldi::CuArray<int>::Resize(this + 112, (v25 - v24) >> 2, 1);
  memcpy(*(this + 15), v24, v25 - v24);
  kaldi::CuArray<int>::Resize(this + 136, (v23 - __p) >> 2, 1);
  memcpy(*(this + 18), __p, v23 - __p);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_1B54E22B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::FramePoolingComponent *kaldi::nnet1::FramePoolingComponent::FramePoolingComponent(kaldi::nnet1::FramePoolingComponent *this, const kaldi::nnet1::FramePoolingComponent *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D172B0;
  *(this + 6) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F2D161F8;
  *(this + 22) = *(a2 + 22);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 2);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<kaldi::Vector<float>>::__init_with_size[abi:ne200100]<kaldi::Vector<float>*,kaldi::Vector<float>*>(this + 120, *(a2 + 15), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 15)) >> 3));
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<kaldi::Vector<float>>::__init_with_size[abi:ne200100]<kaldi::Vector<float>*,kaldi::Vector<float>*>(this + 144, *(a2 + 18), *(a2 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 19) - *(a2 + 18)) >> 3));
  v6 = *(a2 + 42);
  *(this + 172) = *(a2 + 172);
  *(this + 42) = v6;
  return this;
}

void sub_1B54E248C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 13) = v5;
    operator delete(v5);
  }

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::Vector<float>>::__init_with_size[abi:ne200100]<kaldi::Vector<float>*,kaldi::Vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::Vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54E2534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

kaldi::nnet1::ParallelComponent *kaldi::nnet1::ParallelComponent::ParallelComponent(kaldi::nnet1::ParallelComponent *this, const kaldi::nnet1::ParallelComponent *a2)
{
  v4 = a2 + *(*a2 - 24);
  *(this + 26) = &unk_1F2D15BB8;
  v5 = *(v4 + 1);
  *(this + 112) = *(v4 + 8);
  *(this + 27) = v5;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 232, *(v4 + 3), *(v4 + 4), (*(v4 + 4) - *(v4 + 3)) >> 3);
  *(this + 26) = &unk_1F2D172B0;
  *(this + 32) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(this + 279) = *(v4 + 71);
  *(this + 264) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F2D169C8, a2);
  *this = &unk_1F2D165F0;
  *(this + 26) = &unk_1F2D168A8;
  *(this + 20) = &unk_1F2D16748;
  *(this + 21) = &unk_1F2D16770;
  v7 = *(a2 + 88);
  v8 = *(a2 + 178);
  *(this + 23) = 0;
  *(this + 178) = v8;
  *(this + 88) = v7;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<kaldi::nnet1::Nnet>::__init_with_size[abi:ne200100]<kaldi::nnet1::Nnet*,kaldi::nnet1::Nnet*>(this + 184, *(a2 + 23), *(a2 + 24), 0x51B3BEA3677D46CFLL * ((*(a2 + 24) - *(a2 + 23)) >> 3));
  return this;
}

void sub_1B54E2700(_Unwind_Exception *a1)
{
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v2, off_1F2D169C8);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::nnet1::Nnet>::__init_with_size[abi:ne200100]<kaldi::nnet1::Nnet*,kaldi::nnet1::Nnet*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::nnet1::Nnet>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54E2794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::nnet1::Nnet>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::nnet1::Nnet>::push_back[abi:ne200100](uint64_t a1, const kaldi::nnet1::Nnet *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::nnet1::Nnet>::__emplace_back_slow_path<kaldi::nnet1::Nnet const&>(a1, a2);
  }

  else
  {
    kaldi::nnet1::Nnet::Nnet(*(a1 + 8), a2);
    result = v3 + 376;
    *(a1 + 8) = v3 + 376;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<kaldi::nnet1::Nnet>::__emplace_back_slow_path<kaldi::nnet1::Nnet const&>(uint64_t a1, const kaldi::nnet1::Nnet *a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v6 = 0xAE4C415C9882B9;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>>(a1, v6);
  }

  v13 = 0;
  v14 = 376 * v2;
  kaldi::nnet1::Nnet::Nnet((376 * v2), a2);
  v15 = (376 * v2 + 376);
  v7 = *(a1 + 8);
  v8 = (376 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>,kaldi::nnet1::Nnet*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::nnet1::Nnet>::~__split_buffer(&v13);
  return v12;
}

void sub_1B54E293C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::nnet1::Nnet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

int32x2_t *kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(uint64_t *a1, int32x2_t *a2, int32x2_t *a3, uint64_t a4)
{
  if (((a1[1] - *a1) & 0x7FFFFFFF8) != 0)
  {
    v5 = (a1[9] + 24 * a4);
    v7 = *v5;
    v6 = v5[1];
    if (*v5 != v6)
    {
      v8 = 0;
      v9 = a3[4];
      v10 = v6 - v7 - 48;
      v11 = vdupq_n_s64(v10 / 0x30);
      v12 = v7 + 10;
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v8), xmmword_1B5AE0060)));
        if (v13.i8[0])
        {
          v12[-6] = v9;
        }

        if (v13.i8[4])
        {
          *v12 = v9;
        }

        v8 += 2;
        v12 += 12;
      }

      while (((v10 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v8);
    }

    v14 = kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(a1, a2, a4);
    kaldi::CuMatrix<float>::Resize(a3, *(v14 + 20), *(v14 + 16), 1, 0);

    return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v14, 111);
  }

  else
  {

    return kaldi::CuMatrix<float>::operator=(a3, a2);
  }
}

uint64_t kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = 3 * a3;
  kaldi::CuMatrix<float>::Resize(*(a1[9] + 24 * a3), *(a2 + 20), *(a2 + 16), 1, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(*(a1[9] + 8 * v7), a2, 111);
  v8 = *a1;
  v9 = (a1[1] - *a1) >> 3;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(v8 + 8 * v11++);
      v13 = (*(a1[9] + 24 * v6) + v10);
      kaldi::nnet1::Component::Propagate(v12, v13, v13 + 6, a3);
      v8 = *a1;
      v14 = a1[1] - *a1;
      v10 += 48;
    }

    while (v11 < (v14 >> 3));
    v9 = v14 >> 3;
  }

  return *(a1[9] + 24 * v6) + 48 * v9;
}

uint64_t kaldi::nnet1::CompressedWordTransComponent::SetVecTable(kaldi::nnet1::CompressedWordTransComponent *this, const kaldi::CompressedMatrix *a2)
{
  v2 = *a2;
  if (*a2)
  {
    LODWORD(v2) = *(v2 + 8);
  }

  v3 = *(this + 2);
  v4 = v2 / v3;
  *(this + 24) = v4;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(v3 - 1);
    v7 = (v3 + 3) & 0xFFFFFFFC;
    v8 = (*(this + 7) + 8);
    v9 = xmmword_1B5AE0050;
    v10 = xmmword_1B5AE0060;
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v6, v10));
      if (vuzp1_s16(v12, *v6.i8).u8[0])
      {
        *(v8 - 2) = v5;
      }

      if (vuzp1_s16(v12, *&v6).i8[2])
      {
        *(v8 - 1) = (v4 + v5);
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v9))).i32[1])
      {
        *v8 = (2 * v4 + v5);
        v8[1] = (3 * v4 + v5);
      }

      v9 = vaddq_s64(v9, v11);
      v10 = vaddq_s64(v10, v11);
      v5 += 4 * v4;
      v8 += 4;
      v7 -= 4;
    }

    while (v7);
  }

  return kaldi::CompressedMatrix::operator=(this + 80, a2);
}

kaldi::nnet1::SharedNceComponent *kaldi::nnet1::SharedNceComponent::SharedNceComponent(kaldi::nnet1::SharedNceComponent *this, const kaldi::nnet1::SharedNceComponent *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D172B0;
  *(this + 6) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F2D170C8;
  kaldi::CuMatrix<float>::CuMatrix(this + 88, a2 + 88, 111);
  kaldi::CuVector<float>::CuVector(this + 17, a2 + 136);
  kaldi::CuMatrix<float>::CuMatrix(this + 168, a2 + 168, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 216, a2 + 216, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 264, a2 + 264, 111);
  kaldi::CuVector<float>::CuVector(this + 39, a2 + 312);
  kaldi::CuVector<float>::CuVector(this + 43, a2 + 344);
  kaldi::CuVector<float>::CuVector(this + 47, a2 + 376);
  v6 = *(a2 + 408);
  *(this + 53) = *(a2 + 53);
  *(this + 408) = v6;
  return this;
}

void sub_1B54E2DA0(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v1 + 43);
  kaldi::CuVector<float>::~CuVector(v1 + 39);
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 264);
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 216);
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 168);
  kaldi::CuVector<float>::~CuVector(v1 + 17);
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 88);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

kaldi::nnet1::WordVecComponent *kaldi::nnet1::WordVecComponent::WordVecComponent(kaldi::nnet1::WordVecComponent *this, const kaldi::nnet1::WordVecComponent *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D172B0;
  *(this + 6) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F2D173D8;
  *(this + 11) = &unk_1F2D17508;
  kaldi::CuMatrix<float>::CuMatrix(this + 96, a2 + 96, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 144, a2 + 144, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 192, a2 + 192, 111);
  v6 = *(a2 + 15);
  *(this + 32) = *(a2 + 32);
  *(this + 15) = v6;
  kaldi::CuMatrix<float>::CuMatrix(this + 264, a2 + 264, 111);
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 312, *(a2 + 39), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 39)) >> 4));
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  std::vector<kaldi::CuSubMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*>(this + 336, *(a2 + 42), *(a2 + 43), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 43) - *(a2 + 42)) >> 3));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  std::vector<kaldi::CuSubMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*>(this + 360, *(a2 + 45), *(a2 + 46), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 46) - *(a2 + 45)) >> 3));
  return this;
}

void sub_1B54E2FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 264);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 192);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 144);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 96);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuSubMatrix<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54E30E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::CuSubMatrix<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a2 != a3)
  {
    v5 = a4;
    do
    {
      v6 = *(a2 + 32);
      *(result + 8) = *(a2 + 8);
      *(result + 16) = *(a2 + 16);
      *(result + 32) = v6;
      *result = &unk_1F2CFA908;
      result += 40;
      a2 += 40;
      v5 += 40;
    }

    while (a2 != a3);
  }

  return result;
}

void kaldi::nnet1::FofeWordVecComponent::Prepare(int32x2_t *this, uint64_t a2)
{
  if (this[51].i32[0] < a2)
  {
    kaldi::CuMatrix<float>::Resize(this + 49, 1, a2, 1, 0);
    v4 = this[50];
    *(*&v4 + 4 * a2 - 4) = 1065353216;
    v5 = (a2 - 2);
    if (a2 >= 2)
    {
      v6 = *(*&v4 + 4 * v5 + 4);
      do
      {
        v6 = v6 * *this[48].i32;
        *(*&v4 + 4 * v5--) = v6;
      }

      while (v5 != -1);
    }
  }

  v7 = this[1].u32[1];

  kaldi::CuMatrix<float>::Resize(this + 55, a2, v7, 1, 0);
}

void sub_1B54E489C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B54E4B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B54E4CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::VectorwiseQuantizedAffineTransform(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2D18A68;
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, a3, a2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = &unk_1F2D3AC18;
  *(a1 + 112) = 0;
  kaldi::CuVector<float>::Resize(a1 + 88, a3, 0);
  return a1;
}

void sub_1B54E4D9C(_Unwind_Exception *a1)
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

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::~VectorwiseQuantizedAffineTransform(void *a1)
{
  kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::~VectorwiseQuantizedAffineTransform(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
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