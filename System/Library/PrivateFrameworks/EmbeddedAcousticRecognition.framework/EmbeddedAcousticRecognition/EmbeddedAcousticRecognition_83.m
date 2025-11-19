void sub_1B562F8C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t *kaldi::SimpleWaveformReader::SimpleWaveformReader(int32x2_t *result, uint64_t a2, float32x2_t *a3, __int8 a4)
{
  *result = &unk_1F2D214A8;
  result[1] = a2;
  v4 = *a3;
  result[2] = vcvt_s32_f32(*a3);
  if (vmvn_s8(vceq_f32(v4, vdup_lane_s32(v4, 1))).u32[0])
  {
    operator new();
  }

  result[3] = 0;
  result[4].i8[0] = a4;
  return result;
}

uint64_t kaldi::SimpleWaveformReader::Compute(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = kaldi::MatrixBase<float>::NumRows(*a2);
  v5 = (*(a1 + 16) / *(a1 + 20) * ((*(*a1 + 8))(a1) * v4));
  if (v5 <= 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "No feature vectors requested?!", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v21);
    }

    return 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    kaldi::Vector<float>::Resize(&v21, v5, 1);
    v6 = (***(a1 + 8))();
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v7 = *(a1 + 24);
    if (v7 && (v8 = (*(**(a1 + 8) + 16))(*(a1 + 8)), kaldi::Resampler::Resample(v7, &v21, &v18, v8), *(a1 + 24)) && (v9 = v19, v19 > 0))
    {
      v10 = &v18;
    }

    else
    {
      v10 = &v21;
      v9 = v22;
    }

    v11 = (*(*a1 + 8))(a1);
    v12 = (*(*a1 + 8))(a1);
    v13 = (*(*a1 + 8))(a1);
    kaldi::Vector<float>::Resize(v10, ((v9 + v11 - 1) / v12 * v13), 2);
    v14 = *(v10 + 2);
    v15 = (*(*a1 + 8))(a1);
    v16 = (*(*a1 + 8))(a1);
    kaldi::Matrix<float>::Resize(v3, (v14 / v15), v16, 0, 0);
    kaldi::MatrixBase<float>::CopyRowsFromVec(v3, v10);
    if (*(a1 + 32) == 1)
    {
      kaldi::MatrixBase<float>::Scale(v3, 0.000030518);
    }

    kaldi::Vector<float>::Destroy(&v18);
    kaldi::Vector<float>::Destroy(&v21);
  }

  return v6;
}

void sub_1B562FC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::SimpleWaveformReader::NextSegment(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return 0;
}

void kaldi::SimpleWaveformReader::~SimpleWaveformReader(kaldi::SimpleWaveformReader *this)
{
  *this = &unk_1F2D214A8;
  v1 = *(this + 3);
  *(this + 3) = 0;
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      kaldi::Vector<float>::Destroy(v2 + 88);
      v4 = (v2 + 48);
      std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
      v3 = *(v2 + 24);
      if (v3)
      {
        *(v2 + 32) = v3;
        operator delete(v3);
      }

      MEMORY[0x1B8C85350](v2, 0x10B0C40587FD9DDLL);
    }

    MEMORY[0x1B8C85350](v1, 0x1020C4024DAA5DELL);
  }
}

{
  kaldi::SimpleWaveformReader::~SimpleWaveformReader(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::EndOfAudioPadder::NextSegment(uint64_t a1)
{
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(a1 + 36) = result;
  return result;
}

void kaldi::EndOfAudioPadder::~EndOfAudioPadder(kaldi::EndOfAudioPadder *this)
{
  *this = &unk_1F2D21518;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F2D21518;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlineCmnInput::~OnlineCmnInput(kaldi::OnlineCmnInput *this)
{
  *this = &unk_1F2D21A08;
  kaldi::Vector<float>::Destroy(this + 112);
  kaldi::Vector<float>::Destroy(this + 88);
  kaldi::Matrix<float>::~Matrix(this + 32);
}

{
  kaldi::OnlineCmnInput::~OnlineCmnInput(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineCmvnInput::Compute(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = kaldi::MatrixBase<float>::NumRows(*a2);
  v5 = kaldi::MatrixBase<float>::NumCols(v3);
  v6 = a1[9];
  result = (*(*a1 + 96))(a1, v3);
  if (result)
  {
    while (!kaldi::MatrixBase<float>::NumRows(v3))
    {
      v8 = a1[9];
      if (v8 == v6)
      {
        break;
      }

      kaldi::Matrix<float>::Resize(v3, v4, v5, 0, 0);
      LODWORD(v6) = v8;
      if (((*(*a1 + 96))(a1, v3) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t kaldi::OnlineCmvnInput::ComputeInternal(uint64_t a1, uint64_t a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::MatrixBase<float>::NumCols(a2);
  (*(*a1 + 8))(a1);
  kaldi::Matrix<float>::Matrix(v25);
  kaldi::Matrix<float>::Swap(v25, a2);
  v4 = *(a1 + 8);
  v21 = v25;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v5 = (**v4)();
  v6 = kaldi::MatrixBase<float>::NumRows(v25);
  v7 = v6;
  v8 = *(a1 + 72);
  if (v6 + v8 < *(a1 + 20))
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8 + v6;
    v12 = *(a1 + 80);
    v10 = (v11 - v12);
    if (v11 != v12)
    {
      v13 = (*(*a1 + 8))(a1);
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_9:
  kaldi::Matrix<float>::Resize(a2, v10, v13, 0, 0);
  if (v7 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v25[0];
      v17 = v26;
      v18 = kaldi::MatrixBase<float>::NumCols(v25);
      v21 = (v16 + 4 * v17 * v14);
      v22 = v18;
      kaldi::OnlineCmvnInput::AcceptFrame(a1, &v21);
      while (1)
      {
        v19 = *(a1 + 72);
        if (v19 < *(a1 + 16) || *(a1 + 80) >= v19)
        {
          break;
        }

        v22 = 0uLL;
        v21 = (*a2 + 4 * *(a2 + 16) * v15);
        LODWORD(v22) = kaldi::MatrixBase<float>::NumCols(a2);
        kaldi::OnlineCmvnInput::OutputFrame(a1, &v21);
        ++v15;
      }

      ++v14;
    }

    while (v14 != v7);
  }

  if (v15 < v10)
  {
    do
    {
      v22 = 0uLL;
      v21 = (*a2 + 4 * *(a2 + 16) * v15);
      LODWORD(v22) = kaldi::MatrixBase<float>::NumCols(a2);
      kaldi::OnlineCmvnInput::OutputFrame(a1, &v21);
      ++v15;
    }

    while (v10 != v15);
  }

  kaldi::Matrix<float>::~Matrix(v25);
  return v5;
}

void sub_1B5630398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::OnlineCmvnInput::AcceptFrame(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 72) % (*(a1 + 16) + 1);
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  v7 = v6 + 4 * *(v5 + 16) * v4;
  v9[2] = 0;
  v9[0] = v7;
  v9[1] = kaldi::MatrixBase<float>::NumCols(v5);
  result = kaldi::VectorBase<float>::CopyFromVec(v9, a2);
  ++*(a1 + 72);
  return result;
}

void kaldi::OnlineCmvnInput::OutputFrame(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (!v4)
  {
    if (*(a1 + 72) >= *(a1 + 20))
    {
      v5 = *(a1 + 20);
    }

    else
    {
      v5 = *(a1 + 72);
    }

    if (v5 < 1)
    {
      v4 = 0;
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = (*(a1 + 32) + 4 * *(a1 + 48) * i);
        v8 = kaldi::MatrixBase<float>::NumCols(a1 + 32);
        v42 = 0;
        v40 = v7;
        v41 = v8;
        kaldi::VectorBase<double>::AddVec<float>(a1 + 88, &v40, 1.0);
        if (*(a1 + 24) == 1)
        {
          v9 = (*(a1 + 32) + 4 * *(a1 + 48) * i);
          v10 = kaldi::MatrixBase<float>::NumCols(a1 + 32);
          v42 = 0;
          v40 = v9;
          v41 = v10;
          kaldi::VectorBase<double>::AddVec2<float>(a1 + 112, &v40, 1.0);
        }
      }

      v4 = *(a1 + 80);
    }
  }

  v11 = *(a1 + 16);
  v12 = v11;
  if (v4 < v11)
  {
    v13 = *(a1 + 20);
    if (v4 >= v13)
    {
      v11 = v4;
    }

    else if (*(a1 + 72) >= v13)
    {
      v11 = *(a1 + 20);
    }

    else
    {
      v11 = *(a1 + 72);
    }
  }

  v14 = *(a1 + 32);
  v41 = 0;
  v42 = 0;
  v40 = (v14 + 4 * (*(a1 + 48) * (v4 % (v12 + 1))));
  LODWORD(v41) = kaldi::MatrixBase<float>::NumCols(a1 + 32);
  kaldi::VectorBase<float>::CopyFromVec(a2, &v40);
  v15 = *(a1 + 136);
  v16 = v11;
  if (v15)
  {
    v17 = kaldi::MatrixBase<float>::NumRows(v15);
    v16 = v11;
    if (v17)
    {
      v16 = *(a1 + 152) + v11;
    }
  }

  v18 = -1.0 / v16;
  *&v18 = v18;
  kaldi::VectorBase<float>::AddVec<double>(a2, (a1 + 88), v18);
  if (*(a1 + 24) == 1 && *(a2 + 8) >= 1)
  {
    v19 = 0;
    while (1)
    {
      v20 = *(a1 + 136);
      if (!v20)
      {
        break;
      }

      v21 = kaldi::MatrixBase<float>::NumRows(v20);
      v22 = *(a1 + 88);
      v23 = *(a1 + 112);
      if (!v21)
      {
        goto LABEL_28;
      }

      v24 = (*(a1 + 152) + v11);
      v25 = *(v22 + 8 * v19) / v24;
LABEL_29:
      v26 = v25;
      v27 = *(v23 + 8 * v19) / v24 - (v26 * v26);
      if (v27 < 1.0e-20)
      {
        v27 = 1.0e-20;
      }

      *(*a2 + 4 * v19) = *(*a2 + 4 * v19) / sqrtf(v27);
      if (++v19 >= *(a2 + 8))
      {
        goto LABEL_32;
      }
    }

    v22 = *(a1 + 88);
    v23 = *(a1 + 112);
LABEL_28:
    v24 = v11;
    v25 = *(v22 + 8 * v19) / v11;
    goto LABEL_29;
  }

LABEL_32:
  if (*(a1 + 80) >= *(a1 + 20))
  {
    kaldi::VectorBase<double>::AddVec<float>(a1 + 88, &v40, 1.0);
    if (*(a1 + 24) == 1)
    {
      kaldi::VectorBase<double>::AddVec2<float>(a1 + 112, &v40, 1.0);
    }
  }

  v28 = *(a1 + 80);
  v29 = *(a1 + 16);
  if (v28 >= v29)
  {
    v30 = *(a1 + 32);
    v31 = *(a1 + 48);
    v39 = 0;
    v37 = (v30 + 4 * (v31 * ((v28 - v29) % (v29 + 1))));
    v38 = kaldi::MatrixBase<float>::NumCols(a1 + 32);
    kaldi::VectorBase<double>::AddVec<float>(a1 + 88, &v37, -1.0);
    if (*(a1 + 24) == 1)
    {
      v32 = *(a1 + 80);
      v33 = *(a1 + 16);
      v34 = *(a1 + 32);
      v35 = *(a1 + 48);
      v36 = kaldi::MatrixBase<float>::NumCols(a1 + 32);
      v39 = 0;
      v37 = (v34 + 4 * (v35 * ((v32 - v33) % (v33 + 1))));
      v38 = v36;
      kaldi::VectorBase<double>::AddVec2<float>(a1 + 112, &v37, -1.0);
    }

    v28 = *(a1 + 80);
  }

  *(a1 + 80) = v28 + 1;
}

uint64_t kaldi::OnlineSubsampleFe::OnlineSubsampleFe(uint64_t this, kaldi::OnlineFeatInputItf *a2, int a3)
{
  *this = &unk_1F2D21588;
  *(this + 8) = a2;
  *(this + 16) = a3;
  *(this + 20) = 0;
  return this;
}

uint64_t kaldi::OnlineSubsampleFe::Compute(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = (*(*a1 + 8))(a1);
  kaldi::MatrixBase<float>::NumRows(v4);
  kaldi::MatrixBase<float>::NumCols(v4);
  v6 = kaldi::MatrixBase<float>::NumRows(v4);
  kaldi::Matrix<float>::Matrix(v26, (*(a1 + 16) * v6), v5, 1, 0);
  *a2 = v26;
  v7 = *(a1 + 8);
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v25 = a2[2];
  v13 = (**v7)(v7, &v23, v9, v10, v11, v12);
  v14 = 0;
  for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v26); ++i)
  {
    if ((i + *(a1 + 20)) % *(a1 + 16))
    {
      v14 = v14;
    }

    else
    {
      v14 = (v14 + 1);
    }
  }

  kaldi::Matrix<float>::Resize(v4, v14, v5, 1, 0);
  v16 = 0;
  v17 = 0;
  while (v16 < kaldi::MatrixBase<float>::NumRows(v26))
  {
    v18 = *(a1 + 20);
    if (!(v18 % *(a1 + 16)))
    {
      v19 = v26[0];
      v20 = v27;
      v21 = kaldi::MatrixBase<float>::NumCols(v26);
      *&v24 = 0;
      *&v23 = v19 + 4 * v20 * v16;
      *(&v23 + 1) = v21;
      kaldi::MatrixBase<float>::CopyRowFromVec(v4, &v23, v17++);
      v18 = *(a1 + 20);
    }

    *(a1 + 20) = v18 + 1;
    ++v16;
  }

  kaldi::Matrix<float>::~Matrix(v26);
  return v13;
}

void sub_1B56309A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineSubsampleFe::NextSegment(uint64_t a1)
{
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (result)
  {
    *(a1 + 20) = 0;
  }

  return result;
}

uint64_t kaldi::OnlineLdaInput::OnlineLdaInput(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *a1 = &unk_1F2D215F8;
  *(a1 + 8) = a2;
  *(a1 + 16) = (*(*a2 + 8))(a2);
  *(a1 + 20) = a4;
  *(a1 + 24) = a5;
  kaldi::Matrix<float>::Matrix(a1 + 32);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  kaldi::Matrix<float>::Matrix(a1 + 96);
  v9 = a4 + a5 + 1;
  if (kaldi::MatrixBase<float>::NumCols(a3) == *(a1 + 16) * v9)
  {
    kaldi::Matrix<float>::operator=((a1 + 32), a3);
  }

  else
  {
    if (kaldi::MatrixBase<float>::NumCols(a3) != *(a1 + 16) * v9 + 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Invalid parameters supplied to OnlineLdaInput", 45);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    v10 = kaldi::MatrixBase<float>::NumRows(a3);
    v11 = kaldi::MatrixBase<float>::NumCols(a3);
    kaldi::Matrix<float>::Resize(a1 + 32, v10, (v11 - 1), 0, 0);
    LODWORD(v10) = kaldi::MatrixBase<float>::NumRows(a3);
    v12 = kaldi::MatrixBase<float>::NumCols(a3);
    kaldi::SubMatrix<float>::SubMatrix(v16, a3, 0, v10, 0, v12 - 1);
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 32), v16, 111);
    quasar::Bitmap::~Bitmap(v16);
    v13 = kaldi::MatrixBase<float>::NumRows(a3);
    kaldi::Vector<float>::Resize((a1 + 72), v13, 0);
    v14 = kaldi::MatrixBase<float>::NumCols(a3);
    kaldi::VectorBase<float>::CopyColFromMat<float>((a1 + 72), a3, v14 - 1);
  }

  return a1;
}

void sub_1B5630C1C(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v2 + 24);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Matrix<float>::~Matrix(v1 + 32);
  _Unwind_Resume(a1);
}

void kaldi::OnlineLdaInput::SpliceFrames(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = kaldi::MatrixBase<float>::NumRows(a1);
  v11 = kaldi::MatrixBase<float>::NumRows(a2) + v10;
  v12 = kaldi::MatrixBase<float>::NumRows(a3) - a4 + v11 + 1;
  v13 = kaldi::MatrixBase<float>::NumCols(a1);
  v14 = kaldi::MatrixBase<float>::NumCols(a2);
  v38 = a3;
  v15 = kaldi::MatrixBase<float>::NumCols(a3);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v13 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  if (v12 <= 0)
  {

    kaldi::Matrix<float>::Resize(a5, 0, 0, 0, 0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a5, v12, v17 * a4, 0, 0);
    v41 = v10;
    v42 = v17;
    v39 = v11;
    v40 = 4 * v17;
    v37 = -v11;
    v18 = 0;
    v19 = v10;
    v20 = 0;
    v33 = v12;
    v34 = a4;
    v36 = -v19;
    do
    {
      v21 = 0;
      v22 = v34;
      v35 = v20;
      do
      {
        v23 = *a5;
        v24 = *(a5 + 16);
        kaldi::MatrixBase<float>::NumCols(a5);
        v49 = 0;
        v50 = 0;
        v47 = v23 + v18 * v24 + v21;
        v48 = v42;
        if (v20 >= v41)
        {
          if (v20 >= v39)
          {
            v31 = *v38;
            v32 = *(v38 + 16);
            v30 = kaldi::MatrixBase<float>::NumCols(v38);
            v45 = 0;
            v46 = 0;
            v43 = (v31 + 4 * v32 * (v37 + v20));
          }

          else
          {
            v28 = *a2;
            v29 = *(a2 + 16);
            v30 = kaldi::MatrixBase<float>::NumCols(a2);
            v45 = 0;
            v46 = 0;
            v43 = (v28 + 4 * (v36 + v20) * v29);
          }

          v44 = v30;
          kaldi::VectorBase<float>::CopyFromVec(&v47, &v43);
        }

        else
        {
          v25 = *a1;
          v26 = *(a1 + 16);
          v27 = kaldi::MatrixBase<float>::NumCols(a1);
          v45 = 0;
          v46 = 0;
          v43 = (v25 + 4 * v20 * v26);
          v44 = v27;
          kaldi::VectorBase<float>::CopyFromVec(&v47, &v43);
        }

        v21 += v40;
        ++v20;
        --v22;
      }

      while (v22);
      v20 = v35 + 1;
      v18 += 4;
    }

    while (v35 + 1 != v33);
  }
}

void kaldi::OnlineLdaInput::TransformToOutput(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (kaldi::MatrixBase<float>::NumRows(a2))
  {
    v6 = kaldi::MatrixBase<float>::NumRows(a2);
    v7 = kaldi::MatrixBase<float>::NumRows(a1 + 32);
    kaldi::Matrix<float>::Resize(a3, v6, v7, 0, 0);
    kaldi::MatrixBase<float>::AddMatMat(a3, a2, 111, a1 + 32, 112);
    if (*(a1 + 80))
    {

      kaldi::MatrixBase<float>::AddVecToRows<float>(a3, (a1 + 72), 1.0);
    }
  }

  else
  {

    kaldi::Matrix<float>::Resize(a3, 0, 0, 0, 0);
  }
}

uint64_t kaldi::OnlineLdaInput::Compute(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  kaldi::MatrixBase<float>::NumRows(*a2);
  kaldi::MatrixBase<float>::NumCols(v4);
  kaldi::MatrixBase<float>::NumRows(a1 + 32);
  v5 = kaldi::MatrixBase<float>::NumRows(v4);
  kaldi::Matrix<float>::Matrix(v40, v5, *(a1 + 16), 0, 0);
  *a2 = v40;
  v6 = *(a1 + 8);
  v7 = a2[1];
  v37 = *a2;
  v38 = v7;
  v39 = a2[2];
  v8 = (**v6)();
  if (((kaldi::MatrixBase<float>::NumRows(v40) == 0) & v8) == 1)
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    v8 = 1;
  }

  else if ((kaldi::MatrixBase<float>::NumRows(v40) != 0) | v8 & 1 || kaldi::MatrixBase<float>::NumRows(a1 + 96))
  {
    if (!kaldi::MatrixBase<float>::NumRows(a1 + 96))
    {
      if (kaldi::MatrixBase<float>::NumRows(v40))
      {
        v22 = *(a1 + 20);
        if (v22)
        {
          kaldi::Matrix<float>::Resize(a1 + 96, v22, *(a1 + 16), 0, 0);
          if (*(a1 + 20) >= 1)
          {
            v23 = 0;
            do
            {
              v24 = *(a1 + 96);
              v25 = *(a1 + 112);
              v26 = kaldi::MatrixBase<float>::NumCols(a1 + 96);
              *&v38 = 0;
              *&v37 = v24 + 4 * v25 * v23;
              *(&v37 + 1) = v26;
              v27 = v40[0];
              v28 = kaldi::MatrixBase<float>::NumCols(v40);
              v31 = 0;
              v32 = 0;
              v29 = v27;
              v30 = v28;
              kaldi::VectorBase<float>::CopyFromVec(&v37, &v29);
              ++v23;
            }

            while (v23 < *(a1 + 20));
          }
        }
      }
    }

    kaldi::Matrix<float>::Matrix(&v37);
    if ((v8 & 1) == 0)
    {
      v9 = *(a1 + 24);
      if (v9 >= 1)
      {
        kaldi::Matrix<float>::Resize(&v37, v9, *(a1 + 16), 0, 0);
        if (*(a1 + 24) >= 1)
        {
          v10 = 0;
          do
          {
            if (kaldi::MatrixBase<float>::NumRows(v40) < 1)
            {
              v18 = v37;
              v19 = v38;
              v20 = kaldi::MatrixBase<float>::NumCols(&v37);
              v31 = 0;
              v32 = 0;
              v29 = (v18 + 4 * v19 * v10);
              v30 = v20;
              v14 = kaldi::MatrixBase<float>::NumRows(a1 + 96);
              v15 = *(a1 + 96);
              v16 = *(a1 + 112);
              v17 = kaldi::MatrixBase<float>::NumCols(a1 + 96);
            }

            else
            {
              v11 = v37;
              v12 = v38;
              v13 = kaldi::MatrixBase<float>::NumCols(&v37);
              v31 = 0;
              v32 = 0;
              v29 = (v11 + 4 * v12 * v10);
              v30 = v13;
              v14 = kaldi::MatrixBase<float>::NumRows(v40);
              v15 = v40[0];
              v16 = v41;
              v17 = kaldi::MatrixBase<float>::NumCols(v40);
            }

            v35 = 0;
            v36 = 0;
            v33 = (v15 + 4 * v16 * (v14 - 1));
            v34 = v17;
            kaldi::VectorBase<float>::CopyFromVec(&v29, &v33);
            ++v10;
          }

          while (v10 < *(a1 + 24));
        }
      }
    }

    kaldi::Matrix<float>::Matrix(&v29);
    kaldi::OnlineLdaInput::SpliceFrames(a1 + 96, v40, &v37, *(a1 + 20) + *(a1 + 24) + 1, &v29);
    kaldi::OnlineLdaInput::TransformToOutput(a1, &v29, v4);
    kaldi::OnlineLdaInput::ComputeNextRemainder(a1, v40);
    kaldi::Matrix<float>::~Matrix(&v29);
    kaldi::Matrix<float>::~Matrix(&v37);
  }

  else
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    v8 = 0;
  }

  kaldi::Matrix<float>::~Matrix(v40);
  return v8;
}

void sub_1B563138C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

void kaldi::OnlineLdaInput::ComputeNextRemainder(_DWORD *a1, uint64_t a2)
{
  v4 = a1[6] + a1[5];
  v5 = kaldi::MatrixBase<float>::NumRows((a1 + 24));
  v6 = kaldi::MatrixBase<float>::NumRows(a2) + v5;
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    kaldi::Matrix<float>::Matrix(v25, v7, a1[4], 0, 0);
    v17 = kaldi::MatrixBase<float>::NumRows((a1 + 24));
    v8 = kaldi::MatrixBase<float>::NumRows(a2);
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v17 - v7 + v8;
      v11 = v8 - v7;
      do
      {
        v23 = 0;
        v24 = 0;
        v22 = v25[0] + 4 * v26 * v9;
        LODWORD(v23) = kaldi::MatrixBase<float>::NumCols(v25);
        if (v10 >= v17)
        {
          v15 = *a2;
          v16 = *(a2 + 16);
          v14 = kaldi::MatrixBase<float>::NumCols(a2);
          v20 = 0;
          v21 = 0;
          v18 = (v15 + 4 * v16 * v11);
        }

        else
        {
          v12 = *(a1 + 12);
          v13 = a1[28];
          v14 = kaldi::MatrixBase<float>::NumCols((a1 + 24));
          v20 = 0;
          v21 = 0;
          v18 = (v12 + 4 * v13 * v10);
        }

        v19 = v14;
        kaldi::VectorBase<float>::CopyFromVec(&v22, &v18);
        ++v9;
        ++v10;
        ++v11;
        LODWORD(v7) = v7 - 1;
      }

      while (v7);
    }

    kaldi::Matrix<float>::operator=(a1 + 24, v25);
    kaldi::Matrix<float>::~Matrix(v25);
  }

  else
  {

    kaldi::Matrix<float>::Resize((a1 + 24), 0, 0, 0, 0);
  }
}

void sub_1B56315B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineLdaInput::NextSegment(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    kaldi::Matrix<float>::Resize(a1 + 96, 0, 0, 0, 0);
  }

  return v2;
}

uint64_t kaldi::OnlineTransformInput::OnlineTransformInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D21668;
  *(a1 + 8) = a2;
  *(a1 + 16) = (*(*a2 + 8))(a2);
  kaldi::Matrix<float>::Matrix(a1 + 24);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (kaldi::MatrixBase<float>::NumCols(a3) == *(a1 + 16))
  {
    kaldi::Matrix<float>::operator=((a1 + 24), a3);
    kaldi::Vector<float>::Resize((a1 + 64), 0, 0);
  }

  else
  {
    if (kaldi::MatrixBase<float>::NumCols(a3) != *(a1 + 16) + 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Invalid parameters supplied to OnlineTransformInput", 51);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
    }

    v5 = kaldi::MatrixBase<float>::NumRows(a3);
    kaldi::Matrix<float>::Resize(a1 + 24, v5, *(a1 + 16), 0, 0);
    v6 = kaldi::MatrixBase<float>::NumRows(a3);
    kaldi::SubMatrix<float>::SubMatrix(v9, a3, 0, v6, 0, *(a1 + 16));
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 24), v9, 111);
    quasar::Bitmap::~Bitmap(v9);
    v7 = kaldi::MatrixBase<float>::NumRows(a3);
    kaldi::Vector<float>::Resize((a1 + 64), v7, 0);
    kaldi::VectorBase<float>::CopyColFromMat<float>((a1 + 64), a3, *(a1 + 16));
  }

  return a1;
}

void sub_1B56317EC(_Unwind_Exception *a1)
{
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Matrix<float>::~Matrix(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineTransformInput::Compute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  kaldi::MatrixBase<float>::NumRows(*a2);
  kaldi::MatrixBase<float>::NumCols(v4);
  kaldi::MatrixBase<float>::NumRows(a1 + 24);
  kaldi::MatrixBase<float>::NumRows(v4);
  kaldi::MatrixBase<float>::NumCols(v4);
  (*(*a1 + 8))(a1);
  v5 = kaldi::MatrixBase<float>::NumRows(v4);
  v6 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  kaldi::Matrix<float>::Matrix(v18, v5, v6, 0, 0);
  *a2 = v18;
  v7 = *(a1 + 8);
  v8 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v8;
  v17[2] = *(a2 + 32);
  v13 = (**v7)(v7, v17, v9, v10, v11, v12);
  if (kaldi::MatrixBase<float>::NumRows(v18))
  {
    v14 = kaldi::MatrixBase<float>::NumRows(v18);
    v15 = kaldi::MatrixBase<float>::NumRows(a1 + 24);
    kaldi::Matrix<float>::Resize(v4, v14, v15, 0, 0);
    kaldi::MatrixBase<float>::AddMatMat(v4, v18, 111, a1 + 24, 112);
    if (*(a1 + 72))
    {
      kaldi::MatrixBase<float>::AddVecToRows<float>(v4, (a1 + 64), 1.0);
    }
  }

  else
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
  }

  kaldi::Matrix<float>::~Matrix(v18);
  return v13;
}

void sub_1B56319F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

kaldi::OnlineBufferingInput *kaldi::OnlineBufferingInput::OnlineBufferingInput(kaldi::OnlineBufferingInput *this, kaldi::OnlineFeatInputItf *a2, char a3)
{
  *this = &unk_1F2D216D8;
  *(this + 1) = a2;
  kaldi::Matrix<float>::Matrix(this + 16);
  *(this + 14) = 0;
  *(this + 60) = 1;
  *(this + 61) = a3;
  return this;
}

uint64_t kaldi::OnlineBufferingInput::NextSegment(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4 < kaldi::MatrixBase<float>::NumRows(a1 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "Can't start the next segment when the current segment is not done");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  v5 = (*(**(a1 + 8) + 40))(*(a1 + 8), a2);
  if (v5)
  {
    kaldi::Matrix<float>::Resize(a1 + 16, 0, 0, 0, 0);
    *(a1 + 56) = 0;
    *(a1 + 60) = 1;
  }

  return v5;
}

uint64_t kaldi::OnlinePadInput::OnlinePadInput(uint64_t this, kaldi::OnlineFeatInputItf *a2, int a3)
{
  *this = &unk_1F2D21748;
  *(this + 8) = a2;
  *(this + 16) = a3;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  if (a3 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "end_pad_ > 0", 12);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return this;
}

uint64_t kaldi::OnlinePadInput::Compute(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  v9 = a2[1];
  v18 = *a2;
  v7 = v18;
  v19 = v9;
  v20 = a2[2];
  v10 = (**v8)(v8, &v18, a3, a4, a5, a6);
  if (kaldi::MatrixBase<float>::NumRows(v7) >= 1)
  {
    v11 = *v7 + 4 * (*(v7 + 16) * (kaldi::MatrixBase<float>::NumRows(v7) - 1));
    v12 = kaldi::MatrixBase<float>::NumCols(v7);
    *&v19 = 0;
    *&v18 = v11;
    *(&v18 + 1) = v12;
    kaldi::Vector<float>::Resize((a1 + 24), v12, 1);
    kaldi::VectorBase<float>::CopyFromVec(a1 + 24, &v18);
  }

  if ((v10 & 1) == 0 && *(a1 + 32) >= 1)
  {
    v13 = kaldi::MatrixBase<float>::NumRows(v7);
    v14 = *(a1 + 16);
    v15 = (*(*a1 + 8))(a1);
    kaldi::Matrix<float>::Resize(v7, (v14 + v13), v15, 2, 0);
    v16 = kaldi::MatrixBase<float>::NumRows(v7);
    kaldi::SubMatrix<float>::SubMatrix(&v18, v7, v16 - *(a1 + 16), *(a1 + 16), 0, *(v7 + 8));
    kaldi::MatrixBase<float>::CopyRowsFromVec(&v18, (a1 + 24));
    quasar::Bitmap::~Bitmap(&v18);
  }

  return v10;
}

uint64_t kaldi::OnlinePadInput::NextSegment(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    kaldi::Vector<float>::Resize((a1 + 24), 0, 0);
  }

  return v2;
}

uint64_t kaldi::OnlineSpliceInput::NextSegment(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    kaldi::Matrix<float>::Resize(a1 + 32, 0, 0, 0, 0);
  }

  return v2;
}

uint64_t kaldi::OnlineSpliceBatchInput::NextSegment(uint64_t a1)
{
  v2 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  if (v2)
  {
    kaldi::Matrix<float>::Resize(a1 + 48, 0, 0, 0, 0);
  }

  return v2;
}

BOOL kaldi::OnlineRecordedInput::Compute(_DWORD *a1, int **a2)
{
  v3 = *a2;
  v4 = a1[2];
  if (v4 == kaldi::MatrixBase<float>::NumRows((a1 + 4)))
  {
    kaldi::Matrix<float>::Resize(v3, 0, 0, 0, 0);
    return 0;
  }

  else
  {
    kaldi::MatrixBase<float>::NumRows(v3);
    kaldi::MatrixBase<float>::NumCols(v3);
    (*(*a1 + 8))(a1);
    LODWORD(v6) = kaldi::MatrixBase<float>::NumRows((a1 + 4)) - a1[2];
    v7 = kaldi::MatrixBase<float>::NumRows(v3);
    if (v6 >= v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = v6;
    }

    v8 = kaldi::MatrixBase<float>::NumCols((a1 + 4));
    kaldi::Matrix<float>::Resize(v3, v6, v8, 0, 0);
    v9 = a1[2];
    v10 = (*(*a1 + 8))(a1);
    kaldi::SubMatrix<float>::SubMatrix(v12, (a1 + 4), v9, v6, 0, v10);
    kaldi::MatrixBase<float>::CopyFromMat<float>(v3, v12, 111);
    quasar::Bitmap::~Bitmap(v12);
    v11 = a1[2] + v6;
    a1[2] = v11;
    return v11 != kaldi::MatrixBase<float>::NumRows((a1 + 4));
  }
}

uint64_t kaldi::OnlineRecordedInput::NextSegment(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return 0;
}

uint64_t kaldi::OnlineCacheInput::Compute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  if (!*(a2 + 16))
  {
    operator new();
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v13[2] = *(a2 + 32);
  v11 = (**v9)(v9, v13, a3, a4, a5, a6);
  std::mutex::lock((a1 + 40));
  if (kaldi::MatrixBase<float>::NumRows(v8) && *(a1 + 128) == 1)
  {
    operator new();
  }

  if (*(a2 + 16) && kaldi::MatrixBase<float>::NumRows(v8) && *(a1 + 129) == 1)
  {
    operator new();
  }

  std::mutex::unlock((a1 + 40));
  return v11;
}

void sub_1B5632204(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x1080C40EB13E0A1);
  std::mutex::unlock((v1 + 40));
  _Unwind_Resume(a1);
}

void kaldi::OnlineCacheInput::GetCachedData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 40));
  if (*(a1 + 128) == 1)
  {
    v6 = *(a1 + 16);
    if (*(a1 + 24) == v6)
    {
      v11 = 0;
      v7 = 0;
    }

    else
    {
      LODWORD(v7) = 0;
      v8 = 0;
      do
      {
        v9 = kaldi::MatrixBase<float>::NumRows(*(v6 + 8 * v8));
        v10 = kaldi::MatrixBase<float>::NumCols(*(*(a1 + 16) + 8 * v8));
        v7 = (v9 + v7);
        ++v8;
        v6 = *(a1 + 16);
      }

      while (v8 < (*(a1 + 24) - v6) >> 3);
      v11 = v10;
    }

    kaldi::Matrix<float>::Resize(a2, v7, v11, 0, 0);
    v12 = *(a1 + 16);
    if (*(a1 + 24) != v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = kaldi::MatrixBase<float>::NumRows(*(v12 + 8 * v13));
        kaldi::SubMatrix<float>::SubMatrix(v25, a2, v14, v15, 0, v11);
        kaldi::MatrixBase<float>::CopyFromMat<float>(v25, *(*(a1 + 16) + 8 * v13), 111);
        quasar::Bitmap::~Bitmap(v25);
        v14 += v15;
        ++v13;
        v12 = *(a1 + 16);
      }

      while (v13 < (*(a1 + 24) - v12) >> 3);
    }
  }

  if (a3)
  {
    if (*(a1 + 129))
    {
      v16 = *(a1 + 104);
      if (v16 != *(a1 + 112))
      {
        v17 = 0;
        LODWORD(v18) = 0;
        do
        {
          v18 = kaldi::MatrixBase<float>::NumRows(v16[v17++]) + v18;
          v16 = *(a1 + 104);
        }

        while (v17 < (*(a1 + 112) - v16) >> 3);
        v19 = kaldi::MatrixBase<float>::NumCols(*v16);
        v20 = v19;
        kaldi::Matrix<float>::Resize(a3, v18, v19, 0, 0);
        v21 = *(a1 + 104);
        if (*(a1 + 112) != v21)
        {
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = kaldi::MatrixBase<float>::NumRows(*(v21 + 8 * v22));
            kaldi::SubMatrix<float>::SubMatrix(v25, a3, v23, v24, 0, v20);
            kaldi::MatrixBase<float>::CopyFromMat<float>(v25, *(*(a1 + 104) + 8 * v22), 111);
            quasar::Bitmap::~Bitmap(v25);
            v23 += v24;
            ++v22;
            v21 = *(a1 + 104);
          }

          while (v22 < (*(a1 + 112) - v21) >> 3);
        }
      }
    }
  }

  std::mutex::unlock((a1 + 40));
}

void *kaldi::OnlineCacheInput::Deallocate(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = this[3];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        v5 = kaldi::Matrix<float>::~Matrix(this);
        this = MEMORY[0x1B8C85350](v5, 0x1080C40EB13E0A1);
        v2 = v1[2];
        v3 = v1[3];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  v1[3] = v2;
  v6 = v1[13];
  v7 = v1[14];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      this = *(v6 + 8 * v8);
      if (this)
      {
        v9 = kaldi::Matrix<float>::~Matrix(this);
        this = MEMORY[0x1B8C85350](v9, 0x1080C40EB13E0A1);
        v6 = v1[13];
        v7 = v1[14];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
  }

  v1[14] = v6;
  return this;
}

uint64_t kaldi::OnlineDeltaInput::OnlineDeltaInput(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = &unk_1F2D217B8;
  *(a1 + 8) = a3;
  *(a1 + 16) = *a2;
  *(a1 + 24) = (*(*a3 + 8))(a3);
  kaldi::Matrix<float>::Matrix(a1 + 32);
  return a1;
}

void kaldi::OnlineDeltaInput::AppendFrames(int *a1, int *a2, int *a3, uint64_t a4)
{
  v8 = kaldi::MatrixBase<float>::NumRows(a1);
  v9 = kaldi::MatrixBase<float>::NumRows(a2);
  v10 = kaldi::MatrixBase<float>::NumRows(a3);
  v11 = (v9 + v8 + v10);
  if (v9 + v8 + v10)
  {
    v12 = v10;
    LODWORD(v13) = kaldi::MatrixBase<float>::NumCols(a1);
    v14 = kaldi::MatrixBase<float>::NumCols(a2);
    v15 = kaldi::MatrixBase<float>::NumCols(a3);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    if (v13 <= v16)
    {
      v13 = v16;
    }

    else
    {
      v13 = v13;
    }

    kaldi::Matrix<float>::Resize(a4, v11, v13, 0, 0);
    if (v8)
    {
      kaldi::SubMatrix<float>::SubMatrix(v17, a4, 0, v8, 0, v13);
      kaldi::MatrixBase<float>::CopyFromMat<float>(v17, a1, 111);
      quasar::Bitmap::~Bitmap(v17);
    }

    if (v9)
    {
      kaldi::SubMatrix<float>::SubMatrix(v17, a4, v8, v9, 0, v13);
      kaldi::MatrixBase<float>::CopyFromMat<float>(v17, a2, 111);
      quasar::Bitmap::~Bitmap(v17);
    }

    if (v12)
    {
      kaldi::SubMatrix<float>::SubMatrix(v17, a4, v9 + v8, v12, 0, v13);
      kaldi::MatrixBase<float>::CopyFromMat<float>(v17, a3, 111);
      quasar::Bitmap::~Bitmap(v17);
    }
  }

  else
  {

    kaldi::Matrix<float>::Resize(a4, 0, 0, 0, 0);
  }
}

void sub_1B56327D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::OnlineDeltaInput::DeltaComputation(_DWORD *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = kaldi::MatrixBase<float>::NumRows(a2);
  v9 = v8;
  v10 = a1[6];
  v11 = a1[4] * a1[5];
  if (2 * v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = (2 * v11);
  }

  v13 = (*(*a1 + 8))(a1);
  if (v12 < 1)
  {
    kaldi::Matrix<float>::Resize(a4, 0, 0, 0, 0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a4, v12, v10, 0, 0);
    kaldi::SubMatrix<float>::SubMatrix(&v21, a2, v9 - v12, v12, 0, v10);
    kaldi::MatrixBase<float>::CopyFromMat<float>(a4, &v21, 111);
    quasar::Bitmap::~Bitmap(&v21);
  }

  v14 = (v9 - 2 * v11);
  if (v14 < 1)
  {
    kaldi::Matrix<float>::Resize(a3, 0, 0, 0, 0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a3, v14, v13, 0, 0);
    kaldi::DeltaFeatures::DeltaFeatures(&v21, a1 + 4);
    v15 = 0;
    do
    {
      v16 = a1[4];
      v17 = a1[5];
      v19 = 0;
      v20 = 0;
      v18 = (*a3 + 4 * *(a3 + 16) * v15);
      LODWORD(v19) = kaldi::MatrixBase<float>::NumCols(a3);
      kaldi::DeltaFeatures::Process(&v21, a2, v15 + v17 * v16, &v18);
      ++v15;
    }

    while (v14 != v15);
    v18 = &v22;
    std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
  }
}

void sub_1B56329B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineDeltaInput::Compute(uint64_t (****a1)(void), __int128 *a2)
{
  v4 = *a2;
  kaldi::MatrixBase<float>::NumRows(*a2);
  kaldi::MatrixBase<float>::NumCols(v4);
  ((*a1)[1])(a1);
  v5 = kaldi::MatrixBase<float>::NumRows(v4);
  kaldi::Matrix<float>::Matrix(v40, v5, *(a1 + 6), 0, 0);
  *a2 = v40;
  v6 = a1[1];
  v7 = a2[1];
  v37 = *a2;
  v38 = v7;
  v39 = a2[2];
  v8 = (**v6)();
  if (((kaldi::MatrixBase<float>::NumRows(v40) == 0) & v8) == 1)
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    v8 = 1;
  }

  else if ((kaldi::MatrixBase<float>::NumRows(v40) != 0) | v8 & 1 || kaldi::MatrixBase<float>::NumRows((a1 + 4)))
  {
    if (!kaldi::MatrixBase<float>::NumRows((a1 + 4)))
    {
      if (kaldi::MatrixBase<float>::NumRows(v40))
      {
        v22 = (*(a1 + 5) * *(a1 + 4));
        if (v22)
        {
          kaldi::Matrix<float>::Resize((a1 + 4), v22, *(a1 + 6), 0, 0);
          if (*(a1 + 5) * *(a1 + 4) >= 1)
          {
            v23 = 0;
            do
            {
              v24 = a1[4];
              v25 = *(a1 + 12);
              v26 = kaldi::MatrixBase<float>::NumCols((a1 + 4));
              *&v38 = 0;
              *&v37 = v24 + 4 * v25 * v23;
              *(&v37 + 1) = v26;
              v27 = *v40;
              v28 = kaldi::MatrixBase<float>::NumCols(v40);
              v31 = 0;
              v32 = 0;
              v29 = v27;
              v30 = v28;
              kaldi::VectorBase<float>::CopyFromVec(&v37, &v29);
              ++v23;
            }

            while (v23 < *(a1 + 5) * *(a1 + 4));
          }
        }
      }
    }

    kaldi::Matrix<float>::Matrix(&v37);
    if ((v8 & 1) == 0)
    {
      v9 = (*(a1 + 5) * *(a1 + 4));
      if (v9 >= 1)
      {
        kaldi::Matrix<float>::Resize(&v37, v9, *(a1 + 6), 0, 0);
        if (*(a1 + 5) * *(a1 + 4) >= 1)
        {
          v10 = 0;
          do
          {
            if (kaldi::MatrixBase<float>::NumRows(v40) < 1)
            {
              v18 = v37;
              v19 = v38;
              v20 = kaldi::MatrixBase<float>::NumCols(&v37);
              v31 = 0;
              v32 = 0;
              v29 = (v18 + 4 * v19 * v10);
              v30 = v20;
              v14 = kaldi::MatrixBase<float>::NumRows((a1 + 4));
              v15 = a1[4];
              v16 = *(a1 + 12);
              v17 = kaldi::MatrixBase<float>::NumCols((a1 + 4));
            }

            else
            {
              v11 = v37;
              v12 = v38;
              v13 = kaldi::MatrixBase<float>::NumCols(&v37);
              v31 = 0;
              v32 = 0;
              v29 = (v11 + 4 * v12 * v10);
              v30 = v13;
              v14 = kaldi::MatrixBase<float>::NumRows(v40);
              v15 = *v40;
              v16 = v41;
              v17 = kaldi::MatrixBase<float>::NumCols(v40);
            }

            v35 = 0;
            v36 = 0;
            v33 = v15 + 4 * v16 * (v14 - 1);
            v34 = v17;
            kaldi::VectorBase<float>::CopyFromVec(&v29, &v33);
            ++v10;
          }

          while (v10 < *(a1 + 5) * *(a1 + 4));
        }
      }
    }

    kaldi::Matrix<float>::Matrix(&v29);
    kaldi::OnlineDeltaInput::AppendFrames(a1 + 8, v40, &v37, &v29);
    kaldi::OnlineDeltaInput::DeltaComputation(a1, &v29, v4, a1 + 8);
    kaldi::Matrix<float>::~Matrix(&v29);
    kaldi::Matrix<float>::~Matrix(&v37);
  }

  else
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    v8 = 0;
  }

  kaldi::Matrix<float>::~Matrix(v40);
  return v8;
}

void sub_1B5632DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineDeltaInput::NextSegment(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    kaldi::Matrix<float>::Resize(a1 + 32, 0, 0, 0, 0);
  }

  return v2;
}

void kaldi::OnlineNnetForwardInput::ResetForStreaming(kaldi::OnlineNnetForwardInput *this)
{
  v2 = *(this + 3);
  if (v2 && (*(*v2 + 72))(v2))
  {
    (*(**(this + 3) + 88))(*(this + 3));
  }

  if (*(this + 35) >= 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v3, 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "appended context reset", 22);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v3);
    }

    kaldi::MatrixBase<float>::SetZero(this + 144);
  }
}

void sub_1B5632F4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineNnetForwardInput::NextSegment(void **a1, _DWORD *a2)
{
  v4 = (*(*a1[1] + 40))(a1[1]);
  if (v4)
  {
    v5 = *a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    ((*a1)[8])(a1);
  }

  return v4;
}

void kaldi::GasrEncoderBase::GasrEncoderBase(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D21828;
  *(a1 + 8) = a3;
  *(a1 + 12) = 1;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = a2;
  v10 = *a5;
  *(a1 + 64) = *a5;
  v11 = *(a5 + 8);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a1 + 64);
  }

  *(a1 + 80) = 0uLL;
  *(a1 + 96) = 0uLL;
  *(a1 + 112) = 0uLL;
  *(a1 + 128) = 0uLL;
  *(a1 + 144) = a8;
  if (kaldi::quasar::CEFusedAcousticEncoder::FrameSubsamplingFactor(v10))
  {
    v12 = kaldi::quasar::CEFusedAcousticEncoder::InputFrameCount(*(a1 + 64));
    v13 = kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(*(a1 + 64));
    *(a1 + 12) = (v12 - v13) / kaldi::quasar::CEFusedAcousticEncoder::FrameSubsamplingFactor(*(a1 + 64));
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "chunk size: ", 12);
      MEMORY[0x1B8C84C00](v14, *(a1 + 12));
      kaldi::KaldiLogMessage::~KaldiLogMessage(v16);
    }
  }

  v15 = (*(*a1 + 96))(a1);
  *(a1 + 52) = v15;
  if (*a6)
  {
    operator new();
  }

  if (v15 >= 1)
  {
    operator new();
  }

  operator new();
}

void sub_1B56335D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::GasrEncoderBase::~GasrEncoderBase(kaldi::GasrEncoderBase *this)
{
  *this = &unk_1F2D21828;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 12);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 15);
  kaldi::quasar::CEFusedAcousticEncoder::AttemptComputeEngineUpgrade(*(this + 8));
  v3 = kaldi::quasar::CEFusedAcousticEncoder::Engine(*(this + 8));
  (*(**v3 + 144))(*v3);
  v10 = (this + 120);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 96);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
    (*(*v7 + 80))(v7);
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    (*(*v8 + 80))(v8);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    (*(*v9 + 80))(v9);
  }
}

{
  kaldi::GasrEncoderBase::~GasrEncoderBase(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::GasrEncoderBase::NextSegment(uint64_t a1)
{
  result = (*(**(a1 + 56) + 40))(*(a1 + 56));
  if (result)
  {
    if (*(a1 + 48))
    {
      *(a1 + 48) = 0;
    }
  }

  return result;
}

void kaldi::GasrEncoderBase::Compute(uint64_t a1, __int128 *a2)
{
  v6 = 0;
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  v5 = a2[2];
  kaldi::GasrEncoderBase::PrepareFeature(a1);
}

void kaldi::SpeechActivityDetector::SpeechActivityDetector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, char a8, char a9)
{
  *a1 = &unk_1F2D218A0;
  *(a1 + 8) = a2;
  v9 = a5[1];
  *(a1 + 16) = *a5;
  *(a1 + 24) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = a7;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = a8;
  *(a1 + 53) = a9;
  operator new();
}

{
  kaldi::SpeechActivityDetector::SpeechActivityDetector(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1B5633F18(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A1C40760CCAD4);
  v4 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 80))(v4);
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::SpeechActivityDetector::Compute(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v31 = *a2;
  v32 = v4;
  v7 = *a2;
  v6 = *(a2 + 1);
  v8 = *(a1 + 40);
  v33 = v5;
  v9 = (**v8)();
  if (kaldi::MatrixBase<float>::NumRows(v7))
  {
    if (kaldi::MatrixBase<float>::NumCols(v7) >= 2)
    {
      kaldi::SubMatrix<float>::SubMatrix(v30, v7, 0, v7[3], 1, 1);
      kaldi::CuMatrix<float>::CuMatrix<float>(&v31, v30, 111, 0);
      quasar::Bitmap::~Bitmap(v30);
      v10 = kaldi::MatrixBase<float>::NumRows(v7);
      kaldi::Matrix<float>::Resize(v7, v10, 1, 1, 0);
      kaldi::CuMatrixBase<float>::CopyToMat<float>(&v31, v7, 111);
      kaldi::CuMatrix<float>::~CuMatrix(&v31);
    }

    kaldi::Matrix<float>::Swap(v6, v7);
    if (*(a1 + 52) == 1)
    {
      kaldi::MatrixBase<float>::ApplyExp(v6);
    }

    v11 = kaldi::MatrixBase<float>::NumRows(*(a2 + 2));
    if (*(a1 + 32) == 1 && kaldi::MatrixBase<float>::NumRows(v6) != v11)
    {
      if (v9 && *(a1 + 53) != 1 || *(a1 + 48) && *(a1 + 53) == 1)
      {
        v11 = v11 - kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(*(a1 + 16));
      }

      v18 = kaldi::MatrixBase<float>::NumCols(*(a2 + 2));
      kaldi::Matrix<float>::Resize(v7, v11, v18, 1, 0);
      kaldi::SubMatrix<float>::SubMatrix(&v31, *(a2 + 2), 0, v11, 0, *(*(a2 + 2) + 8));
      kaldi::MatrixBase<float>::CopyFromMat<float>(v7, &v31, 111);
      quasar::Bitmap::~Bitmap(&v31);
      v19 = kaldi::MatrixBase<float>::NumRows(v7);
      v20 = kaldi::MatrixBase<float>::NumRows(v6);
      if (v19 != v20)
      {
        v21 = v20;
        kaldi::Matrix<float>::Matrix(&v31, v6);
        kaldi::Matrix<float>::Resize(v6, v19, 1, 1, 0);
        v22 = (*(**(a1 + 40) + 24))(*(a1 + 40));
        v23 = (*(**(a1 + 8) + 24))(*(a1 + 8));
        if (v19 >= 1)
        {
          v24 = 0;
          v25 = v31;
          v26 = v32;
          v27 = *v6;
          v28 = 4 * *(v6 + 16);
          do
          {
            v29 = v24 / (v22 / v23);
            if (v29 > (v21 - 1))
            {
              v29 = (v21 - 1);
            }

            *v27 = *(v25 + 4 * v26 * v29);
            ++v24;
            v27 = (v27 + v28);
          }

          while (v19 != v24);
        }

        kaldi::Matrix<float>::~Matrix(&v31);
      }
    }

    else
    {
      if (*(a1 + 48) >= 1 && kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(*(a1 + 16)) >= 1)
      {
        v11 = v11 - kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(*(a1 + 16));
        v12 = kaldi::MatrixBase<float>::NumRows(v6);
        if (v12 == kaldi::MatrixBase<float>::NumRows(*(a2 + 2)))
        {
          kaldi::SubMatrix<float>::SubMatrix(&v31, v6, 0, v11, 0, *(v6 + 8));
          v13 = kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(*(a1 + 16));
          kaldi::SubMatrix<float>::SubMatrix(v30, v6, v13, v11, 0, *(v6 + 8));
          kaldi::MatrixBase<float>::CopyFromMat<float>(&v31, v30, 111);
          quasar::Bitmap::~Bitmap(v30);
          quasar::Bitmap::~Bitmap(&v31);
          kaldi::Matrix<float>::Resize(v6, v11, 1, 2, 0);
        }
      }

      v14 = kaldi::MatrixBase<float>::NumCols(*(a2 + 2));
      kaldi::Matrix<float>::Resize(v7, v11, v14, 1, 0);
      v15 = *(a2 + 2);
      v16 = kaldi::MatrixBase<float>::NumRows(v15);
      kaldi::SubMatrix<float>::SubMatrix(&v31, v15, v16 - v11, v11, 0, *(v15 + 8));
      kaldi::MatrixBase<float>::CopyFromMat<float>(v7, &v31, 111);
      quasar::Bitmap::~Bitmap(&v31);
    }

    ++*(a1 + 48);
  }

  return v9;
}

void sub_1B563440C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::SpeechActivityDetector::NextSegment(uint64_t a1)
{
  result = (*(**(a1 + 40) + 40))(*(a1 + 40));
  if (result)
  {
    *(a1 + 48) = 0;
  }

  return result;
}

uint64_t kaldi::VoiceActivityGating::VoiceActivityGating(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, uint64_t a11, int a12, char a13)
{
  *result = &unk_1F2D21910;
  *(result + 8) = a2;
  *(result + 16) = *a5;
  v13 = a5[1];
  *(result + 24) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 64) = 0;
  *(result + 32) = a7;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 52) = a9;
  *(result + 53) = a10;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 76) = a13;
  if ((a9 & 1) != 0 || a10)
  {
    operator new();
  }

  return result;
}

{
  return kaldi::VoiceActivityGating::VoiceActivityGating(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_1B5634980(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B56349E4);
}

uint64_t kaldi::VoiceActivityGating::ComputeVadScores(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6.n128_f64[0] = kaldi::Matrix<float>::Matrix(v16);
  v7 = *(a1 + 40);
  v10 = a2;
  v11 = a3;
  v12 = v16;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = (**v7)(v6);
  kaldi::Matrix<float>::~Matrix(v16);
  return v8;
}

void sub_1B5634A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VoiceActivityGating::NextSegment(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (!kaldi::VadGatedBuffer::IsInactive(*(a1 + 64)))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Can't start the next segment when the current segment is not done");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
    }

    v4 = *(a1 + 64);
    if (*(a1 + 76) == 1)
    {
      v5 = kaldi::quasar::CEFusedAcousticEncoder::FlexibleInputSizeIsAllowed(*(a1 + 16)) ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v9 = kaldi::VadGatedBuffer::Activate(v4, v5);
    SkippedFrames = kaldi::VadGatedBuffer::GetSkippedFrames(*(a1 + 64));
    v11 = *(a1 + 56) + SkippedFrames;
    *(a2 + 4) = (*(*a1 + 24))(a1) * v11;
    *(a2 + 8) = (*(*a1 + 24))(a1) * SkippedFrames;
    v12 = *(a1 + 72);
    *(a1 + 72) = v12 + 1;
    *a2 = v12;
    return v9;
  }

  else
  {
    if (*(a1 + 53) == 1)
    {
      if (kaldi::VadGatedBuffer::IsInactive(*(a1 + 64)))
      {
        kaldi::VadGatedBuffer::Activate(*(a1 + 64), 0);
      }

      v6 = *(a1 + 40);
    }

    else
    {
      v6 = *(a1 + 8);
    }

    v7 = *(*v6 + 40);

    return v7();
  }
}

uint64_t kaldi::AmFusionEncoderInput::DecideFrameOverlap(kaldi::quasar::CEFusedAcousticEncoder **this)
{
  v2 = kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(this[8]);
  v3 = this[20];
  if (!v3 || kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(v3) <= v2)
  {
    return v2;
  }

  v4 = this[20];

  return kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(v4);
}

void kaldi::AmFusionEncoderInput::AmFusionEncoderInput(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v11 = *MEMORY[0x1E69E9840];
  kaldi::GasrEncoderBase::GasrEncoderBase(a1, a2, a3, a4, a5, a7, a10, a11);
}

{
  kaldi::AmFusionEncoderInput::AmFusionEncoderInput(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_1B563508C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  v21 = *v19;
  if (*v19)
  {
    *(v17 + 32) = v21;
    operator delete(v21);
  }

  __p = v18 + 5;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v22 = *(v17 + 23);
  *(v17 + 23) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *v18;
  *v18 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(v17 + 21);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  kaldi::GasrEncoderBase::~GasrEncoderBase(v17);
  _Unwind_Resume(a1);
}

uint64_t kaldi::AmFusionEncoderInput::HasSilencePosterior(kaldi::AmFusionEncoderInput *this)
{
  if (*(this + 152))
  {
    return 1;
  }

  else
  {
    return (*(**(this + 7) + 48))();
  }
}

uint64_t kaldi::AmFusionEncoderInput::HasEndpointerScore(kaldi::AmFusionEncoderInput *this)
{
  if (*(this + 153))
  {
    return 1;
  }

  else
  {
    return (*(**(this + 7) + 56))();
  }
}

void kaldi::AmFusionEncoderInput::~AmFusionEncoderInput(kaldi::AmFusionEncoderInput *this)
{
  *this = &unk_1F2D21980;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 24);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 27);
  v3 = *(this + 20);
  if (v3)
  {
    kaldi::quasar::CEFusedAcousticEncoder::AttemptComputeEngineUpgrade(v3);
    v4 = kaldi::quasar::CEFusedAcousticEncoder::Engine(*(this + 20));
    (*(**v4 + 144))(*v4);
  }

  v5 = *(this + 31);
  if (v5)
  {
    *(this + 32) = v5;
    operator delete(v5);
  }

  v9 = (this + 216);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 192);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v6 = *(this + 23);
  *(this + 23) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 22);
  *(this + 22) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 21);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  kaldi::GasrEncoderBase::~GasrEncoderBase(this);
}

{
  kaldi::AmFusionEncoderInput::~AmFusionEncoderInput(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::AmFusionEncoderInput::NextSegment(uint64_t a1)
{
  result = (*(**(a1 + 56) + 40))(*(a1 + 56));
  if (result)
  {
    if (*(a1 + 48))
    {
      *(a1 + 48) = 0;
    }

    if (*(a1 + 240) >= 1)
    {
      *(a1 + 48) = 0;
      *(a1 + 240) = 0;
      *(a1 + 256) = *(a1 + 248);
    }
  }

  return result;
}

uint64_t kaldi::OnlineAcousticEncoderInput::Compute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  kaldi::MatrixBase<float>::NumRows(*a2);
  kaldi::MatrixBase<float>::NumCols(v4);
  (*(*a1 + 8))(a1);
  v5 = 88;
  if (*(a1 + 100) > 0)
  {
    v5 = 92;
  }

  v6 = *(a1 + v5);
  if (v6 >= 1)
  {
    v7 = (*(*a1 + 8))(a1);
    kaldi::Matrix<float>::Resize(v4, v6, v7, 1, 0);
  }

  v8 = kaldi::MatrixBase<float>::NumRows(v4);
  v9 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  kaldi::Matrix<float>::Matrix(v50, v8, v9, 1, 0);
  *a2 = v50;
  v10 = *(a1 + 8);
  v11 = *(a2 + 16);
  v39[0] = *a2;
  v39[1] = v11;
  v39[2] = *(a2 + 32);
  v12 = (**v10)();
  if (!kaldi::MatrixBase<float>::NumRows(v50))
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    goto LABEL_42;
  }

  v48 = 0u;
  v47 = 0u;
  v13 = &v46;
  v46 = &unk_1F2D0EE38;
  v49 = 0;
  v44 = 0u;
  v43 = 0u;
  v42 = &unk_1F2D0EE38;
  v45 = 0;
  kaldi::CuMatrix<float>::operator=(&v46, v50);
  v14 = *(a1 + 16);
  if (v14)
  {
    v13 = &v42;
    kaldi::nnet1::Nnet::Feedforward(*(a1 + 16), &v46, &v42, 0xFFFFFFFF, 0);
  }

  kaldi::Matrix<float>::Matrix(v40);
  v16 = &v42;
  if (!v14)
  {
    v16 = &v46;
  }

  kaldi::Matrix<float>::Resize(v15, v16[2].u32[1], v16[2].u32[0], 1, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(v13, v40, 111);
  if (*(a1 + 84) >= 1)
  {
    v17 = kaldi::MatrixBase<float>::NumRows(v40);
    v18 = *(a1 + 84);
    if (v17 > v18)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "feats_mat.NumRows() <= model_interface_size_", 44);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
    }

    v19 = kaldi::MatrixBase<float>::NumRows(v40);
    kaldi::handleStrictBatchOps(v40, v18 - v19, *(a1 + 96), *(a1 + 97));
  }

  for (i = 0; i < kaldi::MatrixBase<float>::NumRows(v40); ++i)
  {
    for (j = 0; j < kaldi::MatrixBase<float>::NumCols(v40); ++j)
    {
      v22 = *(*v40 + 4 * i * v41 + 4 * j) & 0x7FFFFFFF;
      if (v22 >= 2139095040)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "NaN or inf in features", 22);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
      }
    }
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v39, 3);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Batch ", 6);
    v24 = kaldi::MatrixBase<float>::NumRows(v40);
    MEMORY[0x1B8C84C00](v23, v24);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v39);
  }

  v37 = 0u;
  v36 = 0u;
  v35 = &unk_1F2D0EE38;
  v38 = 0;
  kaldi::CuMatrix<float>::operator=(&v35, v40);
  v33 = 0u;
  v32 = 0u;
  v31 = &unk_1F2D0EE38;
  v34 = 0;
  kaldi::quasar::CEAcousticEncoderNet::Encode(*(a1 + 24), (a1 + 112), &v35, v12 ^ 1, a1 + 112, &v31);
  if (*(a1 + 97) == 1)
  {
    v25 = *(v32 + 4 * v33 * (HIDWORD(v32) - 1));
    v26 = (*(*a1 + 8))(a1);
    kaldi::CuMatrix<float>::Resize(&v31, v25, v26, 2, 0);
  }

  ++*(a1 + 100);
  if (*(a1 + 80) == 1)
  {
    kaldi::CuMatrixBase<float>::ApplyLog(&v31);
  }

  if (*(a1 + 63) < 0)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_34;
    }

LABEL_31:
    if ((*(a1 + 81) & 1) != 0 || *(a1 + 80) == 1)
    {
      kaldi::nnet1::PdfPrior::SubtractOnLogpost(*(a1 + 72), &v31);
    }

    goto LABEL_34;
  }

  if (*(a1 + 63))
  {
    goto LABEL_31;
  }

LABEL_34:
  kaldi::Matrix<float>::Resize(v4, HIDWORD(v32), DWORD2(v32), 1, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(&v31, v4, 111);
  for (k = 0; k < kaldi::MatrixBase<float>::NumRows(v4); ++k)
  {
    for (m = 0; m < kaldi::MatrixBase<float>::NumCols(v4); ++m)
    {
      v29 = *(*v4 + 4 * k * v4[4] + 4 * m) & 0x7FFFFFFF;
      if (v29 >= 2139095040)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "NaN or inf in NNet output", 25);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
      }
    }
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v31);
  kaldi::CuMatrix<float>::~CuMatrix(&v35);
  kaldi::Matrix<float>::~Matrix(v40);
  kaldi::CuMatrix<float>::~CuMatrix(&v42);
  kaldi::CuMatrix<float>::~CuMatrix(&v46);
LABEL_42:
  kaldi::Matrix<float>::~Matrix(v50);
  return v12;
}

void sub_1B5635A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  kaldi::CuMatrix<float>::~CuMatrix(&a9);
  kaldi::CuMatrix<float>::~CuMatrix(&a15);
  JUMPOUT(0x1B5635AACLL);
}

void sub_1B5635AA8(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v1 - 256);
  kaldi::CuMatrix<float>::~CuMatrix(v1 - 216);
  kaldi::CuMatrix<float>::~CuMatrix(v1 - 168);
  kaldi::Matrix<float>::~Matrix(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineAcousticEncoderInput::NextSegment(uint64_t a1)
{
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (result)
  {
    if (*(a1 + 100))
    {
      *(a1 + 100) = 0;
    }
  }

  return result;
}

uint64_t kaldi::OnlineNnetForwardSkippedInput::Compute(uint64_t a1, uint64_t a2)
{
  v123 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v99 = *(a2 + 8);
  if (*(a1 + 88))
  {
    v5 = *(a2 + 8) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  kaldi::MatrixBase<float>::NumRows(v4);
  kaldi::MatrixBase<float>::NumCols(v4);
  (*(*a1 + 8))(a1);
  v7 = *(a1 + 160);
  if (v7 >= 1)
  {
    v8 = (*(*a1 + 8))(a1);
    kaldi::Matrix<float>::Resize(v4, v7, v8, 1, 0);
  }

  v9 = kaldi::MatrixBase<float>::NumRows(v4);
  v10 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  kaldi::Matrix<float>::Matrix(&v115, v9, v10, 0, 0);
  *a2 = &v115;
  v11 = *(a1 + 8);
  v12 = *(a2 + 16);
  *__p = *a2;
  v104 = v12;
  v105 = *(a2 + 32);
  v13 = (**v11)();
  if (!kaldi::MatrixBase<float>::NumRows(&v115))
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    goto LABEL_111;
  }

  v96 = kaldi::MatrixBase<float>::NumRows(&v115);
  if (*(a1 + 160) < 1)
  {
    v98 = 0;
  }

  else
  {
    v14 = kaldi::MatrixBase<float>::NumRows(&v115);
    v15 = *(a1 + 160);
    if (v14 > v15)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "input.NumRows() <= strict_batch_size_", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v98 = v15 - kaldi::MatrixBase<float>::NumRows(&v115);
    kaldi::handleStrictBatchOps(&v115, v98, *(a1 + 164), *(a1 + 368));
  }

  for (i = 0; i < kaldi::MatrixBase<float>::NumRows(&v115); ++i)
  {
    for (j = 0; j < kaldi::MatrixBase<float>::NumCols(&v115); ++j)
    {
      v18 = *(v115 + 4 * i * v117 + 4 * j);
      if (v18 == INFINITY)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "inf in features", 15);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }
    }
  }

  *(a1 + 96) += kaldi::MatrixBase<float>::NumRows(&v115);
  v19 = kaldi::MatrixBase<float>::NumRows(&v115);
  v20 = *(a1 + 104);
  v97 = v13;
  if (v19 > v20)
  {
    v21 = kaldi::MatrixBase<float>::NumRows(&v115);
    kaldi::SubMatrix<float>::SubMatrix(__p, &v115, v20, v21 - *(a1 + 104), 0, v116);
    kaldi::CuMatrix<float>::CuMatrix<float>(&v110, __p, 111, 0);
    quasar::Bitmap::~Bitmap(__p);
    kaldi::CuMatrixBase<float>::SetStride(&v110, *(a1 + 80) * v114);
    v108 = 0u;
    v107 = 0u;
    v22 = &v106;
    v106 = &unk_1F2D0EE38;
    v109 = 0;
    v23 = *(a1 + 16);
    if (!v23)
    {
      v22 = &v110;
    }

    v95 = v22;
    if (v23)
    {
      kaldi::nnet1::Nnet::Feedforward(v23, &v110, &v106, 0xFFFFFFFF, 0);
    }

    v24 = *(a1 + 376);
    if (v24)
    {
      v25 = *(v24 + 40);
      v26 = v23 ? &v106 : &v110;
      v27 = v26[2].i32[1];
      if (v25 + v27 <= *(a1 + 392) && v27 >= 1)
      {
        v28 = 0;
        if (v23)
        {
          v29 = &v106;
        }

        else
        {
          v29 = &v110;
        }

        do
        {
          kaldi::CuMatrix<float>::CuMatrix(__p, 1, v29[2].u32[0], 0, 0, 0);
          v30 = &v111;
          if (v23)
          {
            v30 = &v107;
          }

          v31 = *v30;
          v32 = &v114;
          if (v23)
          {
            v32 = &v108;
          }

          v33 = (v31 + 4 * *v32 * v28);
          v34 = v29[2].u32[0];
          v35 = v29[4];
          v120 = v33;
          v119 = &unk_1F2CFCA48;
          v121 = v34;
          v122 = v35;
          kaldi::CuMatrixBase<float>::CopyRowsFromVec(__p, &v119);
          std::deque<kaldi::CuMatrix<float>>::push_back(*(a1 + 376), __p);
          kaldi::CuMatrix<float>::~CuMatrix(__p);
          ++v28;
        }

        while (v28 < v26[2].i32[1]);
      }
    }

    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Batch ", 6);
      v37 = &v106;
      if (!v23)
      {
        v37 = &v110;
      }

      MEMORY[0x1B8C84C00](v36, v37[2].u32[1]);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    if (v6)
    {
      v38 = *(a1 + 24);
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Must use penultimate-compatible AM with silence nnet", 52);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      v40 = v39;
      v41 = *(a1 + 32);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v39 + 96))(v39, v95, a1 + 176, 1);
      (*(*v40 + 144))(v40, a1 + 176, a1 + 224);
      (*(**(a1 + 88) + 16))(*(a1 + 88), a1 + 176, a1 + 272);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      v6 = 1;
      goto LABEL_71;
    }

    v42 = *(a1 + 340);
    if (v42 || *(a1 + 336))
    {
      if (kaldi::g_kaldi_verbose_level >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "There is extra input, rows=", 27);
        v44 = MEMORY[0x1B8C84C00](v43, *(a1 + 340));
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", cols=", 7);
        MEMORY[0x1B8C84C00](v45, *(a1 + 336));
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
        v42 = *(a1 + 340);
      }

      if (v42 != 1 || (v23 ? (v46 = &v106) : (v46 = &v110), v47 = v46[2].u32[1], v47 <= 0))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "extra_input_.NumRows() == 1 && feats.NumRows() >= 1", 51);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      if (v47 == 1)
      {
        v119 = (a1 + 320);
        __p[1] = 0;
        *&v104 = 0;
        __p[0] = 0;
        std::vector<kaldi::CuMatrixBase<float> const*,std::allocator<kaldi::CuMatrixBase<float> const*>>::__init_with_size[abi:ne200100]<kaldi::CuMatrixBase<float> const* const*,kaldi::CuMatrixBase<float> const* const*>(__p, &v119, &v120, 1uLL);
        (*(**(a1 + 24) + 32))(*(a1 + 24), v95, __p, a1 + 224);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else
      {
        kaldi::CuMatrix<float>::CuMatrix(__p, v47, *(a1 + 336), 0, 0, 0);
        std::vector<int>::vector[abi:ne200100](&v119, v46[2].i32[1]);
        kaldi::CuMatrixBase<float>::CopyRows(__p, a1 + 320, &v119);
        v118 = __p;
        v101 = 0;
        v102 = 0;
        v100 = 0;
        std::vector<kaldi::CuMatrixBase<float> const*,std::allocator<kaldi::CuMatrixBase<float> const*>>::__init_with_size[abi:ne200100]<kaldi::CuMatrixBase<float> const* const*,kaldi::CuMatrixBase<float> const* const*>(&v100, &v118, &v119, 1uLL);
        (*(**(a1 + 24) + 32))(*(a1 + 24), v95, &v100, a1 + 224);
        if (v100)
        {
          v101 = v100;
          operator delete(v100);
        }

        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        kaldi::CuMatrix<float>::~CuMatrix(__p);
      }

      v6 = 0;
      goto LABEL_71;
    }

    v91 = *(a1 + 24);
    {
      v93 = v92;
      v94 = *(a1 + 32);
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(*v92 + 184))(v92))
      {
        v119 = (a1 + 272);
        __p[1] = 0;
        *&v104 = 0;
        __p[0] = 0;
        std::vector<kaldi::CuMatrix<float> *,std::allocator<kaldi::CuMatrix<float> *>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float> * const*,kaldi::CuMatrix<float> * const*>(__p, &v119, &v120, 1uLL);
        v119 = 0;
        v120 = 0;
        v121 = 0;
        (*(*v93 + 120))(v93, v95, &v119, a1 + 224, __p, 0);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v6 = *(a1 + 280) != 0;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        goto LABEL_124;
      }

      v91 = *(a1 + 24);
    }

    else
    {
      v94 = 0;
    }

    (*(*v91 + 16))(v91, v95, a1 + 224);
    v6 = 0;
LABEL_124:
    if (v94)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v94);
    }

LABEL_71:
    if (*(a1 + 84) == 1)
    {
      kaldi::CuMatrixBase<float>::ApplyLog(a1 + 224);
    }

    if (*(a1 + 63) < 0)
    {
      if (!*(a1 + 48))
      {
LABEL_80:
        kaldi::CuMatrix<float>::~CuMatrix(&v106);
        kaldi::CuMatrix<float>::~CuMatrix(&v110);
        goto LABEL_81;
      }
    }

    else if (!*(a1 + 63))
    {
      goto LABEL_80;
    }

    if ((*(a1 + 85) & 1) != 0 || *(a1 + 84) == 1)
    {
      kaldi::nnet1::PdfPrior::SubtractOnLogpost(*(a1 + 72), a1 + 224);
    }

    goto LABEL_80;
  }

LABEL_81:
  v48 = kaldi::MatrixBase<float>::NumRows(&v115);
  kaldi::Matrix<float>::Resize(v4, v48, *(a1 + 240), 0, 0);
  if (v6)
  {
    v49 = kaldi::MatrixBase<float>::NumRows(&v115);
    kaldi::Matrix<float>::Resize(v99, v49, *(a1 + 288), 1, 0);
  }

  for (k = 0; k < kaldi::MatrixBase<float>::NumRows(v4); ++k)
  {
    v51 = *(a1 + 104);
    v52 = k - v51;
    if (k >= v51)
    {
      v59 = *(a1 + 80);
      v60 = *v4;
      v61 = *(v4 + 16);
      v62 = kaldi::MatrixBase<float>::NumCols(v4);
      v63 = v52 / v59;
      v112 = 0;
      v113 = 0;
      v110 = v60 + 4 * v61 * k;
      v111 = v62;
      v64 = *(a1 + 240);
      v65 = *(a1 + 256);
      __p[1] = (*(a1 + 232) + 4 * *(a1 + 248) * v63);
      __p[0] = &unk_1F2CFCA48;
      *&v104 = v64;
      *(&v104 + 1) = v65;
      kaldi::CuVectorBase<float>::CopyToVec<float>(__p, &v110);
      if (v6)
      {
        v66 = *v99;
        v67 = *(v99 + 16);
        v68 = kaldi::MatrixBase<float>::NumCols(v99);
        v112 = 0;
        v113 = 0;
        v110 = v66 + 4 * v67 * k;
        v111 = v68;
        v69 = *(a1 + 288);
        v70 = *(a1 + 304);
        __p[1] = (*(a1 + 280) + 4 * *(a1 + 296) * v63);
        __p[0] = &unk_1F2CFCA48;
        *&v104 = v69;
        *(&v104 + 1) = v70;
        kaldi::CuVectorBase<float>::CopyToVec<float>(__p, &v110);
      }
    }

    else
    {
      v53 = *v4;
      v54 = *(v4 + 16);
      v55 = kaldi::MatrixBase<float>::NumCols(v4);
      *&v104 = 0;
      __p[0] = (v53 + 4 * v54 * k);
      __p[1] = v55;
      kaldi::VectorBase<float>::CopyFromVec(__p, (a1 + 112));
      if (v6)
      {
        v56 = *v99;
        v57 = *(v99 + 16);
        v58 = kaldi::MatrixBase<float>::NumCols(v99);
        *&v104 = 0;
        __p[0] = (v56 + 4 * v57 * k);
        __p[1] = v58;
        kaldi::VectorBase<float>::CopyFromVec(__p, (a1 + 136));
      }
    }
  }

  v71 = 0;
  v13 = v97;
  while (v71 < kaldi::MatrixBase<float>::NumRows(v4))
  {
    for (m = 0; m < kaldi::MatrixBase<float>::NumCols(v4); ++m)
    {
      v73 = *(*v4 + 4 * v71 * *(v4 + 16) + 4 * m);
      if (v73 == INFINITY)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "inf in NNet output", 18);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }
    }

    ++v71;
  }

  if (*(a1 + 100))
  {
    v74 = *(a1 + 104);
    if (v74 >= kaldi::MatrixBase<float>::NumRows(&v115))
    {
      *(a1 + 104) -= kaldi::MatrixBase<float>::NumRows(&v115);
    }

    else
    {
      v75 = *(a1 + 96);
      v76 = *(a1 + 80);
      if (v75 % v76)
      {
        *(a1 + 104) = v76 - v75 % v76;
        v77 = kaldi::MatrixBase<float>::NumRows(&v115);
        v78 = *v4;
        v79 = *(v4 + 16);
        v80 = kaldi::MatrixBase<float>::NumCols(v4);
        v81 = v77 - v75 + (v75 - 1) / v76 * v76;
        *&v104 = 0;
        __p[0] = (v78 + 4 * v79 * v81);
        __p[1] = v80;
        kaldi::Vector<float>::Resize((a1 + 112), v80, 1);
        kaldi::VectorBase<float>::CopyFromVec(a1 + 112, __p);
        if (v6)
        {
          v82 = *v99;
          v83 = *(v99 + 16);
          v84 = kaldi::MatrixBase<float>::NumCols(v99);
          *&v104 = 0;
          __p[0] = (v82 + 4 * v83 * v81);
          __p[1] = v84;
          kaldi::Vector<float>::Resize((a1 + 136), v84, 1);
          kaldi::VectorBase<float>::CopyFromVec(a1 + 136, __p);
        }
      }

      else
      {
        *(a1 + 104) = 0;
      }
    }
  }

  if (v98 >= 1)
  {
    if (v98 + v96 != kaldi::MatrixBase<float>::NumRows(v4))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "orig_input_size + frames_padded == output->NumRows()", 52);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    if (v6)
    {
      v85 = kaldi::MatrixBase<float>::NumRows(v4);
      if (v85 != kaldi::MatrixBase<float>::NumRows(v99))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "output->NumRows() == sil_post->NumRows()", 40);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }
    }

    v86 = kaldi::MatrixBase<float>::NumRows(v4);
    v87 = kaldi::MatrixBase<float>::NumCols(v4);
    kaldi::Matrix<float>::Resize(v4, (v86 - v98), v87, 2, 0);
    if (v6)
    {
      v88 = kaldi::MatrixBase<float>::NumRows(v99);
      v89 = kaldi::MatrixBase<float>::NumCols(v99);
      kaldi::Matrix<float>::Resize(v99, (v88 - v98), v89, 2, 0);
    }
  }

LABEL_111:
  kaldi::Matrix<float>::~Matrix(&v115);
  return v13;
}

void sub_1B5636BC0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5636BB8);
}

uint64_t kaldi::OnlineNnetForwardSkippedInput::NextSegment(uint64_t a1, _DWORD *a2)
{
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (result)
  {
    v5 = *a2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  return result;
}

uint64_t kaldi::OnlineAppendInput::Compute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = kaldi::MatrixBase<float>::NumRows(*a2);
  v6 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  kaldi::Matrix<float>::Resize(v4, v5, v6, 1, 0);
  v7 = *(a1 + 8);
  v8 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v8;
  v18[2] = *(a2 + 32);
  v13 = (**v7)(v7, v18, v9, v10, v11, v12);
  if (kaldi::MatrixBase<float>::NumRows(v4) >= 1)
  {
    v14 = kaldi::MatrixBase<float>::NumRows(v4);
    v15 = (*(*a1 + 8))(a1);
    kaldi::Matrix<float>::Resize(v4, v14, v15, 2, 0);
    v16 = (*(**(a1 + 8) + 8))(*(a1 + 8));
    kaldi::SubMatrix<float>::SubMatrix(v18, v4, 0, *(v4 + 12), v16, *(a1 + 24));
    kaldi::MatrixBase<float>::CopyRowsFromVec(v18, (a1 + 16));
    quasar::Bitmap::~Bitmap(v18);
  }

  return v13;
}

uint64_t std::deque<kaldi::quasar::SparseMatrix<float>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<kaldi::quasar::SparseMatrix<float>>::__add_back_capacity(a1);
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
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  }

  result = kaldi::quasar::SparseMatrix<float>::SparseMatrix(v8, a2);
  ++a1[5];
  return result;
}

uint64_t kaldi::quasar::ConvertDenseMatrixToSparseMatrixByMinimumValue<float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = kaldi::MatrixBase<float>::NumRows(a1);
  v7 = kaldi::MatrixBase<float>::NumCols(a1);
  v8 = 0;
  *a2 = v6;
  *(a2 + 4) = v7;
  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 24;
  *(a2 + 8) = a3;
  *(a2 + 32) = 0;
  while (1)
  {
    result = kaldi::MatrixBase<float>::NumRows(a1);
    if (v8 >= result)
    {
      break;
    }

    v10 = 0;
    v11 = v8;
    while (v10 < kaldi::MatrixBase<float>::NumCols(a1))
    {
      v12 = *(*a1 + 4 * v8 * *(a1 + 16) + 4 * v10);
      if (v12 > a3)
      {
        kaldi::quasar::SparseMatrix<float>::CheckBounds(a2, v8, v10);
        v13[0] = v11;
        v13[2] = v13;
        *(std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(a2 + 16, v13) + 36) = v12;
      }

      ++v10;
      v11 += 0x100000000;
    }

    ++v8;
  }

  return result;
}

uint64_t kaldi::OnlineFeatureMatrix::GetFrame@<X0>(kaldi::OnlineFeatureMatrix *this@<X0>, signed int a2@<W1>, uint64_t *a3@<X8>)
{
  v3 = *(this + 38);
  if (v3 > a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Attempting to get a discarded frame.");
    goto LABEL_6;
  }

  if ((kaldi::MatrixBase<float>::NumRows(this + 32) + v3) <= a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Attempt get frame without check its validity.");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v7 = *(this + 4) + 4 * *(this + 12) * (a2 - *(this + 38));
  result = kaldi::MatrixBase<float>::NumCols(this + 32);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v7;
  *(a3 + 2) = result;
  return result;
}

uint64_t kaldi::OnlineFeatureMatrix::GetAedFrame@<X0>(kaldi::OnlineFeatureMatrix *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  LODWORD(v3) = a2;
  if (!(*(**(this + 2) + 16))(*(this + 2)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "Attempting to get Aed frame when chunk size is 0");
    goto LABEL_10;
  }

  v6 = (this + 264);
  if (kaldi::MatrixBase<float>::NumRows(this + 264) < 1 || kaldi::MatrixBase<float>::NumRows(this + 264) <= v3)
  {
    v8 = v3 - kaldi::MatrixBase<float>::NumRows(this + 264);
    v9 = v8 / (*(**(this + 2) + 16))(*(this + 2));
    v10 = v9;
    if (*(this + 54) <= v9)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Attempting to access all_aed_feat_list_ by index ", 49);
      v14 = MEMORY[0x1B8C84C00](v13, v10);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " while size is ", 15);
      MEMORY[0x1B8C84C30](v15, *(this + 54));
    }

    else
    {
      v6 = (*(*(this + 50) + 8 * ((*(this + 53) + v9) / 0x66uLL)) + 40 * ((*(this + 53) + v9) % 0x66uLL));
      v3 = (v8 % (*(**(this + 2) + 16))(*(this + 2)));
      if (kaldi::MatrixBase<float>::NumRows(v6) > v3)
      {
        v7 = v6 + 2;
        goto LABEL_8;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Attempting to access aed_feat by row index ", 43);
      v17 = MEMORY[0x1B8C84C00](v16, v3);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " while number of rows is ", 25);
      v19 = kaldi::MatrixBase<float>::NumRows(v6);
      MEMORY[0x1B8C84C00](v18, v19);
    }

LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v7 = (this + 280);
LABEL_8:
  v11 = *v6 + 4 * *v7 * v3;
  result = kaldi::MatrixBase<float>::NumCols(v6);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v11;
  *(a3 + 2) = result;
  return result;
}

uint64_t kaldi::OnlineFeatureMatrix::GetEndpointerScore@<X0>(kaldi::OnlineFeatureMatrix *this@<X0>, signed int a2@<W1>, uint64_t *a3@<X8>)
{
  if ((*(this + 169) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Attempting to get endpointer score without providing the model output.");
    goto LABEL_8;
  }

  v6 = *(this + 38);
  if (v6 > a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Attempting to get a discarded frame.");
    goto LABEL_8;
  }

  if ((kaldi::MatrixBase<float>::NumRows(this + 72) + v6) <= a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Attempt get frame without check its validity.");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v7 = *(this + 9) + 4 * *(this + 22) * (a2 - *(this + 38));
  result = kaldi::MatrixBase<float>::NumCols(this + 72);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v7;
  *(a3 + 2) = result;
  return result;
}

float kaldi::OnlineFeatureMatrix::GetSilencePosterior(kaldi::OnlineFeatureMatrix *this, signed int a2)
{
  result = 0.0;
  if (*(this + 168) == 1)
  {
    v5 = *(this + 38);
    if (v5 > a2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Attempting to get a discarded frame.");
    }

    else
    {
      if ((kaldi::MatrixBase<float>::NumRows(this + 32) + v5) > a2)
      {
        return *(*(this + 14) + 4 * *(this + 32) * (a2 - *(this + 38)));
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Attempt get frame without check its validity.");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return result;
}

void kaldi::OnlineFeatureMatrix::GetCurrentBatch(uint64_t a1, int *a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(a1 + 32) - *(a1 + 157);
  kaldi::Matrix<float>::Resize(a2, v4, *(a1 + 24), 1, 0);
  if (*(a1 + 157) == 1)
  {
    kaldi::SubMatrix<float>::SubMatrix(v5, a1 + 32, 1, v4, 0, *(a1 + 24));
    kaldi::MatrixBase<float>::CopyFromMat<float>(a2, v5, 111);
    quasar::Bitmap::~Bitmap(v5);
  }

  else
  {

    kaldi::MatrixBase<float>::CopyFromMat<float>(a2, (a1 + 32), 111);
  }
}

unsigned int *kaldi::OnlineFeatureMatrix::GetAllFeat(kaldi::OnlineFeatureMatrix *this)
{
  v4 = *(this + 56);
  v2 = *(this + 57);
  v3 = (this + 224);
  v5 = *(this + 47);
  v6 = *(this + 44);
  v7 = *(this + 45);
  v8 = (v6 + 8 * (v5 / 0x66));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = &(*v8)[10 * (v5 % 0x66)];
  }

  v10 = *(this + 48) + v5;
  v11 = v10 / 0x66;
  v12 = v10 % 0x66;
  v13 = *(this + 56);
LABEL_5:
  v14 = v9 - 1020;
  while (1)
  {
    v15 = v7 == v6 ? 0 : *(v6 + 8 * v11) + 40 * v12;
    if (v9 == v15)
    {
      break;
    }

    v17 = *v9;
    v16 = v9[1];
    v9 += 10;
    if (!v13)
    {
      v2 = v16;
    }

    v13 += v17;
    v14 += 10;
    if (*v8 == v14)
    {
      v18 = v8[1];
      ++v8;
      v9 = v18;
      goto LABEL_5;
    }
  }

  kaldi::quasar::SparseMatrix<float>::Resize(this + 224, v13, v2, 2 * (v4 > 0));
  while (*(this + 48))
  {
    kaldi::quasar::SparseMatrix<float>::Merge(v3, *(*(this + 44) + 8 * (*(this + 47) / 0x66uLL)) + 40 * (*(this + 47) % 0x66uLL), v4);
    v4 += *(*(*(this + 44) + 8 * (*(this + 47) / 0x66uLL)) + 40 * (*(this + 47) % 0x66uLL));
    std::deque<kaldi::quasar::SparseMatrix<float>>::pop_front((v3 + 30));
  }

  v19 = *(this + 122);
  if (v19 >= 1)
  {
    v20 = *v3;
    if (*v3 >= 1)
    {
      v21 = v19 >= v20;
      v22 = v19 - v20;
      if (v21)
      {
        v23 = *(this + 31);
        *(this + 122) = v22;
        v24 = *(this + 57);
        std::__tree<int>::destroy(this + 240, v23);
        *(this + 31) = 0;
        *(this + 32) = 0;
        *(this + 30) = this + 248;
        *(this + 56) = 0;
        *(this + 57) = v24 & ~(v24 >> 31);
      }

      else
      {
        kaldi::quasar::SparseMatrix<float>::RemoveFirstNRows(v3, v19);
        *(this + 122) = 0;
      }
    }
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "features returned ", 18);
    v26 = MEMORY[0x1B8C84C00](v25, *v3);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " ", 1);
    MEMORY[0x1B8C84C00](v27, *(this + 57));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v29);
  }

  return v3;
}

uint64_t kaldi::OnlineFeatureMatrix::GetAllAedFeat(kaldi::OnlineFeatureMatrix *this)
{
  kaldi::MergeMatricesAndRemoveRows((this + 392), this + 264, this + 123);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "aed features returned ", 22);
    v3 = kaldi::MatrixBase<float>::NumRows(this + 264);
    MEMORY[0x1B8C84C00](v2, v3);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v5);
  }

  return this + 264;
}

void kaldi::MergeMatricesAndRemoveRows(int64x2_t *a1, uint64_t a2, int *a3)
{
  v5 = kaldi::MatrixBase<float>::NumRows(a2);
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  LODWORD(v7) = kaldi::MatrixBase<float>::NumCols(a2);
  v8 = a1[2].u64[0];
  v9 = a1->i64[1];
  v10 = a1[1].i64[0];
  v11 = (v9 + 8 * (v8 / 0x66));
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 40 * (v8 % 0x66);
  }

  while (1)
  {
    if (v10 == v9)
    {
      v14 = 0;
    }

    else
    {
      v13 = a1[2].i64[1] + a1[2].i64[0];
      v14 = *(v9 + 8 * (v13 / 0x66)) + 40 * (v13 % 0x66);
    }

    if (v12 == v14)
    {
      break;
    }

    v15 = kaldi::MatrixBase<float>::NumCols(v12);
    if (!v6)
    {
      LODWORD(v7) = v15;
    }

    v16 = kaldi::MatrixBase<float>::NumRows(v12);
    v12 += 40;
    if (v12 - *v11 == 4080)
    {
      v17 = v11[1];
      ++v11;
      v12 = v17;
    }

    v6 = (v16 + v6);
    v9 = a1->i64[1];
    v10 = a1[1].i64[0];
  }

  if (v6)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if (kaldi::MatrixBase<float>::NumRows(a2) < 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  kaldi::Matrix<float>::Resize(a2, v6, v7, v18, 0);
  while (a1[2].i64[1])
  {
    v19 = kaldi::MatrixBase<float>::NumRows(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x66uLL)) + 40 * (a1[2].i64[0] % 0x66uLL));
    kaldi::SubMatrix<float>::SubMatrix(v26, a2, v5, v19, 0, *(a2 + 8));
    kaldi::MatrixBase<float>::CopyFromMat<float>(v26, (*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x66uLL)) + 40 * (a1[2].i64[0] % 0x66uLL)), 111);
    quasar::Bitmap::~Bitmap(v26);
    v5 += kaldi::MatrixBase<float>::NumRows(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x66uLL)) + 40 * (a1[2].i64[0] % 0x66uLL));
    std::deque<kaldi::Matrix<float>>::pop_front(a1);
  }

  if (*a3 >= 1 && kaldi::MatrixBase<float>::NumRows(a2) >= 1)
  {
    v20 = *a3;
    if (v20 >= kaldi::MatrixBase<float>::NumRows(a2))
    {
      *a3 -= kaldi::MatrixBase<float>::NumRows(a2);
      v23 = kaldi::MatrixBase<float>::NumCols(a2);
      kaldi::Matrix<float>::Resize(a2, 0, v23, 0, 0);
    }

    else
    {
      v21 = *a3;
      v22 = kaldi::MatrixBase<float>::NumRows(a2);
      kaldi::SubMatrix<float>::SubMatrix(v25, a2, v21, v22 - *a3, 0, *(a2 + 8));
      kaldi::Matrix<float>::Matrix(v26, v25, 111);
      quasar::Bitmap::~Bitmap(v25);
      kaldi::Matrix<float>::Swap(a2, v26);
      *a3 = 0;
      kaldi::Matrix<float>::~Matrix(v26);
    }
  }
}

void sub_1B5637BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineFeatureMatrix::GetAllFusionFeat(kaldi::OnlineFeatureMatrix *this)
{
  kaldi::MergeMatricesAndRemoveRows((this + 440), this + 304, this + 124);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "fusion features returned ", 25);
    v3 = kaldi::MatrixBase<float>::NumRows(this + 304);
    MEMORY[0x1B8C84C00](v2, v3);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v5);
  }

  return this + 304;
}

unsigned int *kaldi::OnlineFeatureMatrix::GetCachedAllFeat(kaldi::OnlineFeatureMatrix *this)
{
  if (*(this + 48))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "There are features to merge.", 28);
LABEL_7:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v4);
      return kaldi::OnlineFeatureMatrix::GetAllFeat(this);
    }

    return kaldi::OnlineFeatureMatrix::GetAllFeat(this);
  }

  if (*(this + 122) >= 1)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "There are features to remove.", 29);
      goto LABEL_7;
    }

    return kaldi::OnlineFeatureMatrix::GetAllFeat(this);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "features returned ", 18);
    MEMORY[0x1B8C84C00](v3, *(this + 56));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v4);
  }

  return (this + 224);
}

uint64_t kaldi::OnlineFeatureMatrix::GetCachedAllAedFeat(kaldi::OnlineFeatureMatrix *this)
{
  if (*(this + 54))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "There are AED features to merge.", 32);
LABEL_7:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v5);
      return kaldi::OnlineFeatureMatrix::GetAllAedFeat(this);
    }

    return kaldi::OnlineFeatureMatrix::GetAllAedFeat(this);
  }

  if (*(this + 123) >= 1)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "There are AED features to remove.", 33);
      goto LABEL_7;
    }

    return kaldi::OnlineFeatureMatrix::GetAllAedFeat(this);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "aed features returned ", 22);
    v4 = kaldi::MatrixBase<float>::NumRows(this + 264);
    MEMORY[0x1B8C84C00](v3, v4);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v5);
  }

  return this + 264;
}

uint64_t kaldi::OnlineFeatureMatrix::GetCachedAllFusionFeat(kaldi::OnlineFeatureMatrix *this)
{
  if (*(this + 60))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "There are fusion features to merge.", 35);
LABEL_7:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v5);
      return kaldi::OnlineFeatureMatrix::GetAllFusionFeat(this);
    }

    return kaldi::OnlineFeatureMatrix::GetAllFusionFeat(this);
  }

  if (*(this + 124) >= 1)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "There are fusion features to remove.", 36);
      goto LABEL_7;
    }

    return kaldi::OnlineFeatureMatrix::GetAllFusionFeat(this);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "fusion features returned ", 25);
    v4 = kaldi::MatrixBase<float>::NumRows(this + 304);
    MEMORY[0x1B8C84C00](v3, v4);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v5);
  }

  return this + 304;
}

void kaldi::OnlineFeatureMatrix::ResetAedFeat(kaldi::OnlineFeatureMatrix *this, int a2)
{
  v3 = (this + 492);
  *(this + 123) += a2;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "aed feature cache has been reset, aed_feat_rows_to_remove_ ", 59);
    MEMORY[0x1B8C84C00](v4, *v3);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v5);
  }

  kaldi::MergeMatricesAndRemoveRows((this + 392), this + 264, v3);
}

void kaldi::OnlineFeatureMatrix::ResetFusionFeat(kaldi::OnlineFeatureMatrix *this, int a2)
{
  v4 = (*(**(this + 2) + 24))(*(this + 2));
  *(this + 124) = (*(this + 124) + (a2 * (v4 / (*(**(this + 2) + 32))(*(this + 2)))));
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "fusion feature cache has been reset, fusion_feat_rows_to_remove_ ", 65);
    MEMORY[0x1B8C84C00](v5, *(this + 124));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v6);
  }

  kaldi::MergeMatricesAndRemoveRows((this + 440), this + 304, this + 124);
}

uint64_t kaldi::OnlineFeatureMatrix::NextSegment(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 504);
  if (!v4)
  {
    operator new();
  }

  if (*(a1 + 512))
  {
    v6 = (*(**(a1 + 16) + 40))(*(a1 + 16), v4);
    *(a1 + 512) = v6;
    if (v6)
    {
      *(a1 + 496) = 0;
      *(a1 + 492) = 0;
      if (*(a1 + 432))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "all_aed_feat_list_.size() == 0");
      }

      else if (*(a1 + 480))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "all_fusion_feat_list_.size() == 0");
      }

      else if (kaldi::MatrixBase<float>::NumRows(a1 + 264) || kaldi::MatrixBase<float>::NumRows(a1 + 304))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "all_aed_feat_.NumRows() == 0 && all_fusion_feat_.NumRows() == 0");
      }

      else
      {
        if (!*(a1 + 492) && !*(a1 + 496))
        {
          *(a1 + 156) = 0;
          goto LABEL_13;
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "aed_feat_rows_to_remove_ == 0 && fusion_feat_rows_to_remove_ == 0");
      }

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
    }

LABEL_13:
    v5 = (a1 + 512);
    v4 = *(a1 + 504);
    goto LABEL_14;
  }

  v5 = (a1 + 512);
LABEL_14:
  v7 = *v4;
  *(a2 + 8) = *(v4 + 2);
  *a2 = v7;
  return *v5;
}

void kaldi::OnlineCmvnInput::~OnlineCmvnInput(kaldi::OnlineCmvnInput *this)
{
  *this = &unk_1F2D21A08;
  kaldi::Vector<float>::Destroy(this + 112);
  kaldi::Vector<float>::Destroy(this + 88);
  kaldi::Matrix<float>::~Matrix(this + 32);
}

{
  *this = &unk_1F2D21A08;
  kaldi::Vector<float>::Destroy(this + 112);
  kaldi::Vector<float>::Destroy(this + 88);
  kaldi::Matrix<float>::~Matrix(this + 32);

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlineCacheInput::~OnlineCacheInput(kaldi::OnlineCacheInput *this)
{
  kaldi::OnlineCacheInput::~OnlineCacheInput(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D21B28;
  kaldi::OnlineCacheInput::Deallocate(this);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((this + 40));
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void kaldi::OnlineRecordedInput::~OnlineRecordedInput(kaldi::OnlineRecordedInput *this)
{
  *this = &unk_1F2D21BB0;
  kaldi::Matrix<float>::~Matrix(this + 16);
}

{
  *this = &unk_1F2D21BB0;
  kaldi::Matrix<float>::~Matrix(this + 16);

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlineSpliceInput::~OnlineSpliceInput(kaldi::OnlineSpliceInput *this)
{
  *this = &unk_1F2D21C38;
  kaldi::Matrix<float>::~Matrix(this + 32);
}

{
  *this = &unk_1F2D21C38;
  kaldi::Matrix<float>::~Matrix(this + 32);

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlineSpliceBatchInput::~OnlineSpliceBatchInput(kaldi::OnlineSpliceBatchInput *this)
{
  *this = &unk_1F2D21CC0;
  kaldi::Matrix<float>::~Matrix(this + 48);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 80))(v3);
  }
}

{
  *this = &unk_1F2D21CC0;
  kaldi::Matrix<float>::~Matrix(this + 48);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 80))(v3);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineNnetForwardInput::HasSilencePosterior(kaldi::OnlineNnetForwardInput *this)
{
  if (*(this + 11))
  {
    return 1;
  }

  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v1 = (*(*v4 + 184))(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_1B5638A44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::OnlineNnetForwardInput::~OnlineNnetForwardInput(kaldi::OnlineNnetForwardInput *this)
{
  kaldi::OnlineNnetForwardInput::~OnlineNnetForwardInput(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D21D48;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 248);
  kaldi::CuMatrix<float>::~CuMatrix(this + 200);
  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3)
  {
    (*(*v3 + 80))(v3);
  }

  kaldi::Matrix<float>::~Matrix(this + 144);
  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    (*(*v5 + 80))(v5);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void kaldi::OnlineAcousticEncoderInput::~OnlineAcousticEncoderInput(kaldi::OnlineAcousticEncoderInput *this)
{
  *this = &unk_1F2D21DD0;
  v4 = (this + 112);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F2D21DD0;
  v4 = (this + 112);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1B8C85350](this, 0x10B3C40F537EBDBLL);
}

uint64_t kaldi::OnlineNnetForwardSkippedInput::HasSilencePosterior(kaldi::OnlineNnetForwardSkippedInput *this)
{
  if (*(this + 11))
  {
    return 1;
  }

  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v1 = (*(*v4 + 184))(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1;
}

void sub_1B5638D9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::OnlineNnetForwardSkippedInput::~OnlineNnetForwardSkippedInput(kaldi::OnlineNnetForwardSkippedInput *this)
{
  kaldi::OnlineNnetForwardSkippedInput::~OnlineNnetForwardSkippedInput(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D21E58;
  (*(**(this + 3) + 56))(*(this + 3));
  v2 = *(this + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 320);
  kaldi::CuMatrix<float>::~CuMatrix(this + 272);
  kaldi::CuMatrix<float>::~CuMatrix(this + 224);
  kaldi::CuMatrix<float>::~CuMatrix(this + 176);
  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 80))(v3);
  }

  kaldi::Vector<float>::Destroy(this + 136);
  kaldi::Vector<float>::Destroy(this + 112);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void kaldi::OnlineAppendInput::~OnlineAppendInput(kaldi::OnlineAppendInput *this)
{
  *this = &unk_1F2D21EE0;
  kaldi::Vector<float>::Destroy(this + 16);
}

{
  *this = &unk_1F2D21EE0;
  kaldi::Vector<float>::Destroy(this + 16);

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlineFeatureMatrix::~OnlineFeatureMatrix(kaldi::OnlineFeatureMatrix *this)
{
  kaldi::OnlineFeatureMatrix::~OnlineFeatureMatrix(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D21F68;
  v2 = *(this + 63);
  *(this + 63) = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C403E1C8BA9);
  }

  std::deque<kaldi::Matrix<float>>::~deque[abi:ne200100](this + 55);
  std::deque<kaldi::Matrix<float>>::~deque[abi:ne200100](this + 49);
  std::deque<kaldi::quasar::SparseMatrix<float>>::~deque[abi:ne200100](this + 43);
  kaldi::Matrix<float>::~Matrix(this + 304);
  kaldi::Matrix<float>::~Matrix(this + 264);
  std::__tree<int>::destroy(this + 240, *(this + 31));
  kaldi::Matrix<float>::~Matrix(this + 112);
  kaldi::Matrix<float>::~Matrix(this + 72);
  kaldi::Matrix<float>::~Matrix(this + 32);
}

void kaldi::OnlineLdaInput::~OnlineLdaInput(kaldi::OnlineLdaInput *this)
{
  *this = &unk_1F2D215F8;
  v2 = this + 72;
  kaldi::Matrix<float>::~Matrix(this + 96);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Matrix<float>::~Matrix(this + 32);
}

{
  *this = &unk_1F2D215F8;
  v2 = this + 72;
  kaldi::Matrix<float>::~Matrix(this + 96);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Matrix<float>::~Matrix(this + 32);

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlineTransformInput::~OnlineTransformInput(kaldi::OnlineTransformInput *this)
{
  *this = &unk_1F2D21668;
  kaldi::Vector<float>::Destroy(this + 64);
  kaldi::Matrix<float>::~Matrix(this + 24);
}

{
  *this = &unk_1F2D21668;
  kaldi::Vector<float>::Destroy(this + 64);
  kaldi::Matrix<float>::~Matrix(this + 24);

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlineBufferingInput::~OnlineBufferingInput(kaldi::OnlineBufferingInput *this)
{
  *this = &unk_1F2D216D8;
  kaldi::Matrix<float>::~Matrix(this + 16);
}

{
  *this = &unk_1F2D216D8;
  kaldi::Matrix<float>::~Matrix(this + 16);

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlinePadInput::~OnlinePadInput(kaldi::OnlinePadInput *this)
{
  *this = &unk_1F2D21748;
  kaldi::Vector<float>::Destroy(this + 24);
}

{
  *this = &unk_1F2D21748;
  kaldi::Vector<float>::Destroy(this + 24);

  JUMPOUT(0x1B8C85350);
}

void kaldi::OnlineDeltaInput::~OnlineDeltaInput(kaldi::OnlineDeltaInput *this)
{
  *this = &unk_1F2D217B8;
  kaldi::Matrix<float>::~Matrix(this + 32);
}

{
  *this = &unk_1F2D217B8;
  kaldi::Matrix<float>::~Matrix(this + 32);

  JUMPOUT(0x1B8C85350);
}

void kaldi::SpeechActivityDetector::~SpeechActivityDetector(kaldi::SpeechActivityDetector *this)
{
  *this = &unk_1F2D218A0;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F2D218A0;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::VoiceActivityGating::~VoiceActivityGating(kaldi::VoiceActivityGating *this)
{
  *this = &unk_1F2D21910;
  std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100](this + 8, 0);
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F2D21910;
  std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100](this + 8, 0);
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::SparseMatrix<float>::Resize(uint64_t a1, int a2, int a3, int a4)
{
  if (a3 >= 1 && a2 >= 1 && a4)
  {
    if (a4 != 1 && (*a1 > a2 || *(a1 + 4) > a3))
    {
      v7 = *(a1 + 16);
      v8 = (a1 + 24);
      if (v7 != (a1 + 24))
      {
        do
        {
          v9 = v7[1];
          if (*(v7 + 7) < a2 && *(v7 + 8) < a3)
          {
            if (v9)
            {
              do
              {
                v12 = v9;
                v9 = *v9;
              }

              while (v9);
            }

            else
            {
              do
              {
                v12 = v7[2];
                v13 = *v12 == v7;
                v7 = v12;
              }

              while (!v13);
            }
          }

          else
          {
            v11 = v7;
            if (v9)
            {
              do
              {
                v12 = v9;
                v9 = *v9;
              }

              while (v9);
            }

            else
            {
              do
              {
                v12 = v11[2];
                v13 = *v12 == v11;
                v11 = v12;
              }

              while (!v13);
            }

            std::__tree<std::string>::__remove_node_pointer((a1 + 16), v7);
            operator delete(v7);
          }

          v7 = v12;
        }

        while (v12 != v8);
      }
    }
  }

  else
  {
    v14 = (a1 + 24);
    std::__tree<int>::destroy(a1 + 16, *(a1 + 24));
    *v14 = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = a1 + 24;
  }

  *a1 = a2 & ~(a2 >> 31);
  *(a1 + 4) = a3 & ~(a3 >> 31);
}

uint64_t kaldi::quasar::SparseMatrix<float>::Merge(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 24);
  if (v3 != (a2 + 24))
  {
    v6 = result;
    do
    {
      v7 = *(v3 + 8);
      v8 = (*(v3 + 7) + a3);
      v13[0] = v8 | (v7 << 32);
      kaldi::quasar::SparseMatrix<float>::CheckBounds(v6, v8, v7);
      v9 = *(v3 + 9);
      v13[2] = v13;
      result = std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>((v6 + 4), v13);
      *(result + 36) = v9;
      v10 = v3[1];
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
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v4);
  }

  return result;
}

uint64_t std::deque<kaldi::quasar::SparseMatrix<float>>::pop_front(int64x2_t *a1)
{
  v2 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x66uLL)) + 40 * (a1[2].i64[0] % 0x66uLL);
  std::__tree<int>::destroy(v2 + 16, *(v2 + 24));
  a1[2] = vaddq_s64(a1[2], xmmword_1B5AE01E0);

  return std::deque<kaldi::quasar::SparseMatrix<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

void kaldi::quasar::SparseMatrix<float>::RemoveFirstNRows(uint64_t a1, int a2)
{
  v3 = *a1 - a2;
  if (*a1 <= a2)
  {
    v12 = *(a1 + 4);
    v13 = (a1 + 24);
    std::__tree<int>::destroy(a1 + 16, *(a1 + 24));
    *(a1 + 16) = v13;
    *(a1 + 32) = 0;
    *v13 = 0;
    *a1 = 0;
    *(a1 + 4) = v12 & ~(v12 >> 31);
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0;
    v15 = v16;
    v4 = *(a1 + 16);
    v5 = (a1 + 24);
    if (v4 != (a1 + 24))
    {
      do
      {
        v7 = *(v4 + 28);
        if (v7 >= a2)
        {
          v8 = *(v4 + 9);
          v14 = v7 & 0xFFFFFFFF00000000 | (v7 - a2);
          v16[3] = &v14;
          *(std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(&v15, &v14) + 36) = v8;
        }

        v9 = v4[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v4[2];
            v11 = *v10 == v4;
            v4 = v10;
          }

          while (!v11);
        }

        v4 = v10;
      }

      while (v10 != v5);
    }

    std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::swap((a1 + 16), &v15);
    *a1 = v3;
    std::__tree<int>::destroy(&v15, v16[0]);
  }
}

uint64_t std::deque<kaldi::quasar::SparseMatrix<float>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x66)
  {
    a2 = 1;
  }

  if (v2 < 0xCC)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 102;
  }

  return v4 ^ 1u;
}

uint64_t *std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t std::deque<kaldi::Matrix<float>>::pop_front(int64x2_t *a1)
{
  kaldi::Matrix<float>::~Matrix(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x66uLL)) + 40 * (a1[2].i64[0] % 0x66uLL));
  a1[2] = vaddq_s64(a1[2], xmmword_1B5AE01E0);

  return std::deque<kaldi::quasar::SparseMatrix<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<kaldi::Matrix<float>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x66];
    v7 = *v6 + 40 * (v5 % 0x66);
    v8 = v2[(a1[5] + v5) / 0x66] + 40 * ((a1[5] + v5) % 0x66);
    if (v7 != v8)
    {
      do
      {
        v7 = kaldi::Matrix<float>::~Matrix(v7) + 40;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 51;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 102;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

uint64_t std::deque<kaldi::quasar::SparseMatrix<float>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x66];
    v7 = *v6 + 40 * (v5 % 0x66);
    v8 = v2[(a1[5] + v5) / 0x66] + 40 * ((a1[5] + v5) % 0x66);
    if (v7 != v8)
    {
      do
      {
        std::__tree<int>::destroy(v7 + 16, *(v7 + 24));
        v7 += 40;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 51;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 102;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

uint64_t std::vector<kaldi::CuMatrix<float> *,std::allocator<kaldi::CuMatrix<float> *>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float> * const*,kaldi::CuMatrix<float> * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B563A350(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::OnlineSpliceBatchInput::OnlineSpliceBatchInput(kaldi::OnlineSpliceBatchInput *this, kaldi::OnlineFeatInputItf *a2, int a3, int a4)
{
  *this = &unk_1F2D21CC0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 8) = (*(*a2 + 8))(a2);
  *(this + 9) = a3;
  *(this + 10) = a4;
  kaldi::Matrix<float>::Matrix(this + 48);
  if (*(this + 10) >= 1)
  {
    operator new();
  }

  operator new();
}

void sub_1B563A4F0(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x1B8C85350](v4, 0x10A1C405FCE00B7);
  kaldi::Matrix<float>::~Matrix(v1 + 48);
  v6 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v6)
  {
    (*(*v6 + 80))(v6);
  }

  v7 = *v3;
  *v3 = 0;
  if (v7)
  {
    (*(*v7 + 80))(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    kaldi::Matrix<float>::~Matrix(v2 + 200);
    kaldi::Matrix<float>::~Matrix(v2 + 160);
    kaldi::Vector<float>::Destroy(v2 + 120);
    kaldi::Matrix<float>::~Matrix(v2 + 80);
    std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::~__value_func[abi:ne200100](v2);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

__n128 std::__function::__func<std::__bind<BOOL (kaldi::VoiceActivityGating::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::VoiceActivityGating*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::VoiceActivityGating::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::VoiceActivityGating*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D22120;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (kaldi::VoiceActivityGating::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::VoiceActivityGating*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::VoiceActivityGating::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::VoiceActivityGating*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t std::__function::__func<std::__bind<BOOL (kaldi::VoiceActivityGating::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::VoiceActivityGating*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::VoiceActivityGating::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::VoiceActivityGating*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::deque<kaldi::quasar::SparseMatrix<float>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B563AA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::SparseMatrix<float>::SparseMatrix(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  *(result + 8) = v2;
  *(result + 24) = v4;
  v5 = result + 24;
  v6 = *(a2 + 32);
  *(result + 32) = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a2 + 16) = v3;
    *v3 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    *(result + 16) = v5;
  }

  return result;
}

uint64_t quasar::OnlineKeywordSpottingDecoder::OnlineKeywordSpottingDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D221C8;
  *(v3 + 648) = 0;
  *(v3 + 664) = 0;
  *(v3 + 656) = 0;
  *(v3 + 704) = 0;
  *(v3 + 720) = 0;
  *(v3 + 712) = 0;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  __asm { FMOV            V0.2S, #-10.0 }

  *(v3 + 616) = -_D0;
  *(v3 + 624) = 0;
  MEMORY[0x1B8C84820](v3 + 592, "<blk>");
  *(a1 + 628) = 0;
  v9 = *(a1 + 656);
  v10 = *(a1 + 648);
  if (v9 != v10)
  {
    v11 = v9 - 27;
    v12 = v9 - 27;
    v13 = v9 - 27;
    do
    {
      v14 = *v13;
      v13 -= 27;
      (*v14)(v12);
      v11 -= 27;
      _ZF = v12 == v10;
      v12 = v13;
    }

    while (!_ZF);
  }

  *(a1 + 656) = v10;
  *(a1 + 672) = 0;
  *(a1 + 636) = 0x1B00000000;
  *(a1 + 644) = 1;
  *(a1 + 646) = 0;
  *(a1 + 57) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 1;
  return a1;
}

void sub_1B563AC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v11;
  std::vector<quasar::MovingAverage>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v14;
  std::vector<quasar::AMKeywordDetection>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 615) < 0)
  {
    operator delete(*v12);
  }

  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = *(v10 + 512);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(v10 + 503) < 0)
  {
    operator delete(*(v10 + 480));
  }

  if (*(v10 + 479) < 0)
  {
    operator delete(*v13);
  }

  quasar::Decoder::~Decoder(v10);
  _Unwind_Resume(a1);
}

void quasar::OnlineKeywordSpottingDecoder::~OnlineKeywordSpottingDecoder(void **this)
{
  *this = &unk_1F2D221C8;
  v3 = this + 88;
  std::vector<quasar::MovingAverage>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 81;
  std::vector<quasar::AMKeywordDetection>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 615) < 0)
  {
    operator delete(this[74]);
  }

  v3 = this + 71;
  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 68;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 65;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[64];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 503) < 0)
  {
    operator delete(this[60]);
  }

  if (*(this + 479) < 0)
  {
    operator delete(this[57]);
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineKeywordSpottingDecoder::~OnlineKeywordSpottingDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineKeywordSpottingDecoder::registerParams(quasar::OnlineKeywordSpottingDecoder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "keyword-spotting");
  quasar::SystemConfig::enforceMinVersion(a2, 42, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "threshold");
  std::string::basic_string[abi:ne200100]<0>(v4, "The threshold for the keyword score");
  quasar::SystemConfig::Register<float>(a2, __p, this + 616, v4, 0, 42, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "frame-offset");
  std::string::basic_string[abi:ne200100]<0>(v4, "frame offset");
  quasar::SystemConfig::Register<float>(a2, __p, this + 624, v4, 0, 42, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "do-viterbi");
  std::string::basic_string[abi:ne200100]<0>(v4, "apply viterbi for keyword detection");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 644, v4, 0, 42, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "tokens-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "symbole table file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 456, v4, 1, 42, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "keyword-list-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "list of keywords and their corresponding tokens sequence");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 480, v4, 1, 42, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "Number of frames that get decoded in one go");
  quasar::SystemConfig::Register<int>(a2, __p, this + 640, v4, 0, 42, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "do-batch-reset");
  std::string::basic_string[abi:ne200100]<0>(v4, "Reset scores after each batch result");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 645, v4, 0, 89, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "do-top-result-only");
  std::string::basic_string[abi:ne200100]<0>(v4, "Only return the best keyword score");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 646, v4, 0, 89, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "do-moving-avg");
  std::string::basic_string[abi:ne200100]<0>(v4, "Performs a moving average of the scores");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 696, v4, 0, 223, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "moving-avg-window-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "Set the window size for the moving average");
  quasar::SystemConfig::Register<int>(a2, __p, this + 700, v4, 0, 223, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B563B248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineKeywordSpottingDecoder::finishInit(quasar::OnlineKeywordSpottingDecoder *this)
{
  v5 = *MEMORY[0x1E69E9840];
  fst::SymbolTableTextOptions::SymbolTableTextOptions(&v4);
  Text = fst::SymbolTable::ReadText(this + 456);
  std::shared_ptr<fst::SymbolTable>::shared_ptr[abi:ne200100]<fst::SymbolTable,0>(v3, Text);
}

void sub_1B563BDD8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B563BE4CLL);
}

void sub_1B563BDE8(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4[0] = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v4);
  if (v5 < 0)
  {
    operator delete(v4[34]);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  MEMORY[0x1B8C85200](&v9);
  _Unwind_Resume(a1);
}

std::fstream *__cdecl std::fstream::basic_fstream(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  *(&this[1].__sb_.__st_._mbstateL + 8) = 0;
  this->__sb_.__extbufnext_ = 0;
  this->__sb_.__extbuf_ = &unk_1F2D223E8;
  *(&this[1].__sb_.__st_._mbstateL + 2) = &unk_1F2D22410;
  std::ios_base::init((&this[1].__sb_.__st_._mbstateL + 2), this->__sb_.__extbuf_min_);
  *(&this[1].__sb_.__st_last_._mbstateL + 3) = 0;
  *(&this[1].__sb_.__st_last_._mbstateL + 8) = -1;
  MEMORY[0x1B8C849F0](this->__sb_.__extbuf_min_);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((this + *(this->__sb_.__extbuf_ - 3)), *&this->__sb_.__extbuf_min_[*(this->__sb_.__extbuf_ - 3) + 8] | 4);
  }

  return this;
}

void sub_1B563BF98(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::tuple<std::string,long long,long long,float>>::push_back[abi:ne200100](uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,long long,long long,float>>>(result, v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v12 + 24) = *(a2 + 3);
    *(v12 + 32) = *(a2 + 4);
    *(v12 + 40) = *(a2 + 10);
    v7 = 48 * v8 + 48;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::tuple<std::string,long long,long long,float>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 3);
    *(v4 + 32) = *(a2 + 4);
    *(v4 + 40) = *(a2 + 10);
    v7 = v4 + 48;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::fstream::~fstream(uint64_t *a1)
{
  MEMORY[0x1B8C85200](v2 + 432);
  return a1;
}

void quasar::OnlineKeywordSpottingDecoder::updateBestScores(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v2 + v5);
      v8 = *(a1 + 568);
      v9 = v8 + v5;
      v10 = *(v2 + v5 + 23);
      if (v10 >= 0)
      {
        v11 = *(v2 + v5 + 23);
      }

      else
      {
        v11 = *(v2 + v5 + 8);
      }

      v12 = *(v9 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 8);
      }

      if (v11 == v12 && (v10 >= 0 ? (v14 = (v2 + v5)) : (v14 = v7->__r_.__value_.__r.__words[0]), v13 >= 0 ? (v15 = (v8 + v5)) : (v15 = *v9), !memcmp(v14, v15, v11)))
      {
        v27 = v2 + v5;
        v28 = v8 + v5;
        if (*(v27 + 40) > *(v28 + 40))
        {
          std::string::operator=(v9, v7);
          *(v28 + 24) = *(v27 + 24);
          *(v28 + 32) = *(v27 + 32);
          *(v28 + 40) = *(v27 + 40);
        }
      }

      else if (quasar::gLogLevel >= 4)
      {
        memset(v29, 0, 272);
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "keyword mismatch ", 17);
        v17 = *a2 + v5;
        v18 = *(v17 + 23);
        if (v18 >= 0)
        {
          v19 = *a2 + v5;
        }

        else
        {
          v19 = *v17;
        }

        if (v18 >= 0)
        {
          v20 = *(v17 + 23);
        }

        else
        {
          v20 = *(v17 + 8);
        }

        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v19, v20);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " != ", 4);
        v23 = *(a1 + 568) + v5;
        v24 = *(v23 + 23);
        if (v24 >= 0)
        {
          v25 = *(a1 + 568) + v5;
        }

        else
        {
          v25 = *v23;
        }

        if (v24 >= 0)
        {
          v26 = *(v23 + 23);
        }

        else
        {
          v26 = *(v23 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v25, v26);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v29);
      }

      ++v6;
      v2 = *a2;
      v5 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4) > v6);
  }
}

void quasar::OnlineKeywordSpottingDecoder::writePerBatchResults(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<std::tuple<std::string,long long,long long,float>>::__init_with_size[abi:ne200100]<std::tuple<std::string,long long,long long,float>*,std::tuple<std::string,long long,long long,float>*>(&v35, *(a1 + 568), *(a1 + 576), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 576) - *(a1 + 568)) >> 4));
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v36 - v35));
  v34[0] = quasar::tupleCompare;
  if (v36 == v35)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,false>(v35, v36, v34, v10, 1, v8);
  v22 = a4;
  memset(v34, 0, sizeof(v34));
  std::vector<std::vector<quasar::Token>>::reserve(v34, 0xAAAAAAAAAAAAAAABLL * (v36 - v35));
  v21 = a3;
  v11 = v36;
  if (v35 != v36)
  {
    v12 = v35 + 3;
    do
    {
      if (*(v12 - 25) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *(v12 - 6), *(v12 - 5));
      }

      else
      {
        v13 = *(v12 - 3);
        v30.__r_.__value_.__r.__words[2] = *(v12 - 4);
        *&v30.__r_.__value_.__l.__data_ = v13;
      }

      v14 = *(v12 - 6);
      v15 = *(v12 - 4);
      v16 = *(v12 - 2);
      std::string::basic_string[abi:ne200100]<0>(&v28, "");
      std::string::basic_string[abi:ne200100]<0>(&v26, "");
      memset(v25, 0, sizeof(v25));
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      quasar::Token::Token(v39, &v30, v14, v15, v15, 0, 0, &v28, v16, &v26, v25, 0, __p, 0, 0, 0);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token const*,quasar::Token const*>(&v31, v39, &v42, 1uLL);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v34, &v31);
      v38 = &v31;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v38);
      quasar::Token::~Token(v39);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = v25;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 646))
      {
        break;
      }

      v17 = v12 == v11;
      v12 += 3;
    }

    while (!v17);
  }

  v18 = *(*a2 + 576);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v19 = *(*v21 + 12);
  v28 = 0uLL;
  v29 = 0;
  v26 = 0uLL;
  v27 = 0;
  v41 = 0;
  *v39 = 0u;
  v40 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v39[1], "▁");
  LOBYTE(v41) = 0;
  LOWORD(v20) = 0;
  (*(*v18 + 24))(v18, &v31, v19, 1, v22, 0, v34, &v28, &v26, v20, v39);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[1]);
  }

  v39[0] = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v39);
  v39[0] = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v39);
  v39[0] = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v39);
  v39[0] = v34;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v39);
  v39[0] = &v35;
  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](v39);
}

void sub_1B563C714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char *a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  a55 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a48;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a51;
  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](&a55);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineKeywordSpottingDecoder::runImpl(uint64_t a1, kaldi::OnlineFeatureMatrix **a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = 0;
  v134 = (a1 + 628);
  *(a1 + 628) = 0;
  *(a1 + 636) = 0;
  v8 = *(a1 + 568);
  for (i = *(a1 + 576); v8 != i; v8 += 48)
  {
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = -8388609;
  }

  v10 = a2[1];
  v135 = *a2;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v131 = v10;
  if (!v135)
  {
    if (quasar::gLogLevel >= 1)
    {
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      *v170 = 0u;
      v171 = 0u;
      *v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      *v165 = 0u;
      *v162 = 0u;
      v163 = 0u;
      v161 = 0u;
      memset(v160, 0, sizeof(v160));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "Error: no utterance features were provided", 42);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v160);
    }

    v87 = 2;
    if (v10)
    {
      goto LABEL_163;
    }

    return v87;
  }

  v192 = 0;
  v193 = 0;
  v194 = 0;
  if (*(a1 + 672))
  {
    v11 = *(a1 + 648);
    v12 = *(a1 + 656);
    while (v11 != v12)
    {
      quasar::AMKeywordDetection::init(v11, v7);
      v11 = (v11 + 216);
    }

    v13 = *(v6 + 704);
    v14 = *(v6 + 712);
    while (v13 != v14)
    {
      quasar::MovingAverage::init(v13, *(v6 + 700));
      v13 = (v13 + 64);
    }

    *(v6 + 620) = (*(**(*a2 + 2) + 24))(*(*a2 + 2));
    if (quasar::gLogLevel >= 5)
    {
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      *v170 = 0u;
      v171 = 0u;
      *v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      *v165 = 0u;
      *v162 = 0u;
      v163 = 0u;
      v161 = 0u;
      memset(v160, 0, sizeof(v160));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "Start of batches", 16);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v160);
    }

    v130 = a3;
    v15 = 0;
    while (kaldi::OnlineFeatureMatrix::IsValidFrame(v135, v134->i32[0] + 1, 1))
    {
      v17 = v192;
      v16 = v193;
      if (v193 != v192)
      {
        v18 = v193;
        do
        {
          v20 = *(v18 - 3);
          v18 -= 24;
          v19 = v20;
          if (v20)
          {
            *(v16 - 2) = v19;
            operator delete(v19);
          }

          v16 = v18;
        }

        while (v18 != v17);
      }

      v21 = 0;
      v193 = v17;
      for (j = v134->i32[0]; kaldi::OnlineFeatureMatrix::IsValidFrame(v135, j, 1) && v21 < *(v6 + 640); j = v36.i32[0])
      {
        kaldi::OnlineFeatureMatrix::GetFrame(v135, v134->i32[0], v160);
        __src[0] = 0;
        __src[1] = 0;
        *&v142 = 0;
        if (*&v160[8] >= 1)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            if (v23 >= v142)
            {
              v25 = __src[0];
              v26 = v23 - __src[0];
              v27 = (v23 - __src[0]) >> 2;
              v28 = v27 + 1;
              if ((v27 + 1) >> 62)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v29 = v142 - __src[0];
              if ((v142 - __src[0]) >> 1 > v28)
              {
                v28 = v29 >> 1;
              }

              v30 = v29 >= 0x7FFFFFFFFFFFFFFCLL;
              v31 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v30)
              {
                v31 = v28;
              }

              if (v31)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v31);
              }

              v32 = v27;
              v33 = (4 * v27);
              v34 = &v33[-v32];
              *v33 = *(*v160 + 4 * v24);
              v23 = (v33 + 1);
              memcpy(v34, v25, v26);
              v35 = __src[0];
              __src[0] = v34;
              __src[1] = v23;
              *&v142 = 0;
              if (v35)
              {
                operator delete(v35);
              }
            }

            else
            {
              *v23 = *(*v160 + 4 * v24);
              v23 += 4;
            }

            __src[1] = v23;
            ++v24;
          }

          while (v24 < *&v160[8]);
        }

        std::vector<std::vector<float>>::push_back[abi:ne200100](&v192, __src);
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v36 = vadd_s32(*v134, 0x100000001);
        *v134 = v36;
        ++v21;
      }

      ++*(v6 + 636);
      v37 = v193 - v192;
      if (v193 == v192)
      {
        if (quasar::gLogLevel >= 1)
        {
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          *v170 = 0u;
          v171 = 0u;
          *v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          *v165 = 0u;
          *v162 = 0u;
          v163 = 0u;
          v161 = 0u;
          memset(v160, 0, sizeof(v160));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "empty posterior matrix", 22);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(v160);
        }

        goto LABEL_154;
      }

      if (*(v6 + 680) != (*(v192 + 1) - *v192) >> 2)
      {
        if (quasar::gLogLevel >= 1)
        {
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          *v170 = 0u;
          v171 = 0u;
          *v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          *v165 = 0u;
          *v162 = 0u;
          v163 = 0u;
          v161 = 0u;
          memset(v160, 0, sizeof(v160));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "unmatched  posterior matrix dimension and number of symbols", 59);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(v160);
        }

        goto LABEL_154;
      }

      v38 = *(*a4 + 12);
      v39 = *(v6 + 632);
      v40 = *(v6 + 620);
      if (quasar::gLogLevel >= 5)
      {
        v174 = 0u;
        v175 = 0u;
        v172 = 0u;
        v173 = 0u;
        *v170 = 0u;
        v171 = 0u;
        *v168 = 0u;
        v169 = 0u;
        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        *v165 = 0u;
        *v162 = 0u;
        v163 = 0u;
        v161 = 0u;
        memset(v160, 0, sizeof(v160));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "About to process ", 17);
        v42 = MEMORY[0x1B8C84C60](v41, 0xAAAAAAAAAAAAAAABLL * (v37 >> 3));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " frames in batch", 16);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v160);
      }

      if (v37 >= 1)
      {
        v43 = 0;
        if ((0xAAAAAAAAAAAAAAABLL * (v37 >> 3)) <= 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = 0xAAAAAAAAAAAAAAABLL * (v37 >> 3);
        }

        v133 = v44;
        do
        {
          v45 = &v192[24 * v43];
          __src[0] = 0;
          __src[1] = 0;
          *&v142 = 0;
          if (*(v6 + 696) == 1)
          {
            if (*(v6 + 528) != *(v6 + 520))
            {
              v132 = v15;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v137 = &v192[24 * v43];
              do
              {
                v140 = v48;
                v50 = *(*a4 + 8);
                v51 = *(v6 + 632);
                v52 = *(v6 + 700);
                v53 = *(v6 + 704);
                quasar::MovingAverage::add((v53 + v46), *(*v45 + 4 * v49));
                v54 = v46;
                v55 = v43;
                v138 = v54;
                v139 = v47;
                v56 = *(*(v6 + 520) + v47);
                v57 = *(v6 + 620);
                v58 = *(v6 + 624);
                v59 = *(v6 + 640);
                v60 = v6;
                v61 = *(v6 + 636);
                Average = quasar::MovingAverage::getAverage((v53 + v54));
                if (*(v56 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(v160, *v56, *(v56 + 1));
                }

                else
                {
                  v63 = *v56;
                  *&v160[16] = *(v56 + 2);
                  *v160 = v63;
                }

                v43 = v55;
                *&v160[24] = v58 + ((v51 + v50 - v52) * v57);
                *&v160[28] = v58 + (v57 * (v55 + (v61 - 1) * v59));
                *&v161 = Average;
                v6 = v60;
                v64 = *(v60 + 568) + v140;
                if (*(v64 + 23) < 0)
                {
                  operator delete(*v64);
                }

                v65 = *v160;
                *(v64 + 16) = *&v160[16];
                *v64 = v65;
                v160[23] = 0;
                v160[0] = 0;
                *(v64 + 24) = vcvtq_s64_f64(vcvtq_f64_f32(*&v160[24]));
                *(v64 + 40) = v161;
                v45 = v137;
                if ((v160[23] & 0x80000000) != 0)
                {
                  operator delete(*v160);
                }

                ++v49;
                v48 = v140 + 48;
                v47 = v139 + 24;
                v46 = v138 + 64;
              }

              while (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 528) - *(v6 + 520)) >> 3) > v49);
              v10 = v131;
              v15 = v132;
            }
          }

          else
          {
            v66 = *(v6 + 648);
            v67 = *(v6 + 656);
            while (v66 != v67)
            {
              quasar::AMKeywordDetection::propagate(v66, v45, *(v6 + 688));
              Score = quasar::AMKeywordDetection::getScore(v66);
              BestStartFrame = quasar::AMKeywordDetection::getBestStartFrame(v66);
              kaldi::quasar::Vocab::OOvWord(v66, &v191);
              v70 = BestStartFrame;
              if (BestStartFrame == -1)
              {
                v70 = 0;
              }

              v71 = *(v6 + 620);
              v72 = *(v6 + 624);
              v73 = v72 + (v70 * v71);
              v74 = v72 + (v71 * (v43 + (*(v6 + 636) - 1) * *(v6 + 640)));
              *&v160[8] = v191.__r_.__value_.__l.__size_;
              v75 = v191.__r_.__value_.__r.__words[0];
              *&v160[15] = *(&v191.__r_.__value_.__r.__words[1] + 7);
              v76 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
              memset(&v191, 0, sizeof(v191));
              *v160 = v75;
              v160[23] = v76;
              *&v160[24] = v73;
              *&v161 = v74;
              *(&v161 + 2) = Score;
              std::vector<std::tuple<std::string,long long,long long,float>>::push_back[abi:ne200100](__src, v160);
              if ((v160[23] & 0x80000000) != 0)
              {
                operator delete(*v160);
              }

              if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v191.__r_.__value_.__l.__data_);
              }

              if (Score > *(v6 + 616))
              {
                if (quasar::gLogLevel >= 4)
                {
                  v174 = 0u;
                  v175 = 0u;
                  v172 = 0u;
                  v173 = 0u;
                  *v170 = 0u;
                  v171 = 0u;
                  *v168 = 0u;
                  v169 = 0u;
                  v166 = 0u;
                  v167 = 0u;
                  v164 = 0u;
                  *v165 = 0u;
                  *v162 = 0u;
                  v163 = 0u;
                  v161 = 0u;
                  memset(v160, 0, sizeof(v160));
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
                  v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "KWD ", 4);
                  kaldi::quasar::Vocab::OOvWord(v66, &v191);
                  if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v78 = &v191;
                  }

                  else
                  {
                    v78 = v191.__r_.__value_.__r.__words[0];
                  }

                  if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v191.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v191.__r_.__value_.__l.__size_;
                  }

                  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, size);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, " ", 1);
                  v81 = std::ostream::operator<<();
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, " ", 1);
                  v82 = std::ostream::operator<<();
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, " ", 1);
                  v83 = std::ostream::operator<<();
                  std::ios_base::getloc((v83 + *(*v83 - 24)));
                  v84 = std::locale::use_facet(&v188, MEMORY[0x1E69E5318]);
                  (v84->__vftable[2].~facet_0)(v84, 10);
                  std::locale::~locale(&v188);
                  std::ostream::put();
                  std::ostream::flush();
                  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v191.__r_.__value_.__l.__data_);
                  }

                  quasar::QuasarInfoMessage::~QuasarInfoMessage(v160);
                }

                ++v15;
              }

              quasar::OnlineKeywordSpottingDecoder::updateBestScores(v6, __src);
              v66 = (v66 + 216);
            }
          }

          *v160 = __src;
          std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](v160);
          ++v43;
        }

        while (v43 != v133);
      }

      if (quasar::gLogLevel > 4)
      {
        v174 = 0u;
        v175 = 0u;
        v172 = 0u;
        v173 = 0u;
        *v170 = 0u;
        v171 = 0u;
        *v168 = 0u;
        v169 = 0u;
        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        *v165 = 0u;
        *v162 = 0u;
        v163 = 0u;
        v161 = 0u;
        memset(v160, 0, sizeof(v160));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "End of batch", 12);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v160);
      }

      quasar::OnlineKeywordSpottingDecoder::writePerBatchResults(v6, v130, a4, (v38 + (v39 * v40)));
      if (*(v6 + 645) == 1)
      {
        v85 = *(v6 + 568);
        v86 = *(v6 + 576);
        while (v85 != v86)
        {
          *(v85 + 24) = 0;
          *(v85 + 32) = 0;
          *(v85 + 40) = -8388609;
          v85 += 48;
        }
      }
    }

    if (quasar::gLogLevel >= 5)
    {
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      *v170 = 0u;
      v171 = 0u;
      *v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      *v165 = 0u;
      *v162 = 0u;
      v163 = 0u;
      v161 = 0u;
      memset(v160, 0, sizeof(v160));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "End of batches", 14);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v160);
    }

    memset(&v191, 0, sizeof(v191));
    v188.__locale_ = 0;
    v189 = 0;
    v190 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v183 = 0;
    v182 = 0;
    v184 = 0;
    std::vector<std::tuple<std::string,long long,long long,float>>::__init_with_size[abi:ne200100]<std::tuple<std::string,long long,long long,float>*,std::tuple<std::string,long long,long long,float>*>(&v182, *(v6 + 568), *(v6 + 576), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 576) - *(v6 + 568)) >> 4));
    v89 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v183 - v182));
    __src[0] = quasar::tupleCompare;
    if (v183 == v182)
    {
      v90 = 0;
    }

    else
    {
      v90 = v89;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,false>(v182, v183, __src, v90, 1, v88);
    v91 = v182;
    for (k = v183; v91 != k; v91 += 3)
    {
      locale = v188.__locale_;
        ;
      }

      v189 = locale;
      if (*(v91 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v181, *v91, *(v91 + 1));
      }

      else
      {
        v95 = *v91;
        v181.__r_.__value_.__r.__words[2] = *(v91 + 2);
        *&v181.__r_.__value_.__l.__data_ = v95;
      }

      v96 = *(v91 + 6);
      v97 = *(v91 + 8);
      v98 = *(v91 + 10);
      std::string::basic_string[abi:ne200100]<0>(__src, "");
      std::string::basic_string[abi:ne200100]<0>(v179, "");
      memset(v178, 0, sizeof(v178));
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      quasar::Token::Token(v160, &v181, v96, v97, v97, 0, 0, __src, v98, v179, v178, 0, __p, 0, 0, 0);
      if (v177 < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = v178;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v180 < 0)
      {
        operator delete(v179[0].__locale_);
      }

      if (SBYTE7(v142) < 0)
      {
        operator delete(__src[0]);
      }

      if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v181.__r_.__value_.__l.__data_);
      }

      v99 = v189;
      if (v189 >= v190)
      {
        v100 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v188, v160);
      }

      else
      {
        quasar::Token::Token(v189, v160);
        v100 = (v99 + 224);
      }

      v189 = v100;
      v101 = *(v91 + 10);
      v102 = v186;
      if (v186 >= v187)
      {
        v104 = v185;
        v105 = v186 - v185;
        v106 = (v186 - v185) >> 3;
        v107 = v106 + 1;
        if ((v106 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v108 = v187 - v185;
        if ((v187 - v185) >> 2 > v107)
        {
          v107 = v108 >> 2;
        }

        v30 = v108 >= 0x7FFFFFFFFFFFFFF8;
        v109 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v30)
        {
          v109 = v107;
        }

        if (v109)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v185, v109);
        }

        *(8 * v106) = v101;
        v103 = 8 * v106 + 8;
        memcpy(0, v104, v105);
        v110 = v185;
        v185 = 0;
        v186 = v103;
        v187 = 0;
        if (v110)
        {
          operator delete(v110);
        }
      }

      else
      {
        *v186 = v101;
        v103 = (v102 + 1);
      }

      v186 = v103;
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v191, &v188);
      if (SBYTE7(v171) < 0)
      {
        operator delete(v170[0]);
      }

      if (SBYTE7(v169) < 0)
      {
        operator delete(v168[0]);
      }

      __src[0] = &v166 + 8;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__src);
      if (SBYTE7(v166) < 0)
      {
        operator delete(v165[0]);
      }

      __src[0] = &v163 + 8;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__src);
      if (SBYTE7(v163) < 0)
      {
        operator delete(v162[0]);
      }

      if ((v160[23] & 0x80000000) != 0)
      {
        operator delete(*v160);
      }
    }

    v111 = *(*a4 + 12);
    v112 = *(v6 + 632);
    v113 = *(v6 + 620);
    quasar::RecogResult::RecogResult(v160);
    v114 = *(*a4 + 32);
    v158 = *(*a4 + 24);
    v159 = v114;
    if (v114)
    {
      atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v115 = quasar::RecogResult::setParams(v160, &v158);
    v116 = quasar::Token::resetSpacing(&v191);
    v117 = quasar::RecogResult::setResultChoices(v115, v116);
    v118 = quasar::RecogResult::setResultCosts(v117, &v185);
    v119 = quasar::RecogResult::setLmeStatus(v118, (*v130 + 600));
    started = quasar::RecogResult::setUtteranceStartMillis(v119, (*(v6 + 620) * *(*a4 + 8)));
    quasar::RecogResult::setUtteranceDurationMillis(started, (v111 + (v112 * v113)));
    if (v159)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v159);
    }

    (*(**(*v130 + 576) + 40))(*(*v130 + 576), v160, 1);
    *(*v130 + 592) = *(v6 + 632);
    if (v15)
    {
      if (quasar::gLogLevel >= 4)
      {
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        *__src = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
        v121 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "keyword detected", 16);
        std::ios_base::getloc((v121 + *(*v121 - 24)));
        v122 = std::locale::use_facet(v179, MEMORY[0x1E69E5318]);
        (v122->__vftable[2].~facet_0)(v122, 10);
        std::locale::~locale(v179);
        std::ostream::put();
        std::ostream::flush();
        goto LABEL_157;
      }
    }

    else if (quasar::gLogLevel >= 4)
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      *__src = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
      v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "no keywords detected", 20);
      std::ios_base::getloc((v123 + *(*v123 - 24)));
      v124 = std::locale::use_facet(v179, MEMORY[0x1E69E5318]);
      (v124->__vftable[2].~facet_0)(v124, 10);
      std::locale::~locale(v179);
      std::ostream::put();
      std::ostream::flush();
LABEL_157:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__src);
      if (quasar::gLogLevel >= 4)
      {
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        *__src = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
        v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "keyword search finished with ", 29);
        v126 = MEMORY[0x1B8C84C00](v125, v15);
        v127 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, " detected hypothesis.", 21);
        std::ios_base::getloc((v127 + *(*v127 - 24)));
        v128 = std::locale::use_facet(v179, MEMORY[0x1E69E5318]);
        (v128->__vftable[2].~facet_0)(v128, 10);
        std::locale::~locale(v179);
        std::ostream::put();
        std::ostream::flush();
        quasar::QuasarInfoMessage::~QuasarInfoMessage(__src);
      }
    }

    quasar::RecogResult::~RecogResult(v160);
    *v160 = &v182;
    std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](v160);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    *v160 = &v188;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v160);
    *v160 = &v191;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v160);
    v87 = 0;
    goto LABEL_162;
  }

  if (quasar::gLogLevel >= 2)
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    *v170 = 0u;
    v171 = 0u;
    *v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    *v165 = 0u;
    *v162 = 0u;
    v163 = 0u;
    v161 = 0u;
    memset(v160, 0, sizeof(v160));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v160);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, "No keywords found.", 18);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v160);
  }

LABEL_154:
  v87 = 2;
LABEL_162:
  *v160 = &v192;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v160);
  if (v10)
  {
LABEL_163:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v87;
}

void sub_1B563DAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  quasar::RecogResult::~RecogResult(&a61);
  a61 = &STACK[0x490];
  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](&a61);
  v63 = *(v61 - 248);
  if (v63)
  {
    *(v61 - 240) = v63;
    operator delete(v63);
  }

  a61 = (v61 - 224);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = (v61 - 200);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = (v61 - 176);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a61);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

uint64_t std::fstream::~fstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[8];
  a1[2] = a2[9];
  MEMORY[0x1B8C84A00](a1 + 3);

  return std::iostream::~basic_iostream();
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x1B8C84A00](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1B8C85200);
}

{
  v1 = a1 + 52;
  MEMORY[0x1B8C84A00](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](v1);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1B8C84A00](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1B8C85200);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1B8C84A00](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](v1 + 54);

  JUMPOUT(0x1B8C85350);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x1B8C84A00](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](v1);

  JUMPOUT(0x1B8C85350);
}

void std::vector<quasar::AMKeywordDetection>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 216;
      v7 = v4 - 216;
      v8 = v4 - 216;
      do
      {
        v9 = *v8;
        v8 -= 216;
        (*v9)(v7);
        v6 -= 216;
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

void std::vector<quasar::MovingAverage>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 64;
        std::deque<int>::~deque[abi:ne200100](v4 - 6);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<quasar::AMKeywordDetection>::__emplace_back_slow_path<quasar::AMKeywordDetection>(uint64_t a1, const quasar::AMKeywordDetection *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AMKeywordDetection>>(a1, v6);
  }

  v13 = 0;
  v14 = 216 * v2;
  quasar::AMKeywordDetection::AMKeywordDetection((216 * v2), a2);
  v15 = 216 * v2 + 216;
  v7 = *(a1 + 8);
  v8 = 216 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AMKeywordDetection>,quasar::AMKeywordDetection*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::AMKeywordDetection>::~__split_buffer(&v13);
  return v12;
}

void sub_1B563E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::AMKeywordDetection>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

quasar::AMKeywordDetection *quasar::AMKeywordDetection::AMKeywordDetection(quasar::AMKeywordDetection *this, const quasar::AMKeywordDetection *a2)
{
  *this = &unk_1F2D0ECB8;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 4);
  *(this + 5) = 0;
  *(this + 4) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 40, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 2);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 88, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 2);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 112, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 136, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 3);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 160, *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 3);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 184, *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 3);
  *(this + 208) = *(a2 + 208);
  return this;
}

void sub_1B563E694(_Unwind_Exception *exception_object)
{
  v10 = *v8;
  if (*v8)
  {
    *(v1 + 168) = v10;
    operator delete(v10);
  }

  v11 = *v7;
  if (*v7)
  {
    *(v1 + 144) = v11;
    operator delete(v11);
  }

  v12 = *v6;
  if (*v6)
  {
    *(v1 + 120) = v12;
    operator delete(v12);
  }

  v13 = *v5;
  if (*v5)
  {
    *(v1 + 96) = v13;
    operator delete(v13);
  }

  v14 = *v4;
  if (*v4)
  {
    *(v1 + 72) = v14;
    operator delete(v14);
  }

  v15 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v15;
    operator delete(v15);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AMKeywordDetection>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

quasar::AMKeywordDetection *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AMKeywordDetection>,quasar::AMKeywordDetection*>(int a1, quasar::AMKeywordDetection *a2, quasar::AMKeywordDetection *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = quasar::AMKeywordDetection::AMKeywordDetection((a4 + v7), v8);
      v8 = (v8 + 216);
      v7 += 216;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 = (v11 + 216);
        result = (*v12)(v6);
        v10 = (v10 + 216);
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_1B563E848(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AMKeywordDetection>,quasar::AMKeywordDetection*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<quasar::AMKeywordDetection>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 216);
    *(a1 + 16) = i - 216;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,long long,long long,float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<std::string,long long,long long,float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::tuple<std::string,long long,long long,float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::string,long long,long long,float>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<quasar::MovingAverage>::__emplace_back_slow_path<quasar::MovingAverage>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MovingAverage>>(a1, v7);
  }

  v8 = v2 << 6;
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  v9 = *a2;
  *(v8 + 8) = *(a2 + 2);
  *v8 = v9;
  *(v8 + 16) = a2[2];
  *(v8 + 24) = a2[3];
  *(v8 + 32) = a2[4];
  v10 = a2[6];
  *(v8 + 40) = a2[5];
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *(v8 + 48) = v10;
  *(v8 + 56) = a2[7];
  a2[6] = 0;
  a2[7] = 0;
  *&v19 = (v2 << 6) + 64;
  v11 = *(a1 + 8);
  v12 = (v2 << 6) + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::MovingAverage>,quasar::MovingAverage*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::MovingAverage>::~__split_buffer(&v17);
  return v16;
}

void sub_1B563EAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::MovingAverage>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MovingAverage>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::MovingAverage>,quasar::MovingAverage*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      *(a4 + 16) = v6[2];
      *(a4 + 24) = v6[3];
      *(a4 + 32) = v6[4];
      v8 = v6[6];
      *(a4 + 40) = v6[5];
      *(v6 + 1) = 0uLL;
      *(v6 + 2) = 0uLL;
      *(a4 + 48) = v8;
      *(a4 + 56) = v6[7];
      v6[6] = 0;
      v6[7] = 0;
      v6 += 8;
      a4 += 64;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      result = std::deque<int>::~deque[abi:ne200100](v5 + 2);
      v5 += 8;
    }
  }

  return result;
}

uint64_t std::__split_buffer<quasar::MovingAverage>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::deque<int>::~deque[abi:ne200100]((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::tuple<std::string,long long,long long,float>>::__init_with_size[abi:ne200100]<std::tuple<std::string,long long,long long,float>*,std::tuple<std::string,long long,long long,float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<std::string,long long,long long,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B563ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::tuple<std::string,long long,long long,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,long long,long long,float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::tuple<std::string,long long,long long,float>>,std::tuple<std::string,long long,long long,float>*,std::tuple<std::string,long long,long long,float>*,std::tuple<std::string,long long,long long,float>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::string,long long,long long,float>::__tuple_impl(v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::string,long long,long long,float>>,std::tuple<std::string,long long,long long,float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::string,long long,long long,float>::__tuple_impl(std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = *(a2 + 4);
  LODWORD(this[1].__r_.__value_.__r.__words[2]) = *(a2 + 10);
  return this;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::string,long long,long long,float>>,std::tuple<std::string,long long,long long,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::string,long long,long long,float>>,std::tuple<std::string,long long,long long,float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::string,long long,long long,float>>,std::tuple<std::string,long long,long long,float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,false>(uint64_t a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v10 = a2 - 3;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 4);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        if ((*a3)(a2 - 3, v11))
        {
          v43 = *(v11 + 16);
          v40 = *v11;
          v26 = *v10;
          *(v11 + 16) = *(a2 - 4);
          *v11 = v26;
          *v10 = v40;
          *(a2 - 4) = v43;
          v27 = *(v11 + 24);
          *(v11 + 24) = *(a2 - 3);
          *(a2 - 3) = v27;
          v28 = *(v11 + 32);
          *(v11 + 32) = *(a2 - 2);
          *(a2 - 2) = v28;
          LODWORD(v26) = *(v11 + 40);
          *(v11 + 40) = *(a2 - 2);
          *(a2 - 2) = v26;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(v11, (v11 + 48), (v11 + 96), a3);
      if ((*a3)(a2 - 3, (v11 + 96)))
      {
        v29 = *(v11 + 112);
        v30 = *(v11 + 96);
        v31 = *(a2 - 4);
        *(v11 + 96) = *v10;
        *(v11 + 112) = v31;
        *v10 = v30;
        *(a2 - 4) = v29;
        v32 = *(v11 + 120);
        *(v11 + 120) = *(a2 - 3);
        *(a2 - 3) = v32;
        v33 = *(v11 + 128);
        *(v11 + 128) = *(a2 - 2);
        *(a2 - 2) = v33;
        LODWORD(v30) = *(v11 + 136);
        *(v11 + 136) = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)((v11 + 96), (v11 + 48)))
        {
          v34 = *(v11 + 64);
          v35 = *(v11 + 48);
          *(v11 + 48) = *(v11 + 96);
          *(v11 + 64) = *(v11 + 112);
          *(v11 + 96) = v35;
          *(v11 + 112) = v34;
          v36 = *(v11 + 72);
          *(v11 + 72) = *(v11 + 120);
          *(v11 + 120) = v36;
          LODWORD(v35) = *(v11 + 88);
          *(v11 + 88) = *(v11 + 136);
          *(v11 + 136) = v35;
          if ((*a3)((v11 + 48), v11))
          {
            v44 = *(v11 + 16);
            v41 = *v11;
            *v11 = *(v11 + 48);
            *(v11 + 16) = *(v11 + 64);
            *(v11 + 48) = v41;
            *(v11 + 64) = v44;
            v37 = *(v11 + 24);
            *(v11 + 24) = *(v11 + 72);
            *(v11 + 72) = v37;
            v38 = *(v11 + 40);
            *(v11 + 40) = *(v11 + 88);
            *(v11 + 88) = v38;
          }
        }
      }

      return;
    }

    if (v15 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(v11, v11 + 48, v11 + 96, v11 + 144, (a2 - 3), a3);
      return;
    }

LABEL_10:
    if (v14 <= 1151)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,std::tuple<std::string,long long,long long,float>*>(v11, a2, a2, a3, a6);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = v11 + 48 * (v15 >> 1);
    if (v14 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(v17, v11, a2 - 3, a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(v11, v17, a2 - 3, a3);
      v18 = 3 * v16;
      v19 = (v11 + 48 * v16 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>((v11 + 48), v19, a2 - 6, a3);
      v20 = (v11 + 48 + 16 * v18);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>((a1 + 96), v20, a2 - 9, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(v19, v17, v20, a3);
      v42 = *(a1 + 16);
      v39 = *a1;
      v21 = *v17;
      *(a1 + 16) = *(v17 + 16);
      *a1 = v21;
      *(v17 + 16) = v42;
      *v17 = v39;
      v22 = *(a1 + 24);
      *(a1 + 24) = *(v17 + 24);
      *(v17 + 24) = v22;
      LODWORD(v22) = *(a1 + 40);
      *(a1 + 40) = *(v17 + 40);
      *(v17 + 40) = v22;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (((*a3)((a1 - 48), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<std::string,long long,long long,float> *,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&)>(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v23 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<std::string,long long,long long,float> *,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&)>(a1, a2, a3);
    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }

    v25 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(a1, v23, a3);
    v11 = v23 + 48;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(v23 + 48, a2, a3))
    {
      a4 = -v13;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v25)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,false>(a1, v23, a3, -v13, a5 & 1);
      v11 = v23 + 48;
LABEL_22:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(v11, (v11 + 48), a2 - 3, a3);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  v8 = (*a4)(a2, a1);
  result = (*a4)(a3, a2);
  if (v8)
  {
    if (result)
    {
      v10 = a1 + 10;
      v11 = *(a1 + 2);
      v12 = *a1;
      v13 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v13;
      *a3 = v12;
      *(a3 + 2) = v11;
      v14 = *(a1 + 3);
      *(a1 + 3) = *(a3 + 3);
      *(a3 + 3) = v14;
      v15 = *(a1 + 4);
      *(a1 + 4) = *(a3 + 4);
LABEL_9:
      *(a3 + 4) = v15;
      v21 = a3 + 10;
      goto LABEL_10;
    }

    v27 = *(a1 + 2);
    v28 = *a1;
    v29 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v29;
    *a2 = v28;
    *(a2 + 2) = v27;
    v30 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v30;
    v31 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v31;
    v10 = a2 + 10;
    v32 = *(a1 + 10);
    *(a1 + 10) = *(a2 + 10);
    *(a2 + 10) = v32;
    if ((*a4)(a3, a2))
    {
      v33 = *(a2 + 2);
      v34 = *a2;
      v35 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v35;
      *a3 = v34;
      *(a3 + 2) = v33;
      v36 = *(a2 + 3);
      *(a2 + 3) = *(a3 + 3);
      *(a3 + 3) = v36;
      v15 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v16 = *(a2 + 2);
    v17 = *a2;
    v18 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v18;
    *a3 = v17;
    *(a3 + 2) = v16;
    v19 = *(a2 + 3);
    *(a2 + 3) = *(a3 + 3);
    *(a3 + 3) = v19;
    v20 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v20;
    v21 = a2 + 10;
    LODWORD(v17) = *(a2 + 10);
    *(a2 + 10) = *(a3 + 10);
    *(a3 + 10) = v17;
    if ((*a4)(a2, a1))
    {
      v22 = *(a1 + 2);
      v23 = *a1;
      v24 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v24;
      *a2 = v23;
      *(a2 + 2) = v22;
      v25 = *(a1 + 3);
      *(a1 + 3) = *(a2 + 3);
      *(a2 + 3) = v25;
      v26 = *(a1 + 4);
      *(a1 + 4) = *(a2 + 4);
      *(a2 + 4) = v26;
      v10 = a1 + 10;
LABEL_10:
      v37 = *v10;
      *v10 = *v21;
      *v21 = v37;
    }
  }

  return 1;
}

float std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(a1, a2, a3, a6);
  if ((*a6)(a4, a3))
  {
    v12 = *(a3 + 16);
    v13 = *a3;
    v14 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v14;
    *a4 = v13;
    *(a4 + 16) = v12;
    v15 = *(a3 + 24);
    *(a3 + 24) = *(a4 + 24);
    *(a4 + 24) = v15;
    v16 = *(a3 + 32);
    *(a3 + 32) = *(a4 + 32);
    *(a4 + 32) = v16;
    LODWORD(v13) = *(a3 + 40);
    *(a3 + 40) = *(a4 + 40);
    *(a4 + 40) = v13;
    if ((*a6)(a3, a2))
    {
      v17 = *(a2 + 16);
      v18 = *a2;
      v19 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v19;
      *a3 = v18;
      *(a3 + 16) = v17;
      v20 = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v20;
      v21 = *(a2 + 32);
      *(a2 + 32) = *(a3 + 32);
      *(a3 + 32) = v21;
      LODWORD(v18) = *(a2 + 40);
      *(a2 + 40) = *(a3 + 40);
      *(a3 + 40) = v18;
      if ((*a6)(a2, a1))
      {
        v22 = *(a1 + 16);
        v23 = *a1;
        v24 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v24;
        *a2 = v23;
        *(a2 + 16) = v22;
        v25 = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = v25;
        v26 = *(a1 + 32);
        *(a1 + 32) = *(a2 + 32);
        *(a2 + 32) = v26;
        LODWORD(v23) = *(a1 + 40);
        *(a1 + 40) = *(a2 + 40);
        *(a2 + 40) = v23;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v28 = *(a4 + 16);
    v29 = *a4;
    v30 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v30;
    *a5 = v29;
    *(a5 + 16) = v28;
    v31 = *(a4 + 24);
    *(a4 + 24) = *(a5 + 24);
    *(a5 + 24) = v31;
    v32 = *(a4 + 32);
    *(a4 + 32) = *(a5 + 32);
    *(a5 + 32) = v32;
    LODWORD(v29) = *(a4 + 40);
    *(a4 + 40) = *(a5 + 40);
    *(a5 + 40) = v29;
    if ((*a6)(a4, a3))
    {
      v33 = *(a3 + 16);
      v34 = *a3;
      v35 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v35;
      *a4 = v34;
      *(a4 + 16) = v33;
      v36 = *(a3 + 24);
      *(a3 + 24) = *(a4 + 24);
      *(a4 + 24) = v36;
      v37 = *(a3 + 32);
      *(a3 + 32) = *(a4 + 32);
      *(a4 + 32) = v37;
      LODWORD(v34) = *(a3 + 40);
      *(a3 + 40) = *(a4 + 40);
      *(a4 + 40) = v34;
      if ((*a6)(a3, a2))
      {
        v38 = *(a2 + 16);
        v39 = *a2;
        v40 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v40;
        *a3 = v39;
        *(a3 + 16) = v38;
        v41 = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v41;
        v42 = *(a2 + 32);
        *(a2 + 32) = *(a3 + 32);
        *(a3 + 32) = v42;
        LODWORD(v39) = *(a2 + 40);
        *(a2 + 40) = *(a3 + 40);
        *(a3 + 40) = v39;
        if ((*a6)(a2, a1))
        {
          v43 = *(a1 + 16);
          v44 = *a1;
          v45 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v45;
          *a2 = v44;
          *(a2 + 16) = v43;
          v46 = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v46;
          v47 = *(a1 + 32);
          *(a1 + 32) = *(a2 + 32);
          *(a2 + 32) = v47;
          result = *(a1 + 40);
          *(a1 + 40) = *(a2 + 40);
          *(a2 + 40) = result;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(uint64_t a1, __int128 *a2, uint64_t (**a3)(__int128 *, uint64_t, float))
{
  if (a1 != a2)
  {
    v5 = a1 + 48;
    if ((a1 + 48) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          v15 = *v9;
          *v16 = *(v9 + 2);
          *(v9 + 1) = 0;
          *(v9 + 2) = 0;
          *v9 = 0;
          *&v16[8] = *(v8 + 72);
          v17 = *(v8 + 88);
          v10 = v7;
          while (1)
          {
            v11 = std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(a1 + v10 + 48, (a1 + v10));
            if (!v10)
            {
              break;
            }

            v12 = (*a3)(&v15, a1 + v10 - 48, v11);
            v10 -= 48;
            if ((v12 & 1) == 0)
            {
              v13 = a1 + v10 + 48;
              goto LABEL_10;
            }
          }

          v13 = a1;
LABEL_10:
          if (*(v13 + 23) < 0)
          {
            operator delete(*v13);
          }

          v14 = *v16;
          *v13 = v15;
          *(v13 + 16) = v14;
          *(v13 + 32) = *&v16[16];
          *(v13 + 40) = v17;
        }

        v5 = (v9 + 3);
        v7 += 48;
        v8 = v9;
      }

      while (v9 + 3 != a2);
    }
  }
}

void sub_1B563FA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t, float))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 48;
    if (a1 + 48 != a2)
    {
      do
      {
        v7 = v5;
        if ((*a3)(v5, v4))
        {
          v12 = *v7;
          *v13 = *(v7 + 16);
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = 0;
          *&v13[8] = *(v4 + 72);
          v14 = *(v4 + 88);
          v8 = v7;
          do
          {
            v9 = v8;
            v8 -= 48;
            v10 = std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(v9, v8);
          }

          while (((*a3)(&v12, v9 - 96, v10) & 1) != 0);
          if (*(v8 + 23) < 0)
          {
            operator delete(*v8);
          }

          v11 = *v13;
          *v8 = v12;
          *(v8 + 16) = v11;
          *(v8 + 32) = *&v13[16];
          *(v8 + 40) = v14;
        }

        v5 = v7 + 48;
        v4 = v7;
      }

      while (v7 + 48 != a2);
    }
  }
}

void sub_1B563FB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<std::string,long long,long long,float> *,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&)>(uint64_t a1, unint64_t a2, uint64_t (**a3)(void **, unint64_t))
{
  v4 = a2;
  *__p = *a1;
  v18 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  if ((*a3)(__p, a2 - 48))
  {
    v6 = a1;
    do
    {
      v6 += 48;
    }

    while (((*a3)(__p, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 48;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(__p, v7);
      v7 = v6 + 48;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 48;
    }

    while (((*a3)(__p, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v22 = *(v6 + 16);
    v21 = v9;
    v10 = *v4;
    *(v6 + 16) = *(v4 + 16);
    *v6 = v10;
    v11 = v21;
    *(v4 + 16) = v22;
    *v4 = v11;
    v12 = *(v6 + 24);
    *(v6 + 24) = *(v4 + 24);
    *(v4 + 24) = v12;
    v13 = *(v6 + 32);
    *(v6 + 32) = *(v4 + 32);
    *(v4 + 32) = v13;
    LODWORD(v11) = *(v6 + 40);
    *(v6 + 40) = *(v4 + 40);
    *(v4 + 40) = v11;
    do
    {
      v6 += 48;
    }

    while (!(*a3)(__p, v6));
    do
    {
      v4 -= 48;
    }

    while (((*a3)(__p, v4) & 1) != 0);
  }

  v14 = (v6 - 48);
  if (v6 - 48 != a1)
  {
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(a1, (v6 - 48));
  }

  if (*(v6 - 25) < 0)
  {
    operator delete(*v14);
  }

  v15 = *__p;
  *(v6 - 32) = v18;
  *v14 = v15;
  HIBYTE(v18) = 0;
  LOBYTE(__p[0]) = 0;
  *(v6 - 24) = v19;
  *(v6 - 8) = v20;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1B563FD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<std::string,long long,long long,float> *,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&)>(uint64_t a1, unint64_t a2, uint64_t (**a3)(uint64_t, void **))
{
  v6 = 0;
  v20 = *(a1 + 16);
  v22 = *(a1 + 40);
  *__p = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v21 = *(a1 + 24);
  do
  {
    v7 = (*a3)(a1 + v6 + 48, __p);
    v6 += 48;
  }

  while ((v7 & 1) != 0);
  v8 = a1 + v6;
  if (v6 == 48)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 48;
    }

    while (((*a3)(a2, __p) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 48;
    }

    while (!(*a3)(a2, __p));
  }

  v9 = a1 + v6;
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v23 = *v9;
      v11 = v23;
      v24 = *(v9 + 16);
      v12 = v24;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 16) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      v14 = *(v9 + 24);
      *(v9 + 24) = *(v10 + 24);
      *(v10 + 24) = v14;
      v15 = *(v9 + 32);
      *(v9 + 32) = *(v10 + 32);
      *(v10 + 32) = v15;
      LODWORD(v11) = *(v9 + 40);
      *(v9 + 40) = *(v10 + 40);
      *(v10 + 40) = v11;
      do
      {
        v9 += 48;
      }

      while (((*a3)(v9, __p) & 1) != 0);
      do
      {
        v10 -= 48;
      }

      while (!(*a3)(v10, __p));
    }

    while (v9 < v10);
  }

  v16 = (v9 - 48);
  if (v9 - 48 != a1)
  {
    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(a1, (v9 - 48));
  }

  if (*(v9 - 25) < 0)
  {
    operator delete(*v16);
  }

  v17 = *__p;
  *(v9 - 32) = v20;
  *v16 = v17;
  HIBYTE(v20) = 0;
  LOBYTE(__p[0]) = 0;
  *(v9 - 24) = v21;
  *(v9 - 8) = v22;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v9 - 48;
}

void sub_1B563FF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(a1, (a1 + 48), (a2 - 48), a3);
        break;
      case 4:
        v22 = (a2 - 48);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(a1, (a1 + 48), (a1 + 96), a3);
        if ((*a3)((a2 - 48), (a1 + 96)))
        {
          v23 = *(a1 + 112);
          v24 = *(a1 + 96);
          v25 = *(a2 - 32);
          *(a1 + 96) = *v22;
          *(a1 + 112) = v25;
          *v22 = v24;
          *(a2 - 32) = v23;
          v26 = *(a1 + 120);
          *(a1 + 120) = *(a2 - 24);
          *(a2 - 24) = v26;
          v27 = *(a1 + 128);
          *(a1 + 128) = *(a2 - 16);
          *(a2 - 16) = v27;
          LODWORD(v24) = *(a1 + 136);
          *(a1 + 136) = *(a2 - 8);
          *(a2 - 8) = v24;
          if ((*a3)((a1 + 96), (a1 + 48)))
          {
            v28 = *(a1 + 64);
            v29 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 96);
            *(a1 + 64) = *(a1 + 112);
            *(a1 + 96) = v29;
            *(a1 + 112) = v28;
            v30 = *(a1 + 72);
            *(a1 + 72) = *(a1 + 120);
            *(a1 + 120) = v30;
            LODWORD(v29) = *(a1 + 88);
            *(a1 + 88) = *(a1 + 136);
            *(a1 + 136) = v29;
            if ((*a3)((a1 + 48), a1))
            {
              v31 = *(a1 + 16);
              v32 = *a1;
              *a1 = *(a1 + 48);
              *(a1 + 16) = *(a1 + 64);
              *(a1 + 48) = v32;
              *(a1 + 64) = v31;
              v33 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 72);
              *(a1 + 72) = v33;
              LODWORD(v32) = *(a1 + 40);
              *(a1 + 40) = *(a1 + 88);
              result = 1;
              *(a1 + 88) = v32;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 48);
    if ((*a3)((a2 - 48), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 32);
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      *(a2 - 32) = v8;
      v11 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 24);
      *(a2 - 24) = v11;
      v12 = *(a1 + 32);
      *(a1 + 32) = *(a2 - 16);
      *(a2 - 16) = v12;
      LODWORD(v9) = *(a1 + 40);
      *(a1 + 40) = *(a2 - 8);
      *(a2 - 8) = v9;
    }

    return 1;
  }

LABEL_11:
  v13 = (a1 + 96);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,0>(a1, (a1 + 48), (a1 + 96), a3);
  v14 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if ((*a3)(v14, v13))
    {
      v35 = *v14;
      *v36 = *(v14 + 16);
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      *&v36[8] = *(v14 + 24);
      v17 = v15;
      v37 = *(v14 + 40);
      while (1)
      {
        v18 = std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(a1 + v17 + 144, (a1 + v17 + 96));
        if (v17 == -96)
        {
          break;
        }

        v19 = (*a3)(&v35, a1 + v17 + 48, v18);
        v17 -= 48;
        if ((v19 & 1) == 0)
        {
          v20 = a1 + v17 + 144;
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      if (*(v20 + 23) < 0)
      {
        operator delete(*v20);
      }

      v21 = *v36;
      *v20 = v35;
      *(v20 + 16) = v21;
      v36[7] = 0;
      LOBYTE(v35) = 0;
      *(v20 + 32) = *&v36[16];
      *(v20 + 40) = v37;
      if (++v16 == 8)
      {
        return v14 + 48 == a2;
      }
    }

    v13 = v14;
    v15 += 48;
    v14 += 48;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_1B564032C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(uint64_t a1, __int128 *a2)
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
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = *(a2 + 4);
  result = *(a2 + 10);
  *(a1 + 40) = result;
  return result;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*,std::tuple<std::string,long long,long long,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t, float), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = a1 + 48 * v11;
      do
      {
        a5.n128_f32[0] = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(a1, a4, v10, v13, a5.n128_f32[0]);
        v13 -= 48;
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, a1, a5))
        {
          v15 = *(v14 + 16);
          v16 = *v14;
          v17 = *(a1 + 16);
          *v14 = *a1;
          *(v14 + 16) = v17;
          *a1 = v16;
          *(a1 + 16) = v15;
          v18 = *(v14 + 24);
          *(v14 + 24) = *(a1 + 24);
          *(a1 + 24) = v18;
          v19 = *(v14 + 32);
          *(v14 + 32) = *(a1 + 32);
          *(a1 + 32) = v19;
          LODWORD(v16) = *(v14 + 40);
          *(v14 + 40) = *(a1 + 40);
          *(a1 + 40) = v16;
          a5.n128_f32[0] = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(a1, a4, v10, a1, *&v16);
        }

        v14 += 48;
      }

      while (v14 != a3);
    }

    if (v9 >= 49)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(a1, v7, a4, v20);
        v7 -= 48;
      }

      while (v20-- > 2);
    }

    return v14;
  }

  return a3;
}

float std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t, float), uint64_t a3, uint64_t a4, float result)
{
  v5 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = a4;
    v8 = v5 >> 1;
    if ((v5 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v12 = (a1 + 48 * v11);
      v13 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
      if (v13 < a3 && (*a2)(a1 + 48 * v11, v12 + 3))
      {
        v12 += 3;
        v11 = v13;
      }

      if (((*a2)(v12, v6) & 1) == 0)
      {
        v18 = *v6;
        v19 = *(v6 + 16);
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *v6 = 0;
        v20 = *(v6 + 24);
        v21 = *(v6 + 40);
        do
        {
          v14 = v12;
          v15 = std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(v6, v12);
          if (v8 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (a1 + 48 * v16);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v16;
          }

          else if ((*a2)(a1 + 48 * v16, (v12 + 3), v15))
          {
            v12 += 3;
          }

          else
          {
            v11 = v16;
          }

          v6 = v14;
        }

        while (!(*a2)(v12, &v18));
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        v17 = v18;
        *(v14 + 2) = v19;
        *v14 = v17;
        *(v14 + 24) = v20;
        result = v21;
        *(v14 + 10) = v21;
      }
    }
  }

  return result;
}

void sub_1B56406D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    *v16 = *(a1 + 8);
    *&v16[7] = *(a1 + 15);
    v8 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(a1, a3, a4);
    v13 = v12;
    if (v12 == (a2 - 48))
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      *v13 = v7;
      *(v13 + 1) = *v16;
      *(v13 + 15) = *&v16[7];
      *(v13 + 23) = v8;
      *(v13 + 3) = v10;
      *(v13 + 4) = v9;
      *(v13 + 10) = v11;
    }

    else
    {
      v14 = std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(v12, (a2 - 48));
      v15 = (v13 + 3);
      if (*(a2 - 25) < 0)
      {
        operator delete(*(a2 - 48));
      }

      *(a2 - 48) = v7;
      *(a2 - 40) = *v16;
      *(a2 - 33) = *&v16[7];
      *(a2 - 25) = v8;
      *(a2 - 24) = v10;
      *(a2 - 16) = v9;
      *(a2 - 8) = v11;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(a1, v15, a3, 0xAAAAAAAAAAAAAAABLL * ((v15 - a1) >> 4), v14);
    }
  }
}

void sub_1B564084C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 48 * v6;
    v9 = (v8 + 48);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = (v8 + 96);
      if ((*a2)(v8 + 48, v8 + 96))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(a1, v9);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

float std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<std::string,long long,long long,float> const&,std::tuple<std::string,long long,long long,float> const&),std::tuple<std::string,long long,long long,float>*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, uint64_t), uint64_t a4, float result)
{
  v5 = a4 - 2;
  if (a4 >= 2)
  {
    v9 = v5 >> 1;
    v10 = (a1 + 48 * (v5 >> 1));
    v11 = a2 - 48;
    if ((*a3)(v10, a2 - 48))
    {
      v14 = *v11;
      v15 = *(v11 + 16);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      v16 = *(a2 - 24);
      v17 = *(a2 - 8);
      do
      {
        v12 = v10;
        v13 = std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::string,long long,long long,float>,std::tuple<std::string,long long,long long,float>,std::string,long long,long long,float,0ul,1ul,2ul,3ul>(v11, v10);
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 48 * v9);
        v11 = v12;
      }

      while (((*a3)(v10, &v14, v13) & 1) != 0);
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      *v12 = v14;
      *(v12 + 2) = v15;
      *(v12 + 24) = v16;
      result = v17;
      *(v12 + 10) = v17;
    }
  }

  return result;
}

void sub_1B5640A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void StopNgram::StopNgram(StopNgram *this, Vocab *a2, SubVocab *a3, int a4)
{
  Ngram::Ngram(this, a2, a4);
  *v5 = &unk_1F2D22498;
  v5[24] = a3;
}

uint64_t StopNgram::removeStopWords(StopNgram *this, const unsigned int *a2, unsigned int *a3, int a4)
{
  v5 = (a4 - 1);
  if (a4 == 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (a2[v8] != -1)
    {
      if (!(*(**(this + 24) + 32))(*(this + 24)))
      {
        a3[v9++] = a2[v8];
      }

      if (v5 == ++v8)
      {
        goto LABEL_10;
      }
    }

    LODWORD(v5) = v8;
  }

LABEL_10:
  a3[v9] = -1;
  return (v5 - v9);
}

float StopNgram::wordProb(StopNgram *this, uint64_t a2, const unsigned int *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  StopNgram::removeStopWords(this, a3, v6, 404);
  return LM::wordProb(this, a2, v6);
}

char *StopNgram::contextID(StopNgram *this, unsigned int a2, const unsigned int *a3, unsigned int *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = StopNgram::removeStopWords(this, a3, v9, 404);
  result = Ngram::contextID(this, a2, v9, a4);
  *a4 += v7;
  return result;
}

float StopNgram::contextBOW(StopNgram *this, const unsigned int *a2, unsigned int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  StopNgram::removeStopWords(this, a2, v6, 404);
  return Ngram::contextBOW(this, v6, a3);
}

void StopNgram::~StopNgram(StopNgram *this)
{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);

  LM::~LM(this);
}

{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);
  LM::~LM(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::AudioAnalyticsProcessor::computeAnalytics(float **a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  *__p = 0u;
  v77 = 0u;
  *v78 = 0u;
  v75 = 0u;
  *v76 = 0u;
  *v74 = 0u;
  v14 = kaldi::MatrixBase<float>::NumRows(a1);
  kaldi::Matrix<float>::Matrix(&v83, v14, 4, 0, 0);
  if (kaldi::MatrixBase<float>::NumRows(a1) >= 1)
  {
    kaldi::AudioAnalyticsHelper::ExtractDesiredAudioAnalytics(a1, 228, &v83);
    for (i = 0; i < kaldi::MatrixBase<float>::NumRows(&v83); ++i)
    {
      v100 = *(v83 + 4 * v84 * i);
      std::vector<double>::push_back[abi:ne200100](v78, &v100);
      v100 = *(v83 + 4 * v84 * i + 4);
      std::vector<double>::push_back[abi:ne200100](v74, &v100);
      v100 = *(v83 + 4 * v84 * i + 8);
      std::vector<double>::push_back[abi:ne200100](__p, &v100);
      v100 = *(v83 + 4 * v84 * i + 12);
      std::vector<double>::push_back[abi:ne200100](v76, &v100);
    }
  }

  *(&v75 + 1) = a3;
  *(&v77 + 1) = a3;
  *(&v79 + 1) = a3;
  *(&v81 + 1) = a3;
  kaldi::Matrix<float>::~Matrix(&v83);
  if ((a6 & 1) == 0)
  {
    if (v76[1] != v76[0])
    {
      v29 = 0;
      do
      {
        quasar::calculateRelativeJitter(v74, a5, v29, (v74[1] - v74[0]) >> 3);
        quasar::calculateAbsoluteShimmer(v76, a5, v29++, (v76[1] - v76[0]) >> 3);
      }

      while (v29 < (v76[1] - v76[0]) >> 3);
    }

    goto LABEL_69;
  }

  v18 = __p[0];
  if (__p[1] != __p[0])
  {
    v19 = 0.0;
    do
    {
      v20 = *v18++;
      v19 = v19 + v20;
    }

    while (v18 != __p[1]);
    v21 = v19 / ((__p[1] - __p[0]) >> 3);
    v22 = quasar::computeStdDev(__p, v21);
    v100 = 0.0;
    v101 = 0;
    v102 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v100, __p[0], __p[1], (__p[1] - __p[0]) >> 3);
    v23 = v100;
    v24 = v101;
    if (*&v100 == v101)
    {
      v26 = 0.0;
    }

    else
    {
      v25 = *&v100;
      do
      {
        *v25 = (*v25 - v21) / v22;
        ++v25;
      }

      while (v25 != v24);
      v26 = 0.0;
      v27 = *&v23;
      do
      {
        v28 = *v27++;
        v26 = v26 + v28;
      }

      while (v27 != v24);
    }

    v30 = v26 / ((v24 - *&v23) >> 3);
    v31 = quasar::computeStdDev(&v100, v30);
    if (quasar::gLogLevel <= 5)
    {
      HIDWORD(v16) = 1069128089;
      v33 = v31 * 0.1;
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Voicing threshold=", 18);
      v33 = v31 * 0.1;
      v34 = MEMORY[0x1B8C84BE0](v32, v31 * 0.1);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " mean=", 6);
      v36 = MEMORY[0x1B8C84BE0](v35, v30);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " stddev=", 8);
      MEMORY[0x1B8C84BE0](v37, v31);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v83);
    }

    v38 = v33;
    v39 = (__p[1] - __p[0]) >> 3;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    v40 = *&v100;
    v41 = v101;
    if (v101 == *&v100)
    {
      goto LABEL_40;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = v38;
    do
    {
      v16 = v40[v42];
      if (v16 <= v45)
      {
        if (v43 && (v16 = v40[v43 - 1], v16 > v45))
        {
          v46 = v43;
          if (v43 - v44 > a4)
          {
            *&v83 = __PAIR64__(v43, v44);
            std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v71, &v83);
            v40 = *&v100;
            v41 = v101;
            v46 = v43;
          }
        }

        else
        {
          v46 = v44;
        }

        v44 = v46 + 1;
      }

      v42 = ++v43;
    }

    while (v43 < (v41 - v40));
    if (!v44)
    {
LABEL_40:
      if (!v39)
      {
        goto LABEL_48;
      }

      v44 = 0;
      v45 = v38;
    }

    else if (v44 >= v39)
    {
      goto LABEL_48;
    }

    if (v40[(v39 - 1)] <= v45 || ~v44 + v39 <= a4)
    {
      goto LABEL_49;
    }

    *&v83 = __PAIR64__(v39, v44);
    std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v71, &v83);
    v40 = *&v100;
LABEL_48:
    if (!v40)
    {
LABEL_50:
      v48 = v71;
      v49 = v72;
      if (v71 != v72)
      {
        v50 = quasar::gLogLevel;
        do
        {
          if (v50 >= 6)
          {
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v83 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
            v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Voiced region start: ", 21);
            v52 = MEMORY[0x1B8C84C00](v51, *v48);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " end:", 5);
            MEMORY[0x1B8C84C00](v53, v48[1]);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(&v83);
            v50 = quasar::gLogLevel;
          }

          v48 += 2;
        }

        while (v48 != v49);
        v48 = v71;
        if (v72 != v71)
        {
          v55 = v74[0];
          v54 = v74[1];
          if (v74[1] != v74[0])
          {
            v56 = 0;
            v57 = 0;
            do
            {
              if (v57 >= ((v72 - v48) >> 3))
              {
                v55[v56] = 0;
                *(v78[0] + v56) = 0;
                *(v76[0] + v56++) = 0;
              }

              else
              {
                v58 = &v48[2 * v57];
                if (v56 >= *v58)
                {
                  v59 = v58[1];
                  if (v56 < v59)
                  {
                    quasar::calculateRelativeJitter(v74, a5, v56, v59);
                    quasar::calculateAbsoluteShimmer(v76, a5, v56, v71[2 * v57 + 1]);
                    v48 = v71;
                    v55 = v74[0];
                    v54 = v74[1];
                  }
                }

                else
                {
                  v55[v56] = 0;
                  *(v78[0] + v56) = 0;
                  *(v76[0] + v56) = 0;
                }

                if (v48[2 * v57 + 1] <= ++v56)
                {
                  ++v57;
                }
              }
            }

            while (v56 < ((v54 - v55) >> 3));
          }
        }
      }

      if (v48)
      {
        v72 = v48;
        operator delete(v48);
      }

LABEL_69:
      v60 = *a2;
      if (*a2)
      {
        v61 = *v60;
        if (*v60 != *(v60 + 8))
        {
          v62 = *v61;
          v63 = v61[1];
          if (*v61 != v63)
          {
            v64 = 0x6DB6DB6DB6DB6DB7 * ((v63 - v62) >> 5);
            LODWORD(v16) = *(v63 - 188);
            LODWORD(v17) = *(v62 + 28);
            v65 = *&v16 - v17;
            v66 = -1.0;
            v67 = -1.0;
            if (v65 > 0.0)
            {
              v67 = v64 / (v65 / 1000.0 / 60.0);
            }

            *&v82 = v67;
            if (v64 != 1)
            {
              v68 = (v62 + 36);
              v69 = 0.0;
              v70 = v64 - 1;
              do
              {
                v69 = v69 + (*v68 - *(v68 - 2));
                v68 += 56;
                --v70;
              }

              while (v70);
              if (v64 > 1)
              {
                v66 = v69 / 1000.0 / (v64 - 1);
              }
            }

            *(&v82 + 1) = v66;
          }
        }
      }

      *a7 = *v74;
      *(a7 + 16) = v75;
      v74[0] = 0;
      v74[1] = 0;
      *(a7 + 24) = *(&v75 + 1);
      *(a7 + 32) = *v76;
      *(a7 + 48) = v77;
      *&v75 = 0;
      v76[0] = 0;
      v76[1] = 0;
      *&v77 = 0;
      *(a7 + 56) = *(&v77 + 1);
      *(a7 + 64) = *v78;
      *(a7 + 80) = v79;
      v78[0] = 0;
      v78[1] = 0;
      *(a7 + 88) = *(&v79 + 1);
      *(a7 + 96) = *__p;
      *(a7 + 112) = v81;
      *&v79 = 0;
      __p[0] = 0;
      __p[1] = 0;
      *&v81 = 0;
      *(a7 + 120) = *(&v81 + 1);
      *(a7 + 128) = v82;
      goto LABEL_81;
    }

LABEL_49:
    v101 = v40;
    operator delete(v40);
    goto LABEL_50;
  }

  if (quasar::gLogLevel >= 1)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Missing voicing regions in audio analytics", 42);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v83);
    v18 = __p[0];
  }

  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  if (v18)
  {
    __p[1] = v18;
    operator delete(v18);
  }

LABEL_81:
  if (v78[0])
  {
    v78[1] = v78[0];
    operator delete(v78[0]);
  }

  if (v76[0])
  {
    v76[1] = v76[0];
    operator delete(v76[0]);
  }

  if (v74[0])
  {
    v74[1] = v74[0];
    operator delete(v74[0]);
  }
}

void sub_1B56415B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  quasar::AudioAnalytics::~AudioAnalytics(&a13);
  _Unwind_Resume(a1);
}

uint64_t *quasar::calculateRelativeJitter(uint64_t *result, int a2, int a3, int a4)
{
  v4 = a3 + a2;
  if (a3 + a2 >= a4)
  {
    v4 = a4;
  }

  v5 = (v4 + ~a3);
  v6 = *result;
  if (v5 <= 0)
  {
    *(v6 + 8 * a3) = 0;
  }

  else
  {
    v7 = (v6 + 8 * a3 + 8);
    v8 = 0.0;
    v9 = v5;
    v10 = 0.0;
    do
    {
      v11 = *(v7 - 1);
      v8 = vabdd_f64(v11, *v7) + v8;
      v10 = v11 + v10;
      ++v7;
      --v9;
    }

    while (v9);
    *(v6 + 8 * a3) = 0;
    v12 = v10 / v5;
    if (v12 > 0.0)
    {
      *(v6 + 8 * a3) = (((v8 * 100.0) / v5) / v12);
    }
  }

  return result;
}

void quasar::calculateAbsoluteShimmer(uint64_t *a1, int a2, int a3, int a4)
{
  v5 = a3 + a2;
  if (a3 + a2 >= a4)
  {
    v5 = a4;
  }

  v6 = v5 + ~a3;
  v7 = *a1;
  if (v6 <= 0)
  {
    *(v7 + 8 * a3) = 0;
  }

  else
  {
    v8 = (v7 + 8 * a3 + 8);
    v9 = 0.0;
    v10 = (v5 + ~a3);
    do
    {
      v11 = 0.0;
      if (*v8 != 0.0)
      {
        v11 = fabs(log10(*(v8 - 1) / *v8));
      }

      v9 = v9 + v11;
      ++v8;
      --v10;
    }

    while (v10);
    *(v7 + 8 * a3) = 0;
    v12 = v9 * 20.0 / v6;
    if (v12 > 0.0)
    {
      *(v7 + 8 * a3) = v12;
    }
  }
}

double quasar::computeStdDev(double **a1, double a2)
{
  std::vector<double>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v5 = *a1;
  v4 = a1[1];
  v6 = __p;
  if (v5 != v4)
  {
    v7 = v5;
    v8 = __p;
    do
    {
      v9 = *v7++;
      *v8++ = v9 - a2;
    }

    while (v7 != v4);
  }

  v10 = 0.0;
  if (v6 != v15)
  {
    v11 = v6;
    do
    {
      v12 = *v11++;
      v10 = v10 + v12 * v12;
    }

    while (v11 != v15);
  }

  if (v6)
  {
    v15 = v6;
    operator delete(v6);
  }

  return sqrt(v10 / (v4 - v5));
}

void fst::Determinize<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, __n128 a2, uint64_t a3, int *a4)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v7 = FLAGS_fst_default_cache_gc;
  v12 = 0;
  v13 = 0;
  v5 = *(a4 + 1);
  v9 = *a4;
  a2.n128_u64[0] = *(a4 + 3);
  v10 = a2.n128_u64[0];
  v11 = *(a4 + 20);
  v8 = 0;
  *v14 = v5;
  LODWORD(v6[0]) = 2139095040;
  a2.n128_f32[0] = v5;
  if (v5 == INFINITY && a4[2] == -1)
  {
    fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(v14, a1);
  }

  if ((*(*a1 + 64))(a1, 0x10000, 0, a2))
  {
    memset(v6, 0, sizeof(v6));
    fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, v6, 1);
  }

  fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(v14, a1);
}

void quasar::RealignAmFusionDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  quasar::ForceAlignDecoderBase::registerParams(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "am-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Acoustic model (transition model) filename");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 108), __p, 1, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "am-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for acoustic likelihoods");
  quasar::SystemConfig::Register<float>(a2, v6, (this + 117), __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "ctc-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for ctcScale");
  quasar::SystemConfig::Register<float>(a2, v6, this + 940, __p, 0, 252, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Map model into memory (requires aligned models)");
  quasar::SystemConfig::Register<BOOL>(a2, v6, (this + 118), __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Name of nnet model file. Don't provide this file if frontend has performed the AM backend logic");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 111), __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "skip-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames to be skipped in nnet computation.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 948, __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "class-frame-counts-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing vector with frame-counts of pdfs to compute log-priors. This is the same as class-frame-counts, but allows paths that are relative to the json config file (class-frame-counts requires absolute paths). If class-frame-counts is also specified, this param will override it.");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 121), __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of nbest for am-fusion");
  quasar::SystemConfig::Register<int>(a2, v6, (this + 119), __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pre-aligned-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "the final weight will be computed as preAlignedScale * preAlignedCost + postAlignedScale * postAlignedCost");
  quasar::SystemConfig::Register<float>(a2, v6, this + 956, __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "post-aligned-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "the final weight will be computed as preAlignedScale * preAlignedCost + postAlignedScale * postAlignedCost");
  quasar::SystemConfig::Register<float>(a2, v6, (this + 120), __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "ilabel-score-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "(experimental) score lookup table of the T transducer");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 114), __p, 0, 251, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "experimental-new-merge-algo");
  std::string::basic_string[abi:ne200100]<0>(__p, "(experimental) Use new lattice merging algorithm");
  quasar::SystemConfig::Register<BOOL>(a2, v6, (this + 134), __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5642064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::RealignAmFusionDecoder::runImpl()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  fst::NbestAsFsts<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>();
}

void fst::ConvertLatticeSkinny<fst::LatticeWeightTpl<float>,fst::TropicalWeightTpl<float>,int>(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  v4 = (*(*a1 + 160))(a1);
  v5 = v4;
  if (v4 >= 1)
  {
    v6 = v4;
    do
    {
      (*(*a2 + 200))(a2);
      --v6;
    }

    while (v6);
  }

  v7 = (*(*a1 + 24))(a1);
  (*(*a2 + 176))(a2, v7);
  if (v5 < 1)
  {
    return;
  }

  v8 = 0;
  do
  {
    (*(*a1 + 32))(&v15, a1, v8);
    v11[0] = *(&v15 + 1);
    LODWORD(v12[0]) = v15;
    v19 = 2139095040;
    v18 = INFINITY;
    if (*&v15 != INFINITY || v11[0] != v18 || v17 != __p)
    {
      (*(*a2 + 184))(a2, v8, 0.0);
    }

    v14 = 0;
    (*(*a1 + 136))(a1, v8, v12);
    while (1)
    {
      if (!v12[0])
      {
        if (v14 >= v12[2])
        {
          goto LABEL_22;
        }

LABEL_16:
        v9 = v12[1] + 48 * v14;
        goto LABEL_17;
      }

      if ((*(*v12[0] + 24))(v12[0]))
      {
        break;
      }

      if (!v12[0])
      {
        goto LABEL_16;
      }

      v9 = (*(*v12[0] + 32))();
LABEL_17:
      v11[0] = *v9;
      v11[1] = v11[0];
      v10 = *(v9 + 40);
      v11[2] = 0.0;
      v11[3] = v10;
      (*(*a2 + 208))(a2, v8, v11);
      if (v12[0])
      {
        (*(*v12[0] + 40))(v12[0]);
      }

      else
      {
        ++v14;
      }
    }

    if (v12[0])
    {
      (*(*v12[0] + 8))();
      goto LABEL_24;
    }

LABEL_22:
    if (v13)
    {
      --*v13;
    }

LABEL_24:
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v8 = (v8 + 1);
  }

  while (v8 != v5);
}

void sub_1B5644D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::RealignAmFusionDecoder::redecodeLattice(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(**a2 + 64))();
  v7 = (*(**a2 + 32))();
  v8 = (*(**a2 + 40))();
  quasar::RealignAmFusionDecoder::redecodeLattice(a1, v6, v7, v8, a3);
}

void quasar::RealignAmFusionDecoder::updateResultLatticeWithRescoreLatticeNew(uint64_t a1, void *a2, uint64_t a3, float a4, float a5, uint64_t a6, int a7)
{
  v51 = a7;
  (*(*a2 + 64))(a2, 0x40000, 1);
  (*(*a3 + 64))(a3, 0x40000, 1);
  std::vector<std::vector<double>>::vector[abi:ne200100](v33, 2uLL);
  v34[0] = 0;
  std::vector<double>::resize(v33[0], 2uLL, v34);
  v34[0] = 0;
  std::vector<double>::resize(v33[0] + 3, 2uLL, v34);
  v12 = v33[0];
  **v33[0] = a5;
  *(v12[3] + 8) = a5;
  fst::ScaleLattice<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,double>(v33, a2);
  v34[0] = v33;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v34);
  std::vector<std::vector<double>>::vector[abi:ne200100](v33, 2uLL);
  v34[0] = 0;
  std::vector<double>::resize(v33[0], 2uLL, v34);
  v34[0] = 0;
  std::vector<double>::resize(v33[0] + 3, 2uLL, v34);
  v13 = v33[0];
  **v33[0] = a4;
  *(v13[3] + 8) = a4;
  fst::ScaleLattice<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,double>(v33, a3);
  v34[0] = v33;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v34);
  fst::ArcSort<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(a3);
  v50[0] = &unk_1F2D228D0;
  v50[1] = a3;
  (*(*a3 + 64))(a3, 268697600, 1);
  v48 = 0;
  v49 = 0;
  kaldi::RescoreCompactLatticeWithDeterministicOnDemandCompactLattice(v50, v51, a2, &v48, 0);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v45 = 0u;
  v46 = 0u;
  v47 = 1065353216;
  v44[0] = 0;
  v44[1] = 0;
  v43 = v44;
  v14 = v51;
  v33[0] = &v51;
  v15 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v45, &v51);
  *(v15 + 5) = v14;
  *(v15 + 6) = -1;
  v16 = *(a2[1] + 72) - *(a2[1] + 64);
  if ((v16 >> 3) >= 1)
  {
    v17 = 0;
    v32 = (v16 >> 3) & 0x7FFFFFFF;
    do
    {
      v39 = &unk_1F2CFC4E0;
      v42 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::MutateCheck(a2);
      v18 = a2[1];
      v19 = *(*(v18 + 64) + 8 * v17);
      v40 = v19;
      v41 = v18 + 8;
      for (i = v42; ; i = ++v42)
      {
        v22 = v19 + 48;
        v21 = *(v19 + 48);
        if (i >= 0xAAAAAAAAAAAAAAABLL * ((*(v22 + 8) - v21) >> 4))
        {
          break;
        }

        v23 = v21 + 48 * i;
        v34[0] = *v23;
        v34[1] = *(v23 + 8);
        v36 = 0;
        v37 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v23 + 16), *(v23 + 24), (*(v23 + 24) - *(v23 + 16)) >> 2);
        v38 = *(v23 + 40);
        v24 = v34[0];
        if (LODWORD(v34[0]) == v51)
        {
          v52[0] = v34[0];
        }

        else
        {
          v52[0] = DWORD2(v46);
          v25 = HIDWORD(v34[0]);
          v33[0] = v52;
          v26 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v45, v52);
          *(v26 + 5) = v24;
          *(v26 + 6) = v25;
        }

        v27 = *(a1 + 712);
        v30 = *(v27 + 40);
        v28 = v27 + 40;
        v29 = v30;
        if (v30)
        {
          v31 = v28;
          do
          {
            if (*(v29 + 28) >= SLODWORD(v34[0]))
            {
              v31 = v29;
            }

            v29 = *(v29 + 8 * (*(v29 + 28) < SLODWORD(v34[0])));
          }

          while (v29);
          if (v31 != v28 && SLODWORD(v34[0]) >= *(v31 + 28))
          {
            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v43, v52);
          }
        }

        if (v52[0] <= 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "acceptorLabel > 0", 17);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
        }

        LODWORD(v34[0]) = v52[0];
        HIDWORD(v34[0]) = v52[0];
        fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::SetValue(&v39, v34);
        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }

        v19 = v40;
      }

      ++v17;
    }

    while (v17 != v32);
  }

  fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
}