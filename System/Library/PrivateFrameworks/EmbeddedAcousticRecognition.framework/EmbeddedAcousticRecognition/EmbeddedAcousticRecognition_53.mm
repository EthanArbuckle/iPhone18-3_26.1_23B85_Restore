void kaldi::nnet1::Padding2DComponent::~Padding2DComponent(kaldi::nnet1::Padding2DComponent *this)
{
  kaldi::nnet1::Component::~Component(this);

  JUMPOUT(0x1B8C85350);
}

int *kaldi::CuArray<int>::CuArray(int *a1, unsigned int *a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = *(a2 + 2);
  kaldi::CuArray<int>::Resize(a1, *a2, 1);
  v4 = *a1;
  if (v4)
  {
    memcpy(*(a1 + 1), *(a2 + 1), 4 * v4);
  }

  return a1;
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F2D118E0;
  *(a1 + 88) = &unk_1F2D11A18;
  *(a1 + 96) = &unk_1F2D11A40;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v7 = *(a1 + 168);
  v6 = *(a1 + 176);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 168) + 8 * v8);
      if (v9)
      {
        kaldi::NewCuSubOrMat<float>(v9, *(a1 + 16));
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }

  v11 = *(a1 + 192);
  v10 = *(a1 + 200);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v12))
      {
        kaldi::NewCuSubOrVec<float>();
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_1B5410E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, quasar::Bitmap *a12, quasar::Bitmap *a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](v15, 0);
  quasar::Bitmap::~Bitmap(a12);
  quasar::Bitmap::~Bitmap(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ConvolutionalMaxPoolingComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F2D11A68;
  *(a1 + 88) = &unk_1F2D11BA0;
  *(a1 + 96) = &unk_1F2D11BC8;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v7 = *(a1 + 168);
  v6 = *(a1 + 176);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 168) + 8 * v8);
      if (v9)
      {
        kaldi::NewCuSubOrMat<float>(v9, *(a1 + 16));
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }

  v11 = *(a1 + 192);
  v10 = *(a1 + 200);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v12))
      {
        kaldi::NewCuSubOrVec<float>();
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_1B5411498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, quasar::Bitmap *a12, quasar::Bitmap *a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](v15, 0);
  quasar::Bitmap::~Bitmap(a12);
  quasar::Bitmap::~Bitmap(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F2D11A68;
  *(a1 + 88) = &unk_1F2D11BA0;
  *(a1 + 96) = &unk_1F2D11BC8;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v7 = *(a1 + 168);
  v6 = *(a1 + 176);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 168) + 8 * v8);
      if (v9)
      {
        kaldi::NewCuSubOrMat<float>(v9, *(a1 + 16));
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }

  v11 = *(a1 + 192);
  v10 = *(a1 + 200);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v12))
      {
        kaldi::NewCuSubOrVec<float>();
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_1B5411AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, quasar::Bitmap *a12, quasar::Bitmap *a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](v15, 0);
  quasar::Bitmap::~Bitmap(a12);
  quasar::Bitmap::~Bitmap(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F2D118E0;
  *(a1 + 88) = &unk_1F2D11A18;
  *(a1 + 96) = &unk_1F2D11A40;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 168), (*(a2 + 176) - *(a2 + 168)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 192), (*(a2 + 200) - *(a2 + 192)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 240, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 5);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 2);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 312, *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 2);
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (*(a2 + 152))
  {
    operator new();
  }

  if (*(a2 + 160))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v7 = *(a1 + 168);
  v6 = *(a1 + 176);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 168) + 8 * v8);
      if (v9)
      {
        kaldi::NewCuSubOrMat<float>(v9, *(a1 + 16));
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }

  v11 = *(a1 + 192);
  v10 = *(a1 + 200);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      if (*(*(a2 + 192) + 8 * v12))
      {
        kaldi::NewCuSubOrVec<float>();
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  if (*(a2 + 496) != *(a2 + 488))
  {
    kaldi::nnet1::ConvolutionalMaxPoolingComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 488));
  }

  return a1;
}

void sub_1B5412130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, quasar::Bitmap *a12, quasar::Bitmap *a13, void *a14)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v17 = *(v14 + 57);
  if (v17)
  {
    operator delete(v17);
  }

  a14 = (v14 + 432);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 384);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 39);
  if (v18)
  {
    *(v14 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 36);
  if (v19)
  {
    *(v14 + 37) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 20);
  *(v14 + 20) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](v15, 0);
  quasar::Bitmap::~Bitmap(a12);
  quasar::Bitmap::~Bitmap(a13);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v14);
  _Unwind_Resume(a1);
}

void quasar::SpeechModelInfo::getLocale(quasar::SpeechModelInfo *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "_");
  quasar::Locale::fromInternalShortIdentifier(this + 120, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5412310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::SystemConfig::Version::operator>(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a2 == *a1)
  {
    return a2[1] < a1[1];
  }

  return 0;
}

void quasar::SystemConfig::makePathAbsolute(quasar::SystemConfig *a1, uint64_t a2, int a3)
{
  if (*(a1 + 388) != 1)
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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v7, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v7);
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    quasar::filesystem::Path::makeAbsolute(a1 + 40, a2, &v7);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
    *(a2 + 16) = v8;
    quasar::SystemConfig::checkPathExists(a1, a2, a3);
  }
}

uint64_t quasar::SystemConfig::getMainSpeechModelInfo(quasar::SystemConfig *this)
{
  if (*(this + 388) != 1)
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
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "Config file must be loaded before calling this method.");
    goto LABEL_6;
  }

  if (*(this + 184) != 1)
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
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "Config file does not have speech model-info node.");
LABEL_6:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v2);
  }

  return this + 912;
}

uint64_t quasar::SystemConfig::getTranslationModelInfo(quasar::SystemConfig *this)
{
  if (*(this + 388) != 1)
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
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "Config file must be loaded before calling this method.");
    goto LABEL_6;
  }

  if (*(this + 184) != 2)
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
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "Config file does not have mt-model-info node.");
LABEL_6:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v2);
  }

  return this + 416;
}

uint64_t quasar::SystemConfig::getHybridClientConfigs(quasar::SystemConfig *this)
{
  if (*(this + 388) != 1)
  {
    memset(v2, 0, sizeof(v2));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v2);
  }

  return this + 688;
}

void quasar::SystemConfig::getMainModelVersion(quasar::SystemConfig *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 388) != 1)
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
    v4 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v4, "Config file must be loaded before calling this method.");
    goto LABEL_10;
  }

  if (!*(this + 184))
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
    v4 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v4, "Config file does not have model-info node.");
LABEL_10:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v4);
  }

  if (*(this + 887) < 0)
  {
    v2 = *(this + 108);
    v3 = *(this + 109);

    std::string::__init_copy_ctor_external(a2, v2, v3);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 54);
    a2->__r_.__value_.__r.__words[2] = *(this + 110);
  }
}

void quasar::SystemConfig::readTranslationModelInfo(quasar::SystemConfig *this)
{
  memset(&v3, 0, sizeof(v3));
  v5[1] = 0;
  v5[0] = 0;
  v4 = v5;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 1065353216;
  v13 = 1065353216;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 1065353216;
  v19 = 1065353216;
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(__p, "mt-model-info.version");
  quasar::PTree::getString(this + 72, __p);
}

uint64_t quasar::SystemConfig::validateOverridesInTranslationModelInfo(quasar::SystemConfig *this, const quasar::TranslationModelInfo *a2)
{
  std::unordered_map<std::string,std::unordered_set<std::string>>::unordered_map(v15, a2 + 232);
  v11 = a2 + 32;
  v12 = a2;
  v13 = *(a2 + 3);
  if (v13 != (a2 + 32))
  {
    do
    {
      v3 = v13 + 4;
      v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v12 + 24, v13 + 4);
      if (v4)
      {
        v3 = v4 + 5;
      }

      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v12 + 29, v3))
      {
        std::operator+<char>();
        quasar::SystemConfig::getPtreeOptional(this, &v14);
      }

      v5 = v13;
      v6 = v13[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v13 = v7;
    }

    while (v7 != v11);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(v15);
}

void sub_1B5415194(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(v1 - 136);
  _Unwind_Resume(a1);
}

void *std::tuple<std::string &,std::string &>::operator=[abi:ne200100]<std::string,std::string,0>(void *a1, __int128 *a2)
{
  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = a1[1];
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 5);
  *v6 = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

void quasar::TranslationModelInfo::~TranslationModelInfo(char **this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table((this + 29));
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((this + 24));
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::~__hash_table((this + 19));
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::~__hash_table((this + 14));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::~__hash_table((this + 9));
  v2 = (this + 6);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::string>::destroy((this + 3), this[4]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::SystemConfig::aceCatToQuasarTemplate(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 1552) != 1)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v10);
  }

  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 336, a2);
  if (a1 + 344 == v6)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
      return;
    }

    v8 = *a2;
    v9 = *(a2 + 8);
  }

  else
  {
    if ((*(v6 + 79) & 0x80000000) == 0)
    {
      v7 = *(v6 + 56);
      a3->__r_.__value_.__r.__words[2] = *(v6 + 72);
      *&a3->__r_.__value_.__l.__data_ = v7;
      return;
    }

    v8 = *(v6 + 56);
    v9 = *(v6 + 64);
  }

  std::string::__init_copy_ctor_external(a3, v8, v9);
}

uint64_t quasar::SystemConfig::quasarTemplateToAceCats@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 1552) != 1)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 360, a2);
  if (a1 + 368 == result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = *(result + 56);
    v7 = *(result + 64);

    return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
  }

  return result;
}

void quasar::SystemConfig::readPtreeAtPrefix(quasar::SystemConfig *this)
{
  v2 = (this + 824);
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  v3 = quasar::endsWith(v2, __p);
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (v3)
  {
    if (*(this + 847) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(this + 103), *(this + 104));
    }

    else
    {
      *__p = *v2;
      *&v8 = v2[2];
    }

    if ((SBYTE7(v8) & 0x8000000000000000) != 0)
    {
      v5 = __p[0];
      v4 = --__p[1];
    }

    else
    {
      v4 = SBYTE7(v8) - 1;
      BYTE7(v8) = v4 & 0x7F;
      v5 = __p;
    }

    *(v5 + v4) = 0;
    quasar::SystemConfig::readPtree(this, __p);
  }

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
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Prefix must end with '.' : ", 27);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, v2);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B5415630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SystemConfig::enforceMaxVersion(uint64_t result, int a2, int a3, uint64_t a4)
{
  v21[0] = a2;
  v21[1] = a3;
  v5 = *(result + 32);
  if (v5 > a2 || v5 == a2 && *(result + 36) > a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    quasar::SystemConfig::Version::str(v21, &v16);
    v7 = std::string::insert(&v16, 0, "Incompatible system config version. Needs to be <= ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v17, " to use ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = *(a4 + 23);
    if (v11 >= 0)
    {
      v12 = a4;
    }

    else
    {
      v12 = *a4;
    }

    if (v11 >= 0)
    {
      v13 = *(a4 + 23);
    }

    else
    {
      v13 = *(a4 + 8);
    }

    v14 = std::string::append(&v18, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v20 = v14->__r_.__value_.__r.__words[2];
    v19 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::Error::Error(exception, &v19);
  }

  return result;
}

void sub_1B541577C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

unint64_t quasar::SystemConfig::ToUInt(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  __endptr = 0;
  result = strtoul(a1, &__endptr, 0);
  v3 = v1;
  if (v1[23] < 0)
  {
    v3 = *v1;
  }

  if (v3 == __endptr)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v5 = std::string::append(&v7, "");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::Error::Error(exception, &v8);
  }

  return result;
}

void sub_1B54158FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t quasar::SystemConfig::ToInt64(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  __endptr = 0;
  result = strtol(a1, &__endptr, 0);
  v3 = v1;
  if (v1[23] < 0)
  {
    v3 = *v1;
  }

  if (v3 == __endptr)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v5 = std::string::append(&v7, "");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::Error::Error(exception, &v8);
  }

  return result;
}

void sub_1B5415A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::pair<std::string,std::string>>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__construct_node_hash<std::pair<std::string const,std::vector<std::pair<std::string,std::string>>> const&>();
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

void sub_1B54167F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::pair<std::string,std::string>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

std::string *std::pair<std::string const,std::vector<std::pair<std::string,std::string>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 4));
  return this;
}

void sub_1B54169B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::TranslationPairSetting> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__construct_node_hash<std::pair<std::string const,quasar::TranslationPairSetting> const&>();
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

void sub_1B5416C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5416CB0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,quasar::TranslationPairSetting>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1B5416D6C(_Unwind_Exception *exception_object)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }

    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__construct_node_hash<std::pair<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>> const&>();
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

void sub_1B541706C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::unordered_map<std::string,quasar::TranslationPairSetting>::unordered_map(&this[1], a2 + 24);
  return this;
}

void sub_1B54171A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::map<std::string,double>> const&>(void *a1, uint64_t *a2, int *a3)
{
  result = *std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__find_equal<quasar::LmeDataFactoryBase::LmeType>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__construct_node<std::pair<int const,std::map<std::string,double>> const&>();
  }

  return result;
}

std::string *std::pair<std::string,quasar::TranslationPairSetting>::pair[abi:ne200100]<std::string&,quasar::TranslationPairSetting&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    this[2].__r_.__value_.__r.__words[2] = *(a3 + 5);
    *&this[2].__r_.__value_.__l.__data_ = v7;
  }

  return this;
}

void sub_1B5417324(_Unwind_Exception *exception_object)
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

uint64_t std::pair<std::string &,std::vector<std::pair<std::string,std::string>> &>::operator=[abi:ne200100]<std::string const,std::vector<std::pair<std::string,std::string>>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(v4, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 4));
  }

  return a1;
}

void sub_1B5417404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string &,std::unordered_map<std::string,quasar::TranslationPairSetting> &>::operator=[abi:ne200100]<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != a2 + 24)
  {
    *(v4 + 32) = *(a2 + 56);
    std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *> *>>(v4, *(a2 + 40), 0);
  }

  return a1;
}

void sub_1B5417548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1B5417638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string &,std::unordered_set<std::string> &>::operator=[abi:ne200100]<std::string const,std::unordered_set<std::string>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != a2 + 24)
  {
    *(v4 + 32) = *(a2 + 56);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(v4, *(a2 + 40), 0);
  }

  return a1;
}

void sub_1B541777C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::unordered_set<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::unordered_set<std::string>::unordered_set(&this[1], a2 + 24);
  return this;
}

void sub_1B5417878(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  return this;
}

void sub_1B5417910(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<std::string,std::string,0>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  quasar::PTree::PTree(a1 + 24, a2 + 24);
  return a1;
}

void sub_1B541796C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_set<std::string>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__construct_node_hash<std::pair<std::string const,std::unordered_set<std::string>> const&>();
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

void sub_1B5417BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,BOOL *> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__construct_node<std::pair<std::string const,BOOL *> const&>();
  }

  return result;
}

void sub_1B5417D80(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,float *>,std::__map_value_compare<std::string,std::__value_type<std::string,float *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float *> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,float *>,std::__map_value_compare<std::string,std::__value_type<std::string,float *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float *>>>::__construct_node<std::pair<std::string const,float *> const&>();
  }

  return result;
}

void sub_1B5417EBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string*> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__construct_node<std::pair<std::string const,std::string*> const&>();
  }

  return result;
}

void sub_1B5417FF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::SystemConfig::Version> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__construct_node<std::pair<std::string const,long long> const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::set<std::string>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__construct_node<std::pair<std::string const,std::set<std::string>> const&>();
  }

  return v3;
}

std::string *std::pair<std::string const,std::set<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::set<std::string>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 3);
  return this;
}

void sub_1B5418200(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,0>(uint64_t a1)
{
  quasar::SystemConfig::SystemConfigInfo::~SystemConfigInfo((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::__erase_unique<std::string const*>(void *a1, uint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::find<std::string const*>(a1, a2);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1, result);
    return 1;
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::TranslationPairSetting>>(void *a1, const void **a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B54187A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B5418AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B5418DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5418ECC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::pair<std::string,std::string>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::pair<std::string,std::string>>::__find_equal<std::pair<std::string,std::string>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::pair<std::string,std::string>>::__find_equal<std::pair<std::string,std::string>>(uint64_t a1, void *a2, const void **a3)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
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

    v8 = *(a3 + 47);
    v9 = a3[4];
    v12 = a3[3];
    v10 = a3 + 3;
    v11 = v12;
    if ((v8 & 0x80u) == 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v9;
    }

    if ((v8 & 0x80u) == 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = v11;
    }

    do
    {
      while (1)
      {
        v15 = v3;
        v18 = v3[4];
        v16 = v3 + 4;
        v17 = v18;
        v19 = *(v16 + 23);
        if (v19 >= 0)
        {
          v20 = *(v16 + 23);
        }

        else
        {
          v20 = v16[1];
        }

        if (v19 >= 0)
        {
          v21 = v16;
        }

        else
        {
          v21 = v17;
        }

        if (v20 >= v6)
        {
          v22 = v6;
        }

        else
        {
          v22 = v20;
        }

        v23 = memcmp(v7, v21, v22);
        v24 = v6 < v20;
        if (v23)
        {
          v24 = v23 < 0;
        }

        if (!v24)
        {
          v25 = memcmp(v21, v7, v22);
          v26 = v20 < v6;
          if (v25)
          {
            v26 = v25 < 0;
          }

          if (v26)
          {
            break;
          }

          v27 = *(v15 + 79);
          if (v27 >= 0)
          {
            v28 = *(v15 + 79);
          }

          else
          {
            v28 = v15[8];
          }

          if (v27 >= 0)
          {
            v29 = v15 + 7;
          }

          else
          {
            v29 = v15[7];
          }

          if (v28 >= v13)
          {
            v30 = v13;
          }

          else
          {
            v30 = v28;
          }

          v31 = memcmp(v14, v29, v30);
          v32 = v13 < v28;
          if (v31)
          {
            v32 = v31 < 0;
          }

          if (!v32)
          {
            break;
          }
        }

        v3 = *v15;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_61;
        }
      }

      v33 = memcmp(v21, v7, v22);
      v34 = v33 < 0;
      if (!v33)
      {
        v34 = v20 < v6;
      }

      if (!v34)
      {
        v35 = *(v15 + 79);
        v36 = v35 >= 0 ? *(v15 + 79) : v15[8];
        v37 = v35 >= 0 ? v15 + 7 : v15[7];
        v38 = v13 >= v36 ? v36 : v13;
        v39 = memcmp(v37, v14, v38);
        v40 = v36 < v13;
        if (v39)
        {
          v40 = v39 < 0;
        }

        if (!v40)
        {
          break;
        }
      }

      v4 = v15 + 1;
      v3 = v15[1];
    }

    while (v3);
  }

  else
  {
    v15 = (a1 + 8);
  }

LABEL_61:
  *a2 = v15;
  return v4;
}

uint64_t std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<std::pair<std::string,std::string> const&>(uint64_t a1, __int128 *a2)
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

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (48 * v2);
  v13.__end_ = (48 * v2);
  v13.__end_cap_.__value_ = 0;
  std::pair<std::string,std::string>::pair[abi:ne200100]((48 * v2), a2);
  v7 = 48 * v2 + 48;
  v8 = *(a1 + 8) - *a1;
  v9 = 48 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v13);
  return v7;
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

std::string **std::pair<std::string &,quasar::TranslationPairSetting &>::operator=[abi:ne200100]<std::string const,quasar::TranslationPairSetting,0>(std::string **a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = a1[1];
  std::string::operator=(v4, a2 + 1);
  std::string::operator=(v4 + 1, a2 + 2);
  return a1;
}

void sub_1B54195E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5419694(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::pair<std::string,double>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__emplace_unique_key_args<int,std::pair<int,std::map<std::string,double>>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__construct_node<std::pair<int,std::map<std::string,double>>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = std::less<std::string>::operator()[abi:ne200100](a5, a2, a1);
  v11 = std::less<std::string>::operator()[abi:ne200100](a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (std::less<std::string>::operator()[abi:ne200100](a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (std::less<std::string>::operator()[abi:ne200100](a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (std::less<std::string>::operator()[abi:ne200100](a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (std::less<std::string>::operator()[abi:ne200100](a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (std::less<std::string>::operator()[abi:ne200100](a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (std::less<std::string>::operator()[abi:ne200100](a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = std::less<std::string>::operator()[abi:ne200100](a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (std::less<std::string>::operator()[abi:ne200100](a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!std::less<std::string>::operator()[abi:ne200100](a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = std::less<std::string>::operator()[abi:ne200100](a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (std::less<std::string>::operator()[abi:ne200100](a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!std::less<std::string>::operator()[abi:ne200100](a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (std::less<std::string>::operator()[abi:ne200100](a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (std::less<std::string>::operator()[abi:ne200100](a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!std::less<std::string>::operator()[abi:ne200100](a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!std::less<std::string>::operator()[abi:ne200100](a3, a2, &v17));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = *(v8 + 16);
      v11 = v20;
      v12 = v9[2];
      *v8 = *v9;
      *(v8 + 16) = v12;
      v9[2] = v11;
      *v9 = v10;
      do
      {
        v8 += 24;
      }

      while (std::less<std::string>::operator()[abi:ne200100](a3, v8, &v17));
      do
      {
        v9 -= 3;
      }

      while (!std::less<std::string>::operator()[abi:ne200100](a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 24);
  if ((v8 - 24) == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 8);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 8) = v18;
  *v13 = v15;
  return v8 - 24;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24), a1);
        v17 = std::less<std::string>::operator()[abi:ne200100](a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!std::less<std::string>::operator()[abi:ne200100](a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!std::less<std::string>::operator()[abi:ne200100](a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!std::less<std::string>::operator()[abi:ne200100](a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24), a1);
  v23 = std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (std::less<std::string>::operator()[abi:ne200100](a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (std::less<std::string>::operator()[abi:ne200100](a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = std::less<std::string>::operator()[abi:ne200100](a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (std::less<std::string>::operator()[abi:ne200100](a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 8);
        *&v27[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v27;
          *(v18 + 15) = *&v27[7];
          *(v18 + 23) = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_1B541A60C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && std::less<std::string>::operator()[abi:ne200100](a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && std::less<std::string>::operator()[abi:ne200100](a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (std::less<std::string>::operator()[abi:ne200100](a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 48);
      if (std::less<std::string>::operator()[abi:ne200100](a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (std::less<std::string>::operator()[abi:ne200100](a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

void sub_1B541AA3C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_1B541AAF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_1B541ABAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void quasar::ResultCombiner::ResultCombiner(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D11FB8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  quasar::SystemConfig::SystemConfig((a1 + 32));
}

void sub_1B541AC48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ResultCombiner::ResultCombiner(quasar::ResultCombiner *this)
{
  *this = &unk_1F2D11FB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  quasar::SystemConfig::SystemConfig((this + 32));
}

void sub_1B541ACC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::ResultCombiner::init(quasar::ResultCombiner *this)
{
  v2 = (this + 8);
  if (*(this + 31) < 0)
  {
    v3 = *v2;
  }

  else
  {
    v3 = this + 8;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v3);
  memset(v29, 0, sizeof(v29));
  memset(v27, 0, sizeof(v27));
  v28 = 1065353216;
  JsonFile = quasar::SystemConfig::readJsonFile(this + 32, __p, v29, v27, 0, 0);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v27);
  v30 = v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (JsonFile != 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "result-combiner");
    quasar::SystemConfig::enforceMinVersion(this + 32, 45, 0, __p);
    if (SBYTE7(v11) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "result-combiner.");
    quasar::SystemConfig::setPrefix(this + 32, __p);
    if (SBYTE7(v11) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*this + 8))(this, this + 32);
    std::string::basic_string[abi:ne200100]<0>(__p, "result-combiner");
    quasar::SystemConfig::readPtree(this + 32, __p);
  }

  if (quasar::gLogLevel >= 2)
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VersionUnsupported: ", 20);
    v6 = *(this + 31);
    if (v6 >= 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = *(this + 1);
    }

    if (v6 >= 0)
    {
      v8 = *(this + 31);
    }

    else
    {
      v8 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
  }

  return 0;
}

void sub_1B541AF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25)
{
  if (SBYTE7(a10) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v27 = __cxa_begin_catch(exception_object);
    if (quasar::gLogLevel >= 2)
    {
LABEL_8:
      v28 = v27;
      a24 = 0u;
      a25 = 0u;
      a22 = 0u;
      a23 = 0u;
      a20 = 0u;
      a21 = 0u;
      a18 = 0u;
      a19 = 0u;
      a16 = 0u;
      a17 = 0u;
      a14 = 0u;
      a15 = 0u;
      a12 = 0u;
      a13 = 0u;
      a10 = 0u;
      a11 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error reading JSON config file: ", 32);
      v30 = (*(*v28 + 16))(v28);
      v31 = strlen(v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
    }
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v27 = __cxa_begin_catch(exception_object);
    if (quasar::gLogLevel >= 2)
    {
      goto LABEL_8;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1B541AE00);
}

void quasar::ResultCombiner::~ResultCombiner(void **this)
{
  *this = &unk_1F2D11FB8;
  quasar::SystemConfig::~SystemConfig((this + 4));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void quasar::RankingResultCombiner::registerParams(quasar::RankingResultCombiner *this, const void **a2)
{
  *(this + 1620) = 1;
  *(this + 404) = 10;
  MEMORY[0x1B8C84820](this + 1592, "1.0,1.0");
  std::string::basic_string[abi:ne200100]<0>(v6, "compute-conf");
  std::string::basic_string[abi:ne200100]<0>(__p, "Whether to use existing confidence or re-compute a score from the tokens, default = true.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 1620, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-depth");
  std::string::basic_string[abi:ne200100]<0>(__p, "The maximum number of alternatives to allow in the combined output, default = 10.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 1616, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "system-weights");
  std::string::basic_string[abi:ne200100]<0>(__p, "A comma-separated list of weights to apply to each system, in the same order as the provided system input, default is 1.0,1.0.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 1592, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B541B374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::ConfusionNetworkCombiner::registerParams(quasar::ConfusionNetworkCombiner *this, const void **a2)
{
  v4 = this + 1645;
  *(this + 1644) = 1;
  *(this + 410) = 10;
  MEMORY[0x1B8C84820](this + 1592, "1.0,1.0");
  *(this + 426) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v4 + 71) = _D0;
  *v4 = 16777217;
  *(this + 1649) = 0;
  *(this + 431) = 0;
  *(v4 + 63) = 0x647FFFFFFFLL;
  MEMORY[0x1B8C84820](this + 1616, "contact-first@contact-middle@contact-last@appname-first@appname-last,contact-first@contact-middle@contact-last@appname-first@appname-last");
  std::string::basic_string[abi:ne200100]<0>(v12, "compute-conf");
  std::string::basic_string[abi:ne200100]<0>(__p, "Whether to use existing confidence or re-compute a score from the tokens, default = true.");
  quasar::SystemConfig::Register<BOOL>(a2, v12, this + 1644, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "nbest-depth");
  std::string::basic_string[abi:ne200100]<0>(__p, "The maximum number of alternatives to allow in the combined output, default = 10.");
  quasar::SystemConfig::Register<int>(a2, v12, this + 1640, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "system-weights");
  std::string::basic_string[abi:ne200100]<0>(__p, "A comma-separated list of weights to apply to each system, in the same order as the provided system input, default is 1.0,1.0.");
  quasar::SystemConfig::Register<std::string>(a2, v12, this + 1592, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "backbone-system");
  std::string::basic_string[abi:ne200100]<0>(__p, "The index of the system to use as the reference/backbone system. This is the default system, and the one which is used for alignment.");
  quasar::SystemConfig::Register<int>(a2, v12, this + 1704, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "eps-backbone");
  std::string::basic_string[abi:ne200100]<0>(__p, "The epsilon confidence score for epsilons inserted into the backbone.");
  quasar::SystemConfig::Register<float>(a2, v12, (v4 + 71), __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "eps-alternative");
  std::string::basic_string[abi:ne200100]<0>(__p, "The epsilon confidence score for epsilons inserted into the alternative systems.");
  quasar::SystemConfig::Register<float>(a2, v12, this + 1720, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "do-selection");
  std::string::basic_string[abi:ne200100]<0>(__p, "Switch to control whether to do system selection or combination, default is 'true' (i.e. do selection only).");
  quasar::SystemConfig::Register<BOOL>(a2, v12, v4, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "combine-any-region");
  std::string::basic_string[abi:ne200100]<0>(__p, "Switch to control whether, if regions are specified, to do region combination within the entire utterance, if the region exists at all in the two CNs.");
  quasar::SystemConfig::Register<BOOL>(a2, v12, this + 1646, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "combine-in-region-only");
  std::string::basic_string[abi:ne200100]<0>(__p, "Switch to control whether, if regions are specified, to do region combination only in slots where the region exists.");
  quasar::SystemConfig::Register<BOOL>(a2, v12, this + 1647, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "confidence-delta");
  std::string::basic_string[abi:ne200100]<0>(__p, "The delta by which the competing systems must be better than the backbone in order to be considered better.");
  quasar::SystemConfig::Register<float>(a2, v12, this + 1724, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "region-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "List of regional terminals to mach for use for system combination (works with region-combine options). Comma-separated for each system, and @-separated for each region within a system (e.g. contact-first@appname-first,contact-last).");
  quasar::SystemConfig::Register<std::string>(a2, v12, this + 1616, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "do-flatten");
  std::string::basic_string[abi:ne200100]<0>(__p, "Switch to control whether to flatten the confusion network such that only a 1-best combination/selection is performed.");
  quasar::SystemConfig::Register<BOOL>(a2, v12, this + 1648, __p, 0, 45, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "do-partial-merge");
  std::string::basic_string[abi:ne200100]<0>(__p, "Switch to control whether to allow merging a partial hypothesis with a longer one before doing selection.");
  quasar::SystemConfig::Register<BOOL>(a2, v12, this + 1649, __p, 0, 63, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "max-partial-shift");
  std::string::basic_string[abi:ne200100]<0>(__p, "The amount of jitter or shift to allow when deciding whether to merge a longer hypothesis with a partial one.");
  quasar::SystemConfig::Register<int>(a2, v12, this + 1712, __p, 0, 63, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "truncation-delta-milliseconds");
  std::string::basic_string[abi:ne200100]<0>(__p, "Skip system combination if (backbone speech end - competing speech end) >= this value. Value can be positive or negative. This prevents truncation if the CN being combined with is too short. By default, we don't enable this check, value = huge number.");
  quasar::SystemConfig::Register<int>(a2, v12, (v4 + 63), __p, 0, 61, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_1B541BAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t quasar::RankingResultCombiner::finishInit(quasar::RankingResultCombiner *this)
{
  result = kaldi::SplitStringToFloats<float>(this + 1592, ",", 1, (this + 1624));
  if ((result & 1) == 0)
  {
    memset(v2, 0, sizeof(v2));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Could not read system weight info");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v2);
  }

  return result;
}

void quasar::ConfusionNetworkCombiner::finishInit(quasar::ConfusionNetworkCombiner *this)
{
  if ((kaldi::SplitStringToFloats<float>(this + 1592, ",", 1, this + 70) & 1) == 0)
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Could not read system weight info");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }

  if (*(this + 1639) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 202), *(this + 203));
  }

  else
  {
    __p = *(this + 1616);
  }

  kaldi::quasar::ProcessRegionInformation(",", "@", &__p, this + 1656);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B541BCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::getNBestFromSausage(void *a1, uint64_t *a2, void *a3, void *a4, char a5, uint64_t *a6)
{
  if (quasar::gLogLevel >= 5)
  {
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
    v46 = 0u;
    v47 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Number of systems is ", 21);
    MEMORY[0x1B8C84C30](v8, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  v9 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    do
    {
      if (quasar::gLogLevel >= 5)
      {
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
        v46 = 0u;
        v47 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "System ", 7);
        v12 = MEMORY[0x1B8C84C30](v11, v10);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " Number of alternatives is ", 27);
        MEMORY[0x1B8C84C30](v13, 0xAAAAAAAAAAAAAAABLL * ((*(*a2 + 24 * v10 + 8) - *(*a2 + 24 * v10)) >> 3));
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        v9 = *a2;
      }

      if (*(v9 + 24 * v10 + 8) != *(v9 + 24 * v10))
      {
        v14 = 0;
        do
        {
          std::string::basic_string[abi:ne200100]<0>(&v44, "");
          memset(v43, 0, sizeof(v43));
          v15 = *(*a2 + 24 * v10);
          v16 = *(v15 + 24 * v14);
          if (*(v15 + 24 * v14 + 8) == v16)
          {
            v22 = 0.0;
            v21 = 0.0;
            v20 = 0.0;
            v19 = 0.0;
          }

          else
          {
            v17 = 0;
            v18 = *(*a1 + 24 * v10);
            v19 = 0.0;
            v20 = 0.0;
            v21 = 0.0;
            v22 = 0.0;
            do
            {
              v23 = (v18[3 * v17] + 24 * v16[v17]);
              if (v23[1] != *v23)
              {
                v24 = 0;
                v25 = 0;
                do
                {
                  if (v17)
                  {
                    std::operator+<char>();
                    if ((SBYTE7(v46) & 0x80u) == 0)
                    {
                      v26 = __p;
                    }

                    else
                    {
                      v26 = __p[0];
                    }

                    if ((SBYTE7(v46) & 0x80u) == 0)
                    {
                      v27 = BYTE7(v46);
                    }

                    else
                    {
                      v27 = __p[1];
                    }

                    std::string::append(&v44, v26, v27);
                    if (SBYTE7(v46) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    v28 = *(*a1 + 24 * v10);
                    v29 = *(*(*a2 + 24 * v10) + 24 * v14);
                  }

                  else
                  {
                    std::string::operator=(&v44, (*(*v18 + 24 * *v16) + v24));
                    v28 = *(*a1 + 24 * v10);
                    v29 = *(*(*a2 + 24 * v10) + 24 * v14);
                    v20 = *(*(*v28 + 24 * *v29) + v24 + 28);
                  }

                  v30 = (*(v28[3 * v17] + 24 * v29[v17]) + v24);
                  v31 = v30[10];
                  std::vector<quasar::Token>::push_back[abi:ne200100](v43, v30);
                  v21 = v21 + 1.0;
                  v18 = *(*a1 + 24 * v10);
                  v15 = *(*a2 + 24 * v10);
                  v22 = v22 + v31;
                  v16 = *(v15 + 24 * v14);
                  v32 = (v18[3 * v17] + 24 * v16[v17]);
                  ++v25;
                  v24 += 224;
                }

                while (v25 < 0x6DB6DB6DB6DB6DB7 * ((v32[1] - *v32) >> 5));
                v19 = *(*v32 + v24 - 192);
              }

              ++v17;
            }

            while (v17 < (*(v15 + 24 * v14 + 8) - v16) >> 3);
          }

          if (quasar::gLogLevel > 4)
          {
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
            v46 = 0u;
            v47 = 0u;
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Alternative = ", 14);
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v34 = &v44;
            }

            else
            {
              v34 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v44.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, size);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
          }

          quasar::Alternative::Alternative(__p, &v44, v43, a5, v10, v14, v20, v19, (v22 / v21) * *(*a4 + 4 * v10), *(*a4 + 4 * v10) * *(*(*a3 + 24 * v10) + 4 * v14));
          std::vector<quasar::Alternative>::push_back[abi:ne200100](a6, __p);
          v62 = &v48 + 1;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v62);
          if (SBYTE7(v46) < 0)
          {
            operator delete(__p[0]);
          }

          __p[0] = v43;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          ++v14;
          v9 = *a2;
        }

        while (v14 < 0xAAAAAAAAAAAAAAABLL * ((*(*a2 + 24 * v10 + 8) - *(*a2 + 24 * v10)) >> 3));
      }

      ++v10;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v9) >> 3));
  }

  v36 = a6[1];
  v37 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v36 - *a6) >> 4));
  if (v36 == *a6)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,false>(*a6, v36, __p, v38, 1);
}

uint64_t std::vector<quasar::Alternative>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::Alternative>::__emplace_back_slow_path<quasar::Alternative const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::Alternative>::__construct_one_at_end[abi:ne200100]<quasar::Alternative const&>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

void quasar::Alternative::~Alternative(void **this)
{
  v2 = this + 7;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t quasar::removeRedundantAlternativesAndPrune(__int128 **a1, unint64_t a2, uint64_t *a3)
{
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v12, v3))
      {
        std::pair<std::string,quasar::Alternative>::pair[abi:ne200100]<true,0>(&v8, v3, v3);
        std::__hash_table<std::__hash_value_type<std::string,quasar::Alternative>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::Alternative>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::Alternative>>(v12, &v8.__r_.__value_.__l.__data_);
        v14 = &v11;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v14);
        if (v10 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v8.__r_.__value_.__l.__data_);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 4) < a2)
        {
          std::vector<quasar::Alternative>::push_back[abi:ne200100](a3, v3);
        }
      }

      v3 += 5;
    }

    while (v3 != v4);
  }

  return std::__hash_table<std::__hash_value_type<std::string,quasar::Alternative>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::Alternative>>>::~__hash_table(v12);
}

void sub_1B541C46C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::string,quasar::Alternative>::~pair(va);
  std::__hash_table<std::__hash_value_type<std::string,quasar::Alternative>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::Alternative>>>::~__hash_table(v2 - 96);
  _Unwind_Resume(a1);
}

void quasar::generateCombinedOutputSimple(uint64_t *a1, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5, const void **a6, const void **a7)
{
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  v7 = *a1;
  if (a1[1] != *a1)
  {
    v14 = 0;
    do
    {
      __p = *(v7 + 80 * v14 + 44);
      std::vector<long long>::push_back[abi:ne200100](a6, &__p);
      __p = *(*a1 + 80 * v31 + 48);
      std::vector<long long>::push_back[abi:ne200100](a7, &__p);
      v15 = (*a1 + 80 * v31 + 24);
      v17 = a4[1];
      v16 = a4[2];
      if (v17 >= v16)
      {
        v19 = *a4;
        v20 = v17 - *a4;
        v21 = (v20 >> 2) + 1;
        if (v21 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v22 = v16 - v19;
        if (v22 >> 1 > v21)
        {
          v21 = v22 >> 1;
        }

        v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
        v24 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v23)
        {
          v24 = v21;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v24);
        }

        v25 = (4 * (v20 >> 2));
        *v25 = *v15;
        v18 = v25 + 1;
        memcpy(0, v19, v20);
        v26 = *a4;
        *a4 = 0;
        a4[1] = v18;
        a4[2] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = *v15;
        v18 = v17 + 1;
      }

      a4[1] = v18;
      std::vector<std::string>::push_back[abi:ne200100](a5, (*a1 + 80 * v31));
      __p = 0;
      v29 = 0;
      v30 = 0;
      std::vector<long long>::push_back[abi:ne200100](&__p, &v31);
      std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](a3, &__p);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v32, (*a1 + 80 * v31 + 56));
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      v14 = v31 + 1;
      v31 = v14;
      v7 = *a1;
    }

    while (v14 < 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4));
  }

  std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](a2, v32);
  __p = v32;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B541C6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  __p = &a14;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<unsigned long>>::__emplace_back_slow_path<std::vector<unsigned long> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<unsigned long>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned long> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::RankingResultCombiner::combineResults(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, const void **a7, uint64_t a8, const void **a9, const void **a10)
{
  memset(v53, 0, 24);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v47, *(a1 + 1624), *(a1 + 1632), (*(a1 + 1632) - *(a1 + 1624)) >> 2);
  quasar::getNBestFromSausage(a2, a3, a4, &v47, *(a1 + 1620), v53);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  quasar::removeRedundantAlternativesAndPrune(v53, *(a1 + 1616), &v50);
  if (quasar::gLogLevel >= 5)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
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
    v30 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Final alternatives list:", 24);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v30);
    v19 = v50;
    v18 = v51;
    if (v51 != v50)
    {
      v20 = 0;
      v21 = 0;
      v22 = quasar::gLogLevel;
      do
      {
        if (v22 >= 5)
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
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
          v30 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
          v23 = MEMORY[0x1B8C84C30](&v30, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " : ", 3);
          v24 = std::ostream::operator<<();
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " -> ", 4);
          v26 = v50 + v20;
          v27 = *(v50 + v20 + 23);
          if (v27 >= 0)
          {
            v28 = v50 + v20;
          }

          else
          {
            v28 = *v26;
          }

          if (v27 >= 0)
          {
            v29 = *(v26 + 23);
          }

          else
          {
            v29 = *(v26 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v28, v29);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v30);
          v22 = quasar::gLogLevel;
          v19 = v50;
          v18 = v51;
        }

        ++v21;
        v20 += 80;
      }

      while (v21 < 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 4));
    }
  }

  quasar::generateCombinedOutputSimple(&v50, a5, a6, a7, a8, a9, a10);
  *&v30 = &v50;
  std::vector<quasar::Alternative>::__destroy_vector::operator()[abi:ne200100](&v30);
  *&v30 = v53;
  std::vector<quasar::Alternative>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_1B541C99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  a9 = v9 - 136;
  std::vector<quasar::Alternative>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9 - 112;
  std::vector<quasar::Alternative>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

float quasar::computeOverlap(quasar *this, float *a2, float *a3, float *a4, const float *a5)
{
  v5 = *a3;
  result = -100000.0;
  if (*a3 >= 0.0)
  {
    v7 = *a4;
    if (*a4 >= 0.0)
    {
      v8 = *this;
      v9 = *a2;
      if (*this > v5 || v9 < v7)
      {
        v11 = v9 - v8;
        if (v9 > v7)
        {
          v11 = v7 - v8;
        }

        v12 = v9 - v5;
        if (v8 < v5)
        {
          v13 = v12;
        }

        else
        {
          v13 = v11;
        }
      }

      else
      {
        v13 = v7 - v5;
      }

      v14 = v7 - v5;
      result = v13 / v14;
      if (v14 == 0.0)
      {
        return 1.0;
      }
    }
  }

  return result;
}

void quasar::RearrangeConfusionNetworkUsingTiming(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v6 = *a1;
  if (*(a1 + 8) != *a1)
  {
    v7 = 0;
    do
    {
      v35 = 0;
      *v36 = 0;
      v37 = 0;
      v8 = &v6[3 * v7];
      v9 = *v8;
      if (v8[1] != *v8)
      {
        v10 = 0;
        v11 = v7 + 1;
        do
        {
          if (v10)
          {
            v12 = &v9[56 * v10];
            v13 = v12[7];
            *&v44 = v13;
            v14 = v12[8];
            v15 = v9[8];
            v33 = v9[7];
            v34 = v14;
            v32 = v15;
            v17 = quasar::computeOverlap(&v44, &v34, &v33, &v32, a5);
            *&v44 = v13;
            v34 = v14;
            if (v7)
            {
              v18 = v6[3 * v7 - 3];
              v19 = *(v18 + 7);
              v20 = *(v18 + 8);
            }

            else
            {
              v19 = 4295000000.0;
              v20 = 4295000000.0;
            }

            v32 = v20;
            v33 = v19;
            v24 = quasar::computeOverlap(&v44, &v34, &v33, &v32, v16);
            *&v44 = v13;
            v34 = v14;
            if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - v6) >> 3))
            {
              v26 = 4295000000.0;
              v27 = 4295000000.0;
            }

            else
            {
              v25 = v6[3 * v11];
              v26 = *(v25 + 7);
              v27 = *(v25 + 8);
            }

            v32 = v27;
            v33 = v26;
            v28 = quasar::computeOverlap(&v44, &v34, &v33, &v32, v23);
            if (v17 < v28 || v17 < v24)
            {
              if (v24 <= v17 || v24 < v28)
              {
                if (v28 < v24 || v28 <= v17)
                {
                  v29 = &v35;
                }

                else
                {
                  v29 = &v38;
                }
              }

              else
              {
                v29 = &v41[3 * v7 - 3];
              }
            }

            else
            {
              v29 = &v35;
            }

            std::vector<quasar::Token>::push_back[abi:ne200100](v29, v12);
          }

          else
          {
            std::vector<quasar::Token>::push_back[abi:ne200100](&v35, v9);
            std::vector<quasar::Token>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::Token*>,std::__wrap_iter<quasar::Token*>>(&v35, *v36, v38, v39, 0x6DB6DB6DB6DB6DB7 * ((v39 - v38) >> 5));
            v22 = v38;
              ;
            }

            v39 = v22;
          }

          ++v10;
          v6 = *a1;
          v31 = *a1 + 24 * v7;
          v9 = *v31;
        }

        while (v10 < 0x6DB6DB6DB6DB6DB7 * ((*(v31 + 8) - *v31) >> 5));
      }

      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v41, &v35);
      v44 = &v35;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v44);
      ++v7;
      v6 = *a1;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
  }

  if (&v41 != a1)
  {
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1, v41, v42, 0xAAAAAAAAAAAAAAABLL * (v42 - v41));
  }

  v35 = &v38;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v35);
  v38 = &v41;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v38);
}

void sub_1B541CD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17)
{
  a11 = &a14;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a11);
  a14 = &a17;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

float quasar::GetConsensusHypFromSausage(uint64_t *a1, uint64_t a2, float *a3, void *a4, const void **a5)
{
  v5 = *a1;
  if (a1[1] != *a1)
  {
    for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v5) >> 3); ++i)
    {
      v79 = 0;
      v8 = (v5 + 24 * i);
      v9 = *v8;
      v10 = v8[1];
      v11 = quasar::gLogLevel;
      if (v10 != v9)
      {
        v12 = 0;
        v13 = 0;
        v14 = -10000.0;
        do
        {
          v15 = *(v9 + v12 + 40);
          if (v11 >= 5)
          {
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
            v64 = 0u;
            memset(__str, 0, sizeof(__str));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__str, "DECODER OPTION in slot ", 23);
            v17 = MEMORY[0x1B8C84C30](v16, i);
            v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " word ", 6);
            v19 = *(*a1 + 24 * i) + v12;
            v20 = *(v19 + 23);
            if (v20 >= 0)
            {
              v21 = *(*a1 + 24 * i) + v12;
            }

            else
            {
              v21 = *v19;
            }

            if (v20 >= 0)
            {
              v22 = *(v19 + 23);
            }

            else
            {
              v22 = *(v19 + 8);
            }

            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v21, v22);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " score = ", 9);
            v24 = std::ostream::operator<<();
            v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " phoneSeq ", 10);
            v26 = *(*a1 + 24 * i) + v12;
            v29 = *(v26 + 48);
            v27 = v26 + 48;
            v28 = v29;
            v30 = *(v27 + 23);
            if (v30 >= 0)
            {
              v31 = v27;
            }

            else
            {
              v31 = v28;
            }

            if (v30 >= 0)
            {
              v32 = *(v27 + 23);
            }

            else
            {
              v32 = *(v27 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v31, v32);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(__str);
            v11 = quasar::gLogLevel;
          }

          if (v15 > v14)
          {
            v79 = v13;
            v14 = v15;
          }

          ++v13;
          v5 = *a1;
          v9 = *(*a1 + 24 * i);
          v12 += 224;
        }

        while (v13 < 0x6DB6DB6DB6DB6DB7 * ((*(*a1 + 24 * i + 8) - v9) >> 5));
      }

      if (v11 > 4)
      {
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
        v64 = 0u;
        memset(__str, 0, sizeof(__str));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__str, "CONSENSUS in slot ", 18);
        v34 = MEMORY[0x1B8C84C30](v33, i);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " selected word ", 15);
        v36 = *(*a1 + 24 * i) + 224 * v79;
        v37 = *(v36 + 23);
        if (v37 >= 0)
        {
          v38 = *(*a1 + 24 * i) + 224 * v79;
        }

        else
        {
          v38 = *v36;
        }

        if (v37 >= 0)
        {
          v39 = *(v36 + 23);
        }

        else
        {
          v39 = *(v36 + 8);
        }

        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v38, v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " score = ", 9);
        std::ostream::operator<<();
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__str);
        v5 = *a1;
      }

      isPrintable = quasar::Token::isPrintable((*(v5 + 24 * i) + 224 * v79));
      v5 = *a1;
      if (!isPrintable)
      {
        continue;
      }

      std::vector<quasar::Token>::push_back[abi:ne200100](a4, (*(v5 + 24 * i) + 224 * v79));
      std::vector<long long>::push_back[abi:ne200100](a5, &v79);
      v42 = a2;
      v43 = *(a2 + 23);
      if (v43 < 0)
      {
        v44 = *(a2 + 8);
        if (!v44)
        {
LABEL_53:
          v55 = *(*a1 + 24 * i) + 224 * v79;
          if (*(v55 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(__str, *v55, *(v55 + 8));
            v42 = a2;
          }

          else
          {
            v56 = *v55;
            *&__str[16] = *(v55 + 16);
            *__str = v56;
          }

          v53 = 1;
          goto LABEL_57;
        }
      }

      else
      {
        if (!*(a2 + 23))
        {
          goto LABEL_53;
        }

        v44 = *(a2 + 8);
      }

      if (v43 >= 0)
      {
        v45 = *(a2 + 23);
      }

      else
      {
        v45 = v44;
      }

      std::string::basic_string[abi:ne200100](&v62, v45 + 1);
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v62;
      }

      else
      {
        v46 = v62.__r_.__value_.__r.__words[0];
      }

      if (v45)
      {
        if (*(a2 + 23) >= 0)
        {
          v47 = a2;
        }

        else
        {
          v47 = *a2;
        }

        memmove(v46, v47, v45);
      }

      *(&v46->__r_.__value_.__l.__data_ + v45) = 32;
      v48 = *(*a1 + 24 * i) + 224 * v79;
      v49 = *(v48 + 23);
      if (v49 >= 0)
      {
        v50 = (*(*a1 + 24 * i) + 224 * v79);
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

      v52 = std::string::append(&v62, v50, v51);
      v53 = 0;
      v54 = *&v52->__r_.__value_.__l.__data_;
      *&__str[16] = *(&v52->__r_.__value_.__l + 2);
      *__str = v54;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      v42 = a2;
LABEL_57:
      std::string::operator=(v42, __str);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
        if ((v53 & 1) == 0)
        {
LABEL_61:
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }
        }
      }

      else if ((v53 & 1) == 0)
      {
        goto LABEL_61;
      }

      v5 = *a1;
      *a3 = *(*(*a1 + 24 * i) + 224 * v79 + 40) + *a3;
    }
  }

  result = *a3 / (0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 5));
  *a3 = result;
  return result;
}

void sub_1B541D278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::MergeConfusionNetworks(int a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a3[1] - 24);
  v6 = *(v5 + 36);
  v7 = *(v5 + 28);
  if (quasar::gLogLevel >= 5)
  {
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
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "End time of competing confusion network is ", 43);
    MEMORY[0x1B8C84C00](v8, v6);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v54);
  }

  v9 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v11)
      {
        goto LABEL_6;
      }

      v15 = *(v9 + 24 * v10);
      v16 = *(v15 + 28);
      if (v16 == v6)
      {
        break;
      }

      v18 = *(v15 + 32);
      v19 = v16 >= v6 || v18 <= v6;
      if (!v19 && v6 < (v16 + (v18 - v16) / 2))
      {
        v20 = v6 - v16;
        if (v6 - v16 <= a1)
        {
          v43 = a3[1];
          v44 = *(v43 - 24);
          v45 = *(v43 - 16);
          if (v44 == v45)
          {
            LODWORD(v12) = -1;
          }

          else
          {
            v46 = 0xFFFFFFFFLL;
            do
            {
              v12 = v6;
              if (v16 > v7)
              {
                *(v44 + 32) = v16;
                *(v44 + 36) = v16;
                v12 = v46;
              }

              v44 += 224;
              v46 = v12;
            }

            while (v44 != v45);
          }

          if (quasar::gLogLevel > 4)
          {
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
            v55 = 0u;
            v56 = 0u;
            v54 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
            v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "ConfusionNetworkMerge: Backbone word starts before the end of the competing CN, ends after and covers more audio. Merge starting at ", 132);
            MEMORY[0x1B8C84C00](v51, v16);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v54);
          }
        }

        else
        {
          if (quasar::gLogLevel >= 5)
          {
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
            v55 = 0u;
            v56 = 0u;
            v54 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
            v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "ConfusionNetworkMerge: Exceeded the maximum allowable shift amount (", 68);
            v22 = MEMORY[0x1B8C84C00](v21, a1);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ") with ", 7);
            v24 = MEMORY[0x1B8C84C00](v23, (v6 - v16));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " won't try to merge anymore.", 28);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v54);
          }

          v12 = *a3;
          v25 = a3[1];
          while (v25 != v12)
          {
            v25 -= 24;
            *&v54 = v25;
            std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v54);
          }

          a3[1] = v12;
          LODWORD(v12) = -1;
        }

        if (v20 > a1)
        {
          return 0;
        }

        goto LABEL_7;
      }

      v26 = v16 - v6;
      if (v16 > v6)
      {
        if (v26 <= a1)
        {
          v47 = a3[1];
          v48 = *(v47 - 24);
          v49 = *(v47 - 16);
          while (v48 != v49)
          {
            *(v48 + 32) = v16;
            *(v48 + 36) = v16;
            v48 += 224;
          }

          if (quasar::gLogLevel > 4)
          {
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
            v55 = 0u;
            v56 = 0u;
            v54 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
            v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "ConfusionNetworkMerge: Backbone word starts after end of the competing CN, and haven't started merging yet, and the word doesn't start too long after. Merge starting at ", 169);
            MEMORY[0x1B8C84C00](v50, v16);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v54);
          }
        }

        else
        {
          if (quasar::gLogLevel >= 5)
          {
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
            v55 = 0u;
            v56 = 0u;
            v54 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "ConfusionNetworkMerge: We have exceeded the maximum allowable shift amount (", 76);
            v28 = MEMORY[0x1B8C84C00](v27, a1);
            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ") with ", 7);
            v30 = MEMORY[0x1B8C84C00](v29, (v16 - v6));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " we won't try to merge anymore.", 31);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v54);
          }

          v31 = *a3;
          v32 = a3[1];
          while (v32 != v31)
          {
            v32 -= 24;
            *&v54 = v32;
            std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v54);
          }

          a3[1] = v31;
        }

        if (v26 > a1)
        {
          return 0;
        }

        LODWORD(v12) = -1;
        goto LABEL_7;
      }

      v11 = 0;
LABEL_44:
      ++v10;
      v9 = *a2;
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v10)
      {
        return 1;
      }
    }

    if (quasar::gLogLevel < 5)
    {
      LODWORD(v12) = -1;
    }

    else
    {
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
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "ConfusionNetworkMerge: Backbone word starts at the same time as the end of the competing CN. Merge starting at ", 111);
      MEMORY[0x1B8C84C00](v17, v6);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v54);
LABEL_6:
      LODWORD(v12) = -1;
LABEL_7:
      if (quasar::gLogLevel >= 5)
      {
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
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "Merging the word/words in slot ", 31);
        v14 = MEMORY[0x1B8C84C00](v13, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " onto the end of the competing confusion network", 48);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v54);
      }
    }

    v33 = a3[1];
    v34 = *a2;
    if (*a3 != v33)
    {
      *(*(v33 - 24) + 32) = *(*(v34 + 24 * v10) + 28);
    }

    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a3, (v34 + 24 * v10));
    if ((v12 & 0x80000000) == 0)
    {
      v35 = a3[1];
      v36 = *(v35 - 24);
      v37 = *(v35 - 16);
      if (v36 != v37)
      {
        v38 = 0;
        v39 = (((v37 - v36 - 224) >> 5) * 0x2492492492492493uLL) >> 64;
        v40 = vdupq_n_s64(v39);
        do
        {
          v41 = vdupq_n_s64(v38);
          v42 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v41, xmmword_1B5AE0060)));
          if (vuzp1_s16(v42, *v40.i8).u8[0])
          {
            *(v36 + 7) = v12;
          }

          if (vuzp1_s16(v42, *&v40).i8[2])
          {
            *(v36 + 63) = v12;
          }

          if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v41, xmmword_1B5AE0050)))).i32[1])
          {
            *(v36 + 119) = v12;
            *(v36 + 175) = v12;
          }

          v38 += 4;
          v36 += 896;
        }

        while (((v39 + 4) & 0x3FFFFFFFFFFFFFCLL) != v38);
      }
    }

    v11 = 1;
    goto LABEL_44;
  }

  return 1;
}

void sub_1B541D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  _Unwind_Resume(a1);
}

void quasar::GetConfusionNetworkConfidence(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = 0.0;
  v4 = 0.0;
  if (*a1 != v2)
  {
    do
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v19, *v1, v1[1], 0x6DB6DB6DB6DB6DB7 * ((v1[1] - *v1) >> 5));
      v5 = v19;
      v6 = v20;
      while (v5 != v6)
      {
        quasar::Token::Token(&v7, v5);
        if (quasar::Token::isPrintable(&v7))
        {
          v3 = v3 + 1.0;
          v4 = v4 + v8;
        }

        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }

        v22 = &v14;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v22);
        if (v13 < 0)
        {
          operator delete(v12);
        }

        v22 = &v11;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
        if (v10 < 0)
        {
          operator delete(v9);
        }

        if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v7.__r_.__value_.__l.__data_);
        }

        v5 = (v5 + 224);
      }

      v7.__r_.__value_.__r.__words[0] = &v19;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v7);
      v1 += 3;
    }

    while (v1 != v2);
  }
}

void sub_1B541DA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 144);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t quasar::CheckConfusionNetworkForRegion(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v25, *v1, v1[1], 0x6DB6DB6DB6DB6DB7 * ((v1[1] - *v1) >> 5));
      if (v25 != v26)
      {
        quasar::Token::Token(&v24, v25);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
        }

        else
        {
          v23 = v24;
        }

        std::string::basic_string[abi:ne200100]<0>(v4, "~w00");
        std::string::basic_string[abi:ne200100]<0>(&__p, " ");
        quasar::replaceAll(&v23, v4, &__p);
        if (v22 < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v5) < 0)
        {
          operator delete(v4[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v4, "\\ ");
        quasar::split(&v23, v4, 1, &__p);
      }

      v4[0] = &v25;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v4);
      v1 += 3;
    }

    while (v1 != v3);
  }

  if (quasar::gLogLevel >= 5)
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
    *v4 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Could not find a region of interest in the confusion network", 60);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v4);
  }

  return 0;
}

void sub_1B541DE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::ConfusionNetworkCombiner::SelectSystems(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, void *a5)
{
  quasar::GetConfusionNetworkConfidence(a4);
  v11 = v10;
  quasar::GetConfusionNetworkConfidence((*a5 + 24 * a2));
  v13 = *(a4 + 8);
  if (*a4 == v13 || (v14 = *(v13 - 24), v14 == *(v13 - 16)))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 36);
  }

  v16 = (*a5 + 24 * a2);
  v18 = *v16;
  v17 = v16[1];
  if (v18 == v17 || (v19 = *(v17 - 24), v19 == *(v17 - 16)))
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v19 + 36);
  }

  v21 = v12 - *(a1 + 1724);
  if (quasar::gLogLevel >= 5)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
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
    v46 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "BestConfidence is ", 18);
    std::ostream::operator<<();
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v46);
    if (quasar::gLogLevel >= 5)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
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
      v46 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Competing Confidence for system ", 32);
      v23 = MEMORY[0x1B8C84C00](v22, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " is ", 4);
      std::ostream::operator<<();
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v46);
      if (quasar::gLogLevel >= 5)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
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
        v46 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Best system End Time is ", 24);
        MEMORY[0x1B8C84C00](v24, v15);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v46);
        if (quasar::gLogLevel >= 5)
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
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
          v46 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "End time for competing system ", 30);
          v26 = MEMORY[0x1B8C84C00](v25, a2);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " is ", 4);
          MEMORY[0x1B8C84C00](v27, v20);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v46);
        }
      }
    }
  }

  v28 = (*(a1 + 1656) + 24 * *a3);
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(v45, *v28, v28[1]);
  v29 = (*(a1 + 1656) + 24 * a2);
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(v44, *v29, v29[1]);
  v30 = (v15 - v20);
  if (v30 < *(a1 + 1708))
  {
    goto LABEL_15;
  }

  if (quasar::gLogLevel >= 4)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
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
    v46 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Competing system does not cover enough speech (max truncation is ", 65);
    v33 = MEMORY[0x1B8C84C00](v32, *(a1 + 1708));
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " ,current truncation is ", 24);
    v35 = MEMORY[0x1B8C84C00](v34, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ")", 2);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v46);
  }

  if (*(a1 + 1649) == 1)
  {
    if (quasar::MergeConfusionNetworks(*(a1 + 1712), a4, (*a5 + 24 * a2)))
    {
      if (quasar::gLogLevel >= 5)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
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
        v46 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Proceeding with selection logic using merged partial confusion network", 70);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v46);
      }

LABEL_15:
      if (*(a1 + 1646) == 1 && (quasar::CheckConfusionNetworkForRegion(a4) & 1) == 0)
      {
        v31 = quasar::CheckConfusionNetworkForRegion((*a5 + 24 * a2));
      }

      else
      {
        v31 = 1;
      }

      if (v11 + 0.00001 < v21 && v31 != 0)
      {
        if (quasar::gLogLevel >= 4)
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
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
          v46 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Switching selected system from ", 31);
          v38 = MEMORY[0x1B8C84C00](v37, *a3);
          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " to ", 4);
          v40 = MEMORY[0x1B8C84C00](v39, a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " new score = ", 13);
          v41 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " old score = ", 13);
          std::ostream::operator<<();
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v46);
        }

        v42 = (*a5 + 24 * a2);
        if (v42 != a4)
        {
          std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a4, *v42, v42[1], 0xAAAAAAAAAAAAAAABLL * (v42[1] - *v42));
        }

        *a3 = a2;
      }

      goto LABEL_34;
    }

    if (quasar::gLogLevel >= 5)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
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
      v46 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Exiting selection logic", 23);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v46);
    }
  }

LABEL_34:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v44);
  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v45);
}

void sub_1B541E470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a19);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

void quasar::RemovePhoneDurations(const std::string *__s@<X0>, uint64_t a2@<X8>)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x80000000) == 0)
  {
    *a2 = *&__s->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&__s->__r_.__value_.__l + 2);
LABEL_4:
    size = v4;
    v6 = __s;
    goto LABEL_5;
  }

  std::string::__init_copy_ctor_external(a2, __s->__r_.__value_.__l.__data_, __s->__r_.__value_.__l.__size_);
  v4 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v6 = __s->__r_.__value_.__r.__words[0];
  size = __s->__r_.__value_.__l.__size_;
LABEL_5:
  if (size >= 1)
  {
    v7 = v6 + size;
    v8 = v6;
    do
    {
      v9 = memchr(v8, 95, size);
      if (!v9)
      {
        break;
      }

      if (*v9 == 95)
      {
        if (v9 != v7 && v9 - v6 != -1)
        {
          kaldi::SplitStringToVector(__s, "_", 1, &v23);
          if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3) >= 2)
          {
            std::string::operator=(a2, v23);
            if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3) >= 3)
            {
              v10 = 0;
              v11 = 2;
              do
              {
                if (*(a2 + 23) >= 0)
                {
                  v12 = *(a2 + 23);
                }

                else
                {
                  v12 = *(a2 + 8);
                }

                std::string::basic_string[abi:ne200100](&__p, v12 + 1);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                if (v12)
                {
                  if (*(a2 + 23) >= 0)
                  {
                    v14 = a2;
                  }

                  else
                  {
                    v14 = *a2;
                  }

                  memmove(p_p, v14, v12);
                }

                *(&p_p->__r_.__value_.__l.__data_ + v12) = 32;
                v15 = SHIBYTE(v23[v10 + 2].__r_.__value_.__r.__words[2]);
                if (v15 >= 0)
                {
                  data = &v23[v10 + 2];
                }

                else
                {
                  data = v23[v10 + 2].__r_.__value_.__l.__data_;
                }

                if (v15 >= 0)
                {
                  v17 = HIBYTE(v23[v10 + 2].__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v17 = v23[v10 + 2].__r_.__value_.__l.__size_;
                }

                v18 = std::string::append(&__p, data, v17);
                v19 = v18->__r_.__value_.__r.__words[0];
                v26[0] = v18->__r_.__value_.__l.__size_;
                *(v26 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
                v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
                v18->__r_.__value_.__l.__size_ = 0;
                v18->__r_.__value_.__r.__words[2] = 0;
                v18->__r_.__value_.__r.__words[0] = 0;
                if (*(a2 + 23) < 0)
                {
                  operator delete(*a2);
                }

                v21 = v26[0];
                *a2 = v19;
                *(a2 + 8) = v21;
                *(a2 + 15) = *(v26 + 7);
                *(a2 + 23) = v20;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v11 += 2;
                v10 += 2;
              }

              while (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3) > v11);
            }
          }
        }

        break;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 >= 1);
  }

  __p.__r_.__value_.__r.__words[0] = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B541E764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::FlattenConfusionNetworks(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      memset(v39, 0, 24);
      if (*(v3 + 24 * v6 + 8) != *(v3 + 24 * v6))
      {
        v7 = 0;
        do
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v8 = *(*(v3 + 24 * v6) + 24 * v7);
          if (*(*(v3 + 24 * v6) + 24 * v7 + 8) != v8)
          {
            v9 = 0;
            do
            {
              v10 = v8 + 24 * v9;
              if (*(v10 + 8) != *v10)
              {
                quasar::Token::Token(&v23, *v10);
                v25 = *(*a2 + 4 * v6) * v25;
                quasar::RemovePhoneDurations(&__p, &v22);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                __p = v22;
                if ((0x6DB6DB6DB6DB6DB7 * ((*(*(*(*a1 + 24 * v6) + 24 * v7) + 24 * v9 + 8) - *(*(*(*a1 + 24 * v6) + 24 * v7) + 24 * v9)) >> 5)) >= 2)
                {
                  v11 = 272;
                  v12 = 1;
                  do
                  {
                    std::operator+<char>();
                    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v13 = &v22;
                    }

                    else
                    {
                      v13 = v22.__r_.__value_.__r.__words[0];
                    }

                    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v22.__r_.__value_.__l.__size_;
                    }

                    std::string::append(&v23, v13, size);
                    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v22.__r_.__value_.__l.__data_);
                    }

                    v15 = (*(*(*(*a1 + 24 * v6) + 24 * v7) + 24 * v9) + v11);
                    v24 = v15[-1].__r_.__value_.__r.__words[1];
                    v26 = v15[-1].__r_.__value_.__s.__data_[20];
                    v25 = (v25 * (*&v15[-1].__r_.__value_.__r.__words[2] * *(*a2 + 4 * v6))) / 1000.0;
                    quasar::RemovePhoneDurations(v15, &v21);
                    v16 = std::string::insert(&v21, 0, " ");
                    v17 = *&v16->__r_.__value_.__l.__data_;
                    v22.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
                    *&v22.__r_.__value_.__l.__data_ = v17;
                    v16->__r_.__value_.__l.__size_ = 0;
                    v16->__r_.__value_.__r.__words[2] = 0;
                    v16->__r_.__value_.__r.__words[0] = 0;
                    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v18 = &v22;
                    }

                    else
                    {
                      v18 = v22.__r_.__value_.__r.__words[0];
                    }

                    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v19 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v19 = v22.__r_.__value_.__l.__size_;
                    }

                    std::string::append(&__p, v18, v19);
                    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v22.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v21.__r_.__value_.__l.__data_);
                    }

                    ++v12;
                    v11 += 224;
                  }

                  while (v12 < 0x6DB6DB6DB6DB6DB7 * ((*(*(*(*a1 + 24 * v6) + 24 * v7) + 24 * v9 + 8) - *(*(*(*a1 + 24 * v6) + 24 * v7) + 24 * v9)) >> 5));
                }

                if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v22, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
                }

                else
                {
                  v22 = v23;
                }

                std::vector<quasar::Token>::push_back[abi:ne200100](&v36, &v23);
                if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v22.__r_.__value_.__l.__data_);
                }

                if (v35 < 0)
                {
                  operator delete(v34);
                }

                if (v33 < 0)
                {
                  operator delete(v32);
                }

                v22.__r_.__value_.__r.__words[0] = &v31;
                std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v22);
                if (v30 < 0)
                {
                  operator delete(v29);
                }

                v22.__r_.__value_.__r.__words[0] = &v28;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v23.__r_.__value_.__l.__data_);
                }

                v3 = *a1;
              }

              ++v9;
              v8 = *(*(v3 + 24 * v6) + 24 * v7);
            }

            while (v9 < 0xAAAAAAAAAAAAAAABLL * ((*(*(v3 + 24 * v6) + 24 * v7 + 8) - v8) >> 3));
            if (v37 != v36)
            {
              std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v39, &v36);
            }
          }

          v23.__r_.__value_.__r.__words[0] = &v36;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v23);
          ++v7;
          v3 = *a1;
        }

        while (v7 < 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 24 * v6 + 8) - *(*a1 + 24 * v6)) >> 3));
      }

      std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](a3, v39);
      v23.__r_.__value_.__r.__words[0] = v39;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v23);
      ++v6;
      v3 = *a1;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void sub_1B541EBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  a24 = (v63 - 112);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void quasar::TransformConfusionNetwork(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1] != *a1)
  {
    v2 = 0;
    do
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v11 = v2;
      v3 = (v1 + 24 * v2);
      v5 = *v3;
      v4 = v3[1];
      if (*v3 != v4)
      {
        do
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v14, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
          memset(v13, 0, sizeof(v13));
          v7 = v14;
          v6 = v15;
          if (v14 != v15)
          {
            v8 = 0;
            do
            {
              memset(v12, 0, sizeof(v12));
              std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v12, *v7, v7[1], 0x6DB6DB6DB6DB6DB7 * ((v7[1] - *v7) >> 5));
              if (!v8)
              {
                std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v13, v12);
              }

              v20 = v12;
              std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v20);
              v7 += 3;
              --v8;
            }

            while (v7 != v6);
          }

          std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](&v17, v13);
          v12[0] = v13;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v12);
          v13[0] = &v14;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v13);
          v5 += 3;
        }

        while (v5 != v4);
        v1 = *a1;
      }

      v9 = (v1 + 24 * v11);
      if (v9 != &v17)
      {
        std::vector<std::vector<std::vector<quasar::Token>>>::__assign_with_size[abi:ne200100]<std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*>(v9, v17, v18, 0xAAAAAAAAAAAAAAABLL * (v18 - v17));
      }

      v14 = &v17;
      std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v14);
      v2 = v11 + 1;
      v1 = *a1;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v11 + 1);
  }
}

void sub_1B541EEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  a18 = &a21;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void quasar::ConfusionNetworkCombiner::combineResults(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void **a7, uint64_t a8, const void **a9, const void **a10)
{
  v66 = *(a1 + 1704);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<quasar::Token>>>*,std::vector<std::vector<std::vector<quasar::Token>>>*>(&v63, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  if (*(a1 + 1648) == 1)
  {
    quasar::TransformConfusionNetwork(&v63);
  }

  memset(v62, 0, sizeof(v62));
  quasar::FlattenConfusionNetworks(&v63, (a1 + 1680), v62);
  v15 = (v62[0] + 24 * *(a1 + 1704));
  memset(v61, 0, sizeof(v61));
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v61, *v15, v15[1], 0xAAAAAAAAAAAAAAABLL * ((v15[1] - *v15) >> 3));
  if (v64 != v63)
  {
    v16 = 0;
    do
    {
      if (v16 != *(a1 + 1704))
      {
        if (*(a1 + 1645) == 1)
        {
          quasar::ConfusionNetworkCombiner::SelectSystems(a1, v16, &v66, v61, v62);
          if (quasar::gLogLevel >= 5)
          {
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
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
            v44 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v44);
            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Selected system is ", 19);
            MEMORY[0x1B8C84C00](v17, v66);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v44);
          }
        }

        else
        {
          quasar::ConfusionNetworkCombiner::SelectSystems(a1, v16, &v66, v61, v62);
        }
      }

      ++v16;
    }

    while (v16 < 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 3));
  }

  std::string::basic_string[abi:ne200100]<0>(v42, "");
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  __p = 0;
  v38 = 0;
  v39 = 0;
  quasar::RearrangeConfusionNetworkUsingTiming(v61, v18, v19, v20, v21);
  quasar::GetConsensusHypFromSausage(v61, v42, &v41, v40, &__p);
  if (quasar::gLogLevel >= 5)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
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
    v44 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v44);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "FINAL HYPOTHESIS IS  : ", 23);
    if ((v43 & 0x80u) == 0)
    {
      v23 = v42;
    }

    else
    {
      v23 = v42[0];
    }

    if ((v43 & 0x80u) == 0)
    {
      v24 = v43;
    }

    else
    {
      v24 = v42[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v44);
  }

  std::vector<std::string>::push_back[abi:ne200100](a8, v42);
  *&v44 = v66;
  std::vector<long long>::push_back[abi:ne200100](a9, &v44);
  *&v44 = 0;
  std::vector<long long>::push_back[abi:ne200100](a10, &v44);
  std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](a6, &__p);
  quasar::GetConfusionNetworkConfidence(v61);
  v27 = a7[1];
  v26 = a7[2];
  if (v27 >= v26)
  {
    v29 = *a7;
    v30 = v27 - *a7;
    v31 = v30 >> 2;
    v32 = (v30 >> 2) + 1;
    if (v32 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v33 = v26 - v29;
    if (v33 >> 1 > v32)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a7, v35);
    }

    *(4 * v31) = v25;
    v28 = 4 * v31 + 4;
    memcpy(0, v29, v30);
    v36 = *a7;
    *a7 = 0;
    a7[1] = v28;
    a7[2] = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v27 = v25;
    v28 = (v27 + 4);
  }

  a7[1] = v28;
  std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](a5, v61);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  *&v44 = v40;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v44);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  *&v44 = v61;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v44);
  *&v44 = v62;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v44);
  *&v44 = &v63;
  std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::__destroy_vector::operator()[abi:ne200100](&v44);
}

void sub_1B541F310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  a22 = &a12;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  a22 = (v22 - 176);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = (v22 - 152);
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = (v22 - 128);
  std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void quasar::ConfusionNetworkCombiner::~ConfusionNetworkCombiner(quasar::ConfusionNetworkCombiner *this)
{
  *this = &unk_1F2D12028;
  v2 = *(this + 210);
  if (v2)
  {
    *(this + 211) = v2;
    operator delete(v2);
  }

  v3 = (this + 1656);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 1639) < 0)
  {
    operator delete(*(this + 202));
  }

  if (*(this + 1615) < 0)
  {
    operator delete(*(this + 199));
  }

  quasar::ResultCombiner::~ResultCombiner(this);
}

{
  *this = &unk_1F2D12028;
  v2 = *(this + 210);
  if (v2)
  {
    *(this + 211) = v2;
    operator delete(v2);
  }

  v3 = (this + 1656);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 1639) < 0)
  {
    operator delete(*(this + 202));
  }

  if (*(this + 1615) < 0)
  {
    operator delete(*(this + 199));
  }

  quasar::ResultCombiner::~ResultCombiner(this);
  MEMORY[0x1B8C85350]();
}

void quasar::RankingResultCombiner::~RankingResultCombiner(quasar::RankingResultCombiner *this)
{
  *this = &unk_1F2D11FF0;
  v2 = *(this + 203);
  if (v2)
  {
    *(this + 204) = v2;
    operator delete(v2);
  }

  if (*(this + 1615) < 0)
  {
    operator delete(*(this + 199));
  }

  quasar::ResultCombiner::~ResultCombiner(this);
}

{
  *this = &unk_1F2D11FF0;
  v2 = *(this + 203);
  if (v2)
  {
    *(this + 204) = v2;
    operator delete(v2);
  }

  if (*(this + 1615) < 0)
  {
    operator delete(*(this + 199));
  }

  quasar::ResultCombiner::~ResultCombiner(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::Alternative::Alternative(uint64_t a1, const std::string *a2, quasar::Token **a3, char a4, int a5, int a6, float a7, float a8, float a9, float a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 56) = 0;
  v19 = a1 + 56;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::string::operator=(a1, a2);
  if (v19 != a3)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v19, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 5));
  }

  *(a1 + 32) = a7;
  *(a1 + 36) = a8;
  *(a1 + 24) = a9;
  *(a1 + 28) = a10;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  *(a1 + 40) = a4;
  if ((a4 & 1) == 0)
  {
    *(a1 + 24) = a10;
  }

  return a1;
}

void sub_1B541F6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,quasar::Alternative>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  v7 = *(a3 + 24);
  v8 = *(a3 + 36);
  this[3].__r_.__value_.__l.__size_ = 0;
  *(&this[2].__r_.__value_.__r.__words[1] + 4) = v8;
  *&this[2].__r_.__value_.__l.__data_ = v7;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&this[3].__r_.__value_.__l.__size_, *(a3 + 7), *(a3 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *(a3 + 7)) >> 5));
  return this;
}

void sub_1B541F7A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,quasar::Alternative>::~pair(uint64_t a1)
{
  v3 = (a1 + 80);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<quasar::Alternative>::__construct_one_at_end[abi:ne200100]<quasar::Alternative const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 36);
  *(v4 + 56) = 0;
  *(v4 + 36) = v7;
  *(v4 + 24) = v6;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  result = std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4 + 56, *(a2 + 7), *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *(a2 + 7)) >> 5));
  *(a1 + 8) = v4 + 80;
  return result;
}

uint64_t std::vector<quasar::Alternative>::__emplace_back_slow_path<quasar::Alternative const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Alternative>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 36);
  *(v7 + 56) = 0;
  *(v7 + 36) = v10;
  *(v7 + 24) = v9;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v7 + 56, *(a2 + 7), *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *(a2 + 7)) >> 5));
  *&v19 = v19 + 80;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Alternative>,quasar::Alternative*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::Alternative>::~__split_buffer(&v17);
  return v16;
}

void sub_1B541FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<quasar::Alternative>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Alternative>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Alternative>,quasar::Alternative*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(a4 + 36) = *(v7 + 36);
      *(a4 + 24) = v9;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::Alternative>::destroy[abi:ne200100](a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Alternative>,quasar::Alternative*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<quasar::Alternative>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Alternative>,quasar::Alternative*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Alternative>,quasar::Alternative*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Alternative>,quasar::Alternative*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 80;
      std::allocator<quasar::Alternative>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::Alternative>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::Alternative>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::Alternative>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 80;
    std::allocator<quasar::Alternative>::destroy[abi:ne200100](v4, i - 80);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,false>(float *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
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
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 4);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(v9 + 24) < *(a2 - 14))
        {
LABEL_78:
          v44 = v9;
LABEL_79:
          v47 = a2 - 5;
LABEL_80:

          std::swap[abi:ne200100]<quasar::Alternative>(v44, v47);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,0>(v9, v9 + 80, v9 + 160, (a2 - 5));
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,0>(v9, v9 + 80, v9 + 160, v9 + 240);
      if (*(v9 + 264) >= *(a2 - 14))
      {
        return;
      }

      std::swap[abi:ne200100]<quasar::Alternative>((v9 + 240), a2 - 5);
      if (*(v9 + 184) >= *(v9 + 264))
      {
        return;
      }

      std::swap[abi:ne200100]<quasar::Alternative>((v9 + 160), (v9 + 240));
      if (*(v9 + 104) >= *(v9 + 184))
      {
        return;
      }

      v45 = (v9 + 80);
      v46 = (v9 + 160);
LABEL_96:
      std::swap[abi:ne200100]<quasar::Alternative>(v45, v46);
      if (*(v9 + 24) < *(v9 + 104))
      {
        v47 = (v9 + 80);
        v44 = v9;
        goto LABEL_80;
      }

      return;
    }

LABEL_10:
    if (v12 <= 1919)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,quasar::Alternative *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 80 * (v13 >> 1);
    v16 = *(a2 - 14);
    if (v12 >= 0x2801)
    {
      v17 = *(v15 + 24);
      if (*(v9 + 24) >= v17)
      {
        if (v17 < v16)
        {
          std::swap[abi:ne200100]<quasar::Alternative>(v15, a2 - 5);
          if (*(v9 + 24) < *(v15 + 24))
          {
            v18 = v9;
            v19 = v15;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v18 = v9;
        if (v17 < v16)
        {
          goto LABEL_17;
        }

        std::swap[abi:ne200100]<quasar::Alternative>(v9, v15);
        if (*(v15 + 24) < *(a2 - 14))
        {
          v18 = v15;
LABEL_17:
          v19 = a2 - 5;
LABEL_26:
          std::swap[abi:ne200100]<quasar::Alternative>(v18, v19);
        }
      }

      v23 = v9 + 80 * v14;
      v24 = v23 - 80;
      v25 = *(v23 - 56);
      v26 = *(a2 - 34);
      if (a1[26] >= v25)
      {
        if (v25 < v26)
        {
          std::swap[abi:ne200100]<quasar::Alternative>((v23 - 80), a2 - 10);
          if (a1[26] < *(v24 + 24))
          {
            v27 = (a1 + 20);
            v28 = v24;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v27 = (a1 + 20);
        if (v25 < v26)
        {
          goto LABEL_31;
        }

        std::swap[abi:ne200100]<quasar::Alternative>(v27, (v23 - 80));
        if (*(v24 + 24) < *(a2 - 34))
        {
          v27 = v24;
LABEL_31:
          v28 = a2 - 10;
LABEL_38:
          std::swap[abi:ne200100]<quasar::Alternative>(v27, v28);
        }
      }

      v29 = &a1[20 * v14];
      v30 = v29 + 20;
      v31 = v29[26];
      v32 = *(a2 - 54);
      if (a1[46] >= v31)
      {
        if (v31 < v32)
        {
          std::swap[abi:ne200100]<quasar::Alternative>(v29 + 5, a2 - 15);
          if (a1[46] < v30[6])
          {
            v33 = (a1 + 40);
            v34 = v30;
            goto LABEL_47;
          }
        }
      }

      else
      {
        v33 = (a1 + 40);
        if (v31 < v32)
        {
          goto LABEL_43;
        }

        std::swap[abi:ne200100]<quasar::Alternative>(v33, v29 + 5);
        if (v30[6] < *(a2 - 54))
        {
          v33 = v30;
LABEL_43:
          v34 = a2 - 15;
LABEL_47:
          std::swap[abi:ne200100]<quasar::Alternative>(v33, v34);
        }
      }

      v35 = *(v15 + 24);
      v36 = v30[6];
      if (*(v24 + 24) >= v35)
      {
        if (v35 < v36)
        {
          std::swap[abi:ne200100]<quasar::Alternative>(v15, v30);
          if (*(v24 + 24) < *(v15 + 24))
          {
            v37 = v24;
            v38 = v15;
            goto LABEL_56;
          }
        }
      }

      else
      {
        v37 = v24;
        if (v35 < v36)
        {
          goto LABEL_52;
        }

        std::swap[abi:ne200100]<quasar::Alternative>(v24, v15);
        if (*(v15 + 24) < v30[6])
        {
          v37 = v15;
LABEL_52:
          v38 = v30;
LABEL_56:
          std::swap[abi:ne200100]<quasar::Alternative>(v37, v38);
        }
      }

      v21 = a1;
      v22 = v15;
      goto LABEL_58;
    }

    v20 = *(v9 + 24);
    if (*(v15 + 24) >= v20)
    {
      if (v20 < v16)
      {
        std::swap[abi:ne200100]<quasar::Alternative>(v9, a2 - 5);
        if (*(v15 + 24) < *(v9 + 24))
        {
          v21 = v15;
          v22 = v9;
          goto LABEL_58;
        }
      }
    }

    else
    {
      v21 = (v9 + 80 * (v13 >> 1));
      if (v20 < v16)
      {
        goto LABEL_22;
      }

      std::swap[abi:ne200100]<quasar::Alternative>(v15, v9);
      if (*(v9 + 24) < *(a2 - 14))
      {
        v21 = v9;
LABEL_22:
        v22 = a2 - 5;
LABEL_58:
        std::swap[abi:ne200100]<quasar::Alternative>(v21, v22);
      }
    }

    if ((a5 & 1) == 0 && a1[6] >= *(a1 - 14))
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,quasar::Alternative *,std::__less<void,void> &>(a1, a2);
      goto LABEL_66;
    }

    v39 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,quasar::Alternative *,std::__less<void,void> &>(a1, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(a1, v39);
    v9 = v39 + 80;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(v39 + 80, a2))
    {
      a4 = -v11;
      a2 = v39;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,false>(a1, v39, a3, -v11, a5 & 1);
      v9 = v39 + 80;
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v42 = *(v9 + 104);
  v43 = *(a2 - 14);
  if (*(v9 + 24) >= v42)
  {
    if (v42 >= v43)
    {
      return;
    }

    v45 = (v9 + 80);
    v46 = a2 - 5;
    goto LABEL_96;
  }

  if (v42 < v43)
  {
    goto LABEL_78;
  }

  std::swap[abi:ne200100]<quasar::Alternative>(v9, (v9 + 80));
  if (*(v9 + 104) < *(a2 - 14))
  {
    v44 = (v9 + 80);
    goto LABEL_79;
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 24);
  v9 = *(a3 + 24);
  if (*(a1 + 24) >= v8)
  {
    if (v8 < v9)
    {
      std::swap[abi:ne200100]<quasar::Alternative>(a2, a3);
      if (*(v7 + 24) < *(a2 + 24))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v8 < v9)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::swap[abi:ne200100]<quasar::Alternative>(a1, v10);
      goto LABEL_10;
    }

    std::swap[abi:ne200100]<quasar::Alternative>(a1, a2);
    if (*(a2 + 24) < *(a3 + 24))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a3 + 24) < *(a4 + 24))
  {
    std::swap[abi:ne200100]<quasar::Alternative>(a3, a4);
    if (*(a2 + 24) < *(a3 + 24))
    {
      std::swap[abi:ne200100]<quasar::Alternative>(a2, a3);
      if (*(v7 + 24) < *(a2 + 24))
      {

        std::swap[abi:ne200100]<quasar::Alternative>(v7, a2);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v19[9] = v2;
    v19[10] = v3;
    v6 = a1 + 80;
    if (a1 + 80 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v6;
        if (*(v8 + 24) < *(v8 + 104))
        {
          *__p = *v6;
          v16 = *(v6 + 16);
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *v6 = 0;
          *v17 = *(v8 + 104);
          *&v17[12] = *(v8 + 116);
          v18[0] = *(v8 + 136);
          *&v18[1] = *(v8 + 152);
          *(v8 + 144) = 0;
          *(v8 + 152) = 0;
          v10 = v7;
          *(v8 + 136) = 0;
          while (1)
          {
            v11 = v10;
            v12 = a1 + v10;
            if (*(a1 + v10 + 103) < 0)
            {
              operator delete(*(v12 + 80));
            }

            *(v12 + 80) = *v12;
            *(v12 + 96) = *(v12 + 16);
            *(v12 + 23) = 0;
            *v12 = 0;
            *(v12 + 104) = *(v12 + 24);
            *(v12 + 116) = *(v12 + 36);
            std::vector<quasar::Token>::__vdeallocate((v12 + 136));
            *(v12 + 136) = *(v12 + 56);
            *(v12 + 152) = *(v12 + 72);
            *(v12 + 64) = 0;
            *(v12 + 72) = 0;
            *(v12 + 56) = 0;
            if (!v11)
            {
              break;
            }

            v10 = v11 - 80;
            if (*(a1 + v11 - 56) >= *v17)
            {
              v13 = a1 + v11;
              goto LABEL_12;
            }
          }

          v13 = a1;
LABEL_12:
          if (*(v13 + 23) < 0)
          {
            operator delete(*v13);
          }

          v14 = a1 + v11;
          *v13 = *__p;
          *(v13 + 16) = v16;
          *(v14 + 24) = *v17;
          *(v14 + 36) = *&v17[12];
          std::vector<quasar::Token>::__vdeallocate((v14 + 56));
          *(v14 + 56) = *&v18[0];
          *(v13 + 64) = *(v18 + 8);
          memset(v18, 0, 24);
          v19[0] = v18;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v19);
        }

        v6 = v9 + 80;
        v7 += 80;
        v8 = v9;
      }

      while (v9 + 80 != a2);
    }
  }
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v19[9] = v2;
    v19[10] = v3;
    v5 = result + 80;
    if (result + 80 != a2)
    {
      v6 = (result + 152);
      do
      {
        v7 = v5;
        if (*(result + 24) < *(result + 104))
        {
          *__p = *v5;
          v15 = *(v5 + 16);
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *v5 = 0;
          *v16 = *(result + 104);
          *&v16[12] = *(result + 116);
          v17 = *(result + 136);
          v18 = *(result + 152);
          *(result + 144) = 0;
          *(result + 152) = 0;
          v8 = v6;
          *(result + 136) = 0;
          do
          {
            v9 = (v8 - 9);
            if (*(v8 - 49) < 0)
            {
              operator delete(*v9);
            }

            *v9 = *(v8 - 19);
            *(v8 - 7) = *(v8 - 17);
            *(v8 - 129) = 0;
            *(v8 - 152) = 0;
            *(v8 - 3) = *(v8 - 8);
            *(v8 - 36) = *(v8 - 116);
            std::vector<quasar::Token>::__vdeallocate(v8 - 2);
            *(v8 - 1) = *(v8 - 6);
            v10 = (v8 - 10);
            *v8 = *(v8 - 10);
            *(v8 - 10) = 0;
            *(v8 - 12) = 0;
            *(v8 - 11) = 0;
            v11 = *(v8 - 52);
            v8 -= 10;
          }

          while (v11 < *v16);
          v12 = v10 - 9;
          if (*(v10 - 49) < 0)
          {
            operator delete(*v12);
          }

          v13 = v10 - 6;
          *v12 = *__p;
          *(v10 - 7) = v15;
          *v13 = *v16;
          *(v13 + 12) = *&v16[12];
          std::vector<quasar::Token>::__vdeallocate(v10 - 2);
          *(v10 - 1) = v17;
          *v10 = v18;
          v18 = 0;
          v17 = 0uLL;
          v19[0] = &v17;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v19);
        }

        v5 = v7 + 80;
        v6 += 10;
        result = v7;
      }

      while (v7 + 80 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,quasar::Alternative *,std::__less<void,void> &>(uint64_t a1, __int128 *a2)
{
  *__p = *a1;
  v18 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *v19 = *(a1 + 24);
  *&v19[12] = *(a1 + 36);
  v3 = (a1 + 56);
  v20 = *(a1 + 56);
  v21 = *(a1 + 72);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a2 - 14) >= *v19)
  {
    v7 = a1 + 80;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7 + 24);
      v7 += 80;
    }

    while (v8 >= *v19);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4 + 80;
      v6 = *(v4 + 104);
      v4 += 80;
    }

    while (v6 >= *v19);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 5;
      v10 = *(a2 - 14);
      a2 -= 5;
    }

    while (v10 < *v19);
  }

  while (v5 < v9)
  {
    std::swap[abi:ne200100]<quasar::Alternative>(v5, v9);
    do
    {
      v11 = *(v5 + 104);
      v5 += 80;
    }

    while (v11 >= *v19);
    do
    {
      v12 = *(v9 - 14);
      v9 -= 5;
    }

    while (v12 < *v19);
  }

  v13 = (v5 - 80);
  if (v5 - 80 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 16) = *(v5 - 64);
    *a1 = v14;
    *(v5 - 57) = 0;
    *(v5 - 80) = 0;
    v15 = *(v5 - 56);
    *(a1 + 36) = *(v5 - 44);
    *(a1 + 24) = v15;
    std::vector<quasar::Token>::__vdeallocate(v3);
    *(a1 + 56) = *(v5 - 24);
    *(a1 + 72) = *(v5 - 8);
    *(v5 - 24) = 0;
    *(v5 - 16) = 0;
    *(v5 - 8) = 0;
  }

  if (*(v5 - 57) < 0)
  {
    operator delete(*v13);
  }

  *(v5 - 64) = v18;
  *v13 = *__p;
  *(v5 - 44) = *&v19[12];
  *(v5 - 56) = *v19;
  std::vector<quasar::Token>::__vdeallocate((v5 - 24));
  *(v5 - 24) = v20;
  *(v5 - 8) = v21;
  v20 = 0uLL;
  v21 = 0;
  v22 = &v20;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v22);
  return v5;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,quasar::Alternative *,std::__less<void,void> &>(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  *__p = *a1;
  v20 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *v21 = *(a1 + 24);
  *&v21[12] = *(a1 + 36);
  v4 = (a1 + 56);
  v5 = *(a1 + 56);
  v23 = *(a1 + 72);
  v22 = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  do
  {
    v6 = *(a1 + v3 + 104);
    v3 += 80;
  }

  while (*v21 < v6);
  v7 = a1 + v3;
  if (v3 == 80)
  {
    while (v7 < a2)
    {
      v8 = a2 - 5;
      v10 = *(a2 - 14);
      a2 -= 5;
      if (*v21 < v10)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 5;
      v9 = *(a2 - 14);
      a2 -= 5;
    }

    while (*v21 >= v9);
  }

LABEL_9:
  v11 = a1 + v3;
  if (v7 < v8)
  {
    v12 = v8;
    do
    {
      std::swap[abi:ne200100]<quasar::Alternative>(v11, v12);
      do
      {
        v13 = *(v11 + 104);
        v11 += 80;
      }

      while (*v21 < v13);
      do
      {
        v14 = *(v12 - 14);
        v12 -= 5;
      }

      while (*v21 >= v14);
    }

    while (v11 < v12);
  }

  v15 = (v11 - 80);
  if (v11 - 80 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v16 = *v15;
    *(a1 + 16) = *(v11 - 64);
    *a1 = v16;
    *(v11 - 57) = 0;
    *(v11 - 80) = 0;
    v17 = *(v11 - 56);
    *(a1 + 36) = *(v11 - 44);
    *(a1 + 24) = v17;
    std::vector<quasar::Token>::__vdeallocate(v4);
    *(a1 + 56) = *(v11 - 24);
    *(a1 + 72) = *(v11 - 8);
    *(v11 - 24) = 0;
    *(v11 - 16) = 0;
    *(v11 - 8) = 0;
  }

  if (*(v11 - 57) < 0)
  {
    operator delete(*v15);
  }

  *(v11 - 64) = v20;
  *v15 = *__p;
  *(v11 - 44) = *&v21[12];
  *(v11 - 56) = *v21;
  std::vector<quasar::Token>::__vdeallocate((v11 - 24));
  *(v11 - 24) = v22;
  *(v11 - 8) = v23;
  v22 = 0uLL;
  v23 = 0;
  v24 = &v22;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v24);
  return v11 - 80;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 104);
        v9 = *(a2 - 56);
        if (*(a1 + 24) < v8)
        {
          if (v8 >= v9)
          {
            std::swap[abi:ne200100]<quasar::Alternative>(a1, (a1 + 80));
            if (*(v3 + 104) >= *(a2 - 56))
            {
              return 1;
            }

            a1 = v3 + 80;
          }

          v5 = (a2 - 80);
          goto LABEL_31;
        }

        if (v8 >= v9)
        {
          return 1;
        }

        v6 = (a1 + 80);
        v7 = (a2 - 80);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,0>(a1, a1 + 80, a1 + 160, a2 - 80);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,0>(a1, a1 + 80, a1 + 160, a1 + 240);
        if (*(v3 + 264) >= *(a2 - 56))
        {
          return 1;
        }

        std::swap[abi:ne200100]<quasar::Alternative>((v3 + 240), (a2 - 80));
        if (*(v3 + 184) >= *(v3 + 264))
        {
          return 1;
        }

        std::swap[abi:ne200100]<quasar::Alternative>((v3 + 160), (v3 + 240));
        if (*(v3 + 104) >= *(v3 + 184))
        {
          return 1;
        }

        v6 = (v3 + 80);
        v7 = (v3 + 160);
        break;
      default:
        goto LABEL_16;
    }

    std::swap[abi:ne200100]<quasar::Alternative>(v6, v7);
    if (*(v3 + 24) < *(v3 + 104))
    {
      v5 = (v3 + 80);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a1 + 24) < *(a2 - 56))
    {
      v5 = (a2 - 80);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::swap[abi:ne200100]<quasar::Alternative>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 160;
  v11 = *(a1 + 104);
  v12 = *(a1 + 184);
  if (*(a1 + 24) < v11)
  {
    if (v11 >= v12)
    {
      std::swap[abi:ne200100]<quasar::Alternative>(a1, (a1 + 80));
      if (*(v3 + 104) >= *(v3 + 184))
      {
        goto LABEL_36;
      }

      a1 = v3 + 80;
    }

    v13 = (v3 + 160);
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    std::swap[abi:ne200100]<quasar::Alternative>((a1 + 80), (a1 + 160));
    if (*(v3 + 24) < *(v3 + 104))
    {
      v13 = (v3 + 80);
      a1 = v3;
LABEL_35:
      std::swap[abi:ne200100]<quasar::Alternative>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 240;
  if (v3 + 240 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (*(v10 + 24) < *(v14 + 24))
    {
      *__p = *v14;
      v24 = *(v14 + 16);
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      *v25 = *(v14 + 24);
      *&v25[12] = *(v14 + 36);
      v26[0] = *(v14 + 56);
      *&v26[1] = *(v14 + 72);
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      v17 = v15;
      *(v14 + 72) = 0;
      while (1)
      {
        v18 = v17;
        v19 = v3 + v17;
        if (*(v3 + v17 + 263) < 0)
        {
          operator delete(*(v19 + 240));
        }

        *(v19 + 240) = *(v19 + 160);
        *(v19 + 256) = *(v19 + 176);
        *(v19 + 183) = 0;
        *(v19 + 160) = 0;
        *(v19 + 264) = *(v19 + 184);
        *(v19 + 276) = *(v19 + 196);
        std::vector<quasar::Token>::__vdeallocate((v19 + 296));
        *(v19 + 296) = *(v19 + 216);
        *(v19 + 312) = *(v19 + 232);
        *(v19 + 224) = 0;
        *(v19 + 232) = 0;
        *(v19 + 216) = 0;
        if (v18 == -160)
        {
          break;
        }

        v17 = v18 - 80;
        if (*(v3 + v18 + 104) >= *v25)
        {
          v20 = v3 + v17 + 240;
          goto LABEL_46;
        }
      }

      v20 = v3;
LABEL_46:
      if (*(v20 + 23) < 0)
      {
        operator delete(*v20);
      }

      v21 = v3 + v18;
      *v20 = *__p;
      *(v20 + 16) = v24;
      *(v21 + 184) = *v25;
      *(v21 + 196) = *&v25[12];
      std::vector<quasar::Token>::__vdeallocate((v21 + 216));
      *(v21 + 216) = *&v26[0];
      *(v20 + 64) = *(v26 + 8);
      memset(v26, 0, 24);
      v27 = v26;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v27);
      if (++v16 == 8)
      {
        return v14 + 80 == a2;
      }
    }

    v10 = v14;
    v15 += 80;
    v14 += 80;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void std::swap[abi:ne200100]<quasar::Alternative>(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v11 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  *v12 = *(a1 + 24);
  *&v12[12] = *(a1 + 36);
  v15 = 0;
  v5 = (a1 + 56);
  v6 = *(a1 + 7);
  v13 = v6;
  v9 = a1[4];
  *__p = v4;
  v14 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 7) = 0;
  v7 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v7;
  *(a2 + 23) = 0;
  *a2 = 0;
  v8 = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 24) = v8;
  std::vector<quasar::Token>::__vdeallocate(a1 + 7);
  *v5 = *(a2 + 56);
  *(a1 + 9) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__p;
  *(a2 + 2) = v11;
  *(a2 + 24) = *v12;
  *(a2 + 36) = *&v12[12];
  std::vector<quasar::Token>::__vdeallocate(a2 + 7);
  *(a2 + 7) = v6;
  a2[4] = v9;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v16 = &v13;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v16);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *,quasar::Alternative *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 81)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 80 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(a1, a4, v9, v12);
        v12 -= 5;
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
        if (*(a1 + 24) < *(v13 + 24))
        {
          std::swap[abi:ne200100]<quasar::Alternative>(v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(a1, a4, v9, a1);
        }

        v13 += 80;
      }

      while (v13 != a3);
    }

    if (v8 >= 81)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,quasar::Alternative *>(a1, v6, a4, v14);
        v6 -= 80;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v23[11] = v4;
    v23[12] = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 4)))
    {
      v11 = (0x999999999999999ALL * ((a4 - a1) >> 4)) | 1;
      v12 = (a1 + 80 * v11);
      if ((0x999999999999999ALL * ((a4 - a1) >> 4) + 2) < a3 && v12[26] < v12[6])
      {
        v12 += 20;
        v11 = 0x999999999999999ALL * ((a4 - a1) >> 4) + 2;
      }

      if (*(a4 + 6) >= v12[6])
      {
        *__p = *a4;
        v19 = *(a4 + 2);
        *(a4 + 1) = 0;
        *(a4 + 2) = 0;
        *a4 = 0;
        *v20 = *(a4 + 24);
        *&v20[12] = *(a4 + 36);
        v21 = *(a4 + 56);
        v22 = *(a4 + 9);
        *(a4 + 7) = 0;
        *(a4 + 8) = 0;
        *(a4 + 9) = 0;
        do
        {
          v13 = v12;
          if (*(v7 + 23) < 0)
          {
            operator delete(*v7);
          }

          v14 = *v13;
          *(v7 + 2) = *(v13 + 2);
          *v7 = v14;
          *(v13 + 23) = 0;
          *v13 = 0;
          v15 = *(v13 + 6);
          *(v7 + 9) = *(v13 + 9);
          *(v7 + 6) = v15;
          std::vector<quasar::Token>::__vdeallocate(v7 + 7);
          *(v7 + 14) = *(v13 + 14);
          *(v7 + 9) = *(v13 + 9);
          *(v13 + 7) = 0;
          *(v13 + 8) = 0;
          *(v13 + 9) = 0;
          if (v9 < v11)
          {
            break;
          }

          v16 = 2 * v11;
          v11 = (2 * v11) | 1;
          v12 = (a1 + 80 * v11);
          v17 = v16 + 2;
          if (v17 < a3 && v12[26] < v12[6])
          {
            v12 += 20;
            v11 = v17;
          }

          v7 = v13;
        }

        while (*v20 >= v12[6]);
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        *(v13 + 2) = v19;
        *v13 = *__p;
        *(v13 + 6) = *v20;
        *(v13 + 9) = *&v20[12];
        std::vector<quasar::Token>::__vdeallocate(v13 + 7);
        *(v13 + 14) = v21;
        *(v13 + 9) = v22;
        v21 = 0uLL;
        v22 = 0;
        v23[0] = &v21;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v23);
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,quasar::Alternative *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    __p = *a1;
    v16 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *v17 = *(a1 + 24);
    *&v17[12] = *(a1 + 36);
    v18 = *(a1 + 56);
    v19 = *(a1 + 72);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    v7 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(a1, a3, a4);
    v8 = v7;
    v9 = (a2 - 80);
    v10 = *(v7 + 23);
    if (v7 == (a2 - 80))
    {
      if (v10 < 0)
      {
        operator delete(*v7);
      }

      *(v8 + 2) = v16;
      *v8 = __p;
      *(v8 + 24) = *v17;
      *(v8 + 36) = *&v17[12];
      std::vector<quasar::Token>::__vdeallocate(v8 + 7);
      *(v8 + 56) = v18;
      *(v8 + 9) = v19;
      v18 = 0uLL;
      v19 = 0;
    }

    else
    {
      if (v10 < 0)
      {
        operator delete(*v7);
      }

      v11 = *v9;
      *(v8 + 2) = *(a2 - 64);
      *v8 = v11;
      *(a2 - 57) = 0;
      *(a2 - 80) = 0;
      v12 = *(a2 - 56);
      *(v8 + 36) = *(a2 - 44);
      *(v8 + 24) = v12;
      std::vector<quasar::Token>::__vdeallocate(v8 + 7);
      v13 = (a2 - 24);
      *(v8 + 56) = *(a2 - 24);
      *(v8 + 9) = *(a2 - 8);
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      v14 = (v8 + 5);
      if (*(a2 - 57) < 0)
      {
        operator delete(*v9);
      }

      *v9 = __p;
      *(a2 - 64) = v16;
      *(a2 - 56) = *v17;
      *(a2 - 44) = *&v17[12];
      std::vector<quasar::Token>::__vdeallocate((a2 - 24));
      *(a2 - 24) = v18;
      *(a2 - 8) = v19;
      v19 = 0;
      v18 = 0uLL;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(a1, v14, a3, 0xCCCCCCCCCCCCCCCDLL * ((v14 - a1) >> 4));
    }

    v20 = &v18;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v20);
  }
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[5 * v5];
    v8 = v7 + 5;
    if (2 * v5 + 2 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v9 = *(v7 + 46);
      v10 = *(v7 + 26);
      v11 = v7 + 10;
      if (v9 >= v10)
      {
        v5 = (2 * v5) | 1;
      }

      else
      {
        v8 = v11;
        v5 = 2 * v5 + 2;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    *(v8 + 23) = 0;
    *v8 = 0;
    v13 = *(v8 + 24);
    *(a1 + 36) = *(v8 + 36);
    *(a1 + 24) = v13;
    std::vector<quasar::Token>::__vdeallocate(a1 + 7);
    *(a1 + 56) = *(v8 + 56);
    *(a1 + 9) = *(v8 + 9);
    *(v8 + 7) = 0;
    *(v8 + 8) = 0;
    *(v8 + 9) = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::Alternative *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 - 2;
  if (a4 >= 2)
  {
    v21[1] = v7;
    v21[2] = v6;
    v21[11] = v4;
    v21[12] = v5;
    v10 = v8 >> 1;
    v11 = (a1 + 80 * (v8 >> 1));
    if (*(a2 - 56) < v11[6])
    {
      v12 = (a2 - 80);
      *__p = *(a2 - 80);
      v17 = *(a2 - 64);
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      *(a2 - 80) = 0;
      *v18 = *(a2 - 56);
      *&v18[12] = *(a2 - 44);
      v19 = *(a2 - 24);
      v20 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v13 = v11;
        if (*(v12 + 23) < 0)
        {
          operator delete(*v12);
        }

        v14 = *v13;
        *(v12 + 2) = *(v13 + 2);
        *v12 = v14;
        *(v13 + 23) = 0;
        *v13 = 0;
        v15 = *(v13 + 6);
        *(v12 + 9) = *(v13 + 9);
        *(v12 + 6) = v15;
        std::vector<quasar::Token>::__vdeallocate(v12 + 7);
        *(v12 + 14) = *(v13 + 14);
        *(v12 + 9) = *(v13 + 9);
        *(v13 + 7) = 0;
        *(v13 + 8) = 0;
        *(v13 + 9) = 0;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (a1 + 80 * v10);
        v12 = v13;
      }

      while (*v18 < v11[6]);
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      *v13 = *__p;
      *(v13 + 2) = v17;
      *(v13 + 6) = *v18;
      *(v13 + 9) = *&v18[12];
      std::vector<quasar::Token>::__vdeallocate(v13 + 7);
      *(v13 + 14) = v19;
      *(v13 + 9) = v20;
      v20 = 0;
      v19 = 0uLL;
      v21[0] = &v19;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v21);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,quasar::Alternative>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::Alternative>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::Alternative>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::Alternative>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::Alternative>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::Alternative>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string,quasar::Alternative>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::Alternative>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::Alternative>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::Alternative>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::Alternative>>(void *a1, const void **a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::Alternative>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 96);
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
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

uint64_t std::vector<std::vector<unsigned long>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned long> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<unsigned long>>::__emplace_back_slow_path<std::vector<unsigned long> const&>(uint64_t a1, uint64_t *a2)
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5421EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::Alternative>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::allocator<quasar::Alternative>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **std::vector<quasar::Token>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::Token*>,std::__wrap_iter<quasar::Token*>>(void *a1, uint64_t a2, const quasar::Token *a3, quasar::Token *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 5) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 5) >= a5)
      {
        v19 = 224 * a5;
        std::vector<quasar::Token>::__move_range(a1, a2, a1[1], a2 + 224 * a5);
        v20 = (v7 + v19);
        v21 = v5;
        do
        {
          quasar::Token::operator=(v21, v7);
          v7 = (v7 + 224);
          v21 += 224;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*,quasar::Token*,quasar::Token*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<quasar::Token>::__move_range(a1, v5, v10, &v5[28 * a5]);
          v18 = v5;
          do
          {
            quasar::Token::operator=(v18, v7);
            v7 = (v7 + 224);
            v18 += 224;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 5);
      if (v12 > 0x124924924924924)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 5);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x92492492492492)
      {
        v15 = 0x124924924924924;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v15);
      }

      v22 = (32 * (v13 >> 5));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 224 * a5;
      v24 = (v22 + 224 * a5);
      do
      {
        quasar::Token::Token(v22, v7);
        v22 = (v22 + 224);
        v7 = (v7 + 224);
        v23 -= 224;
      }

      while (v23);
      v27 = v24;
      v5 = std::vector<quasar::Token>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<quasar::Token>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<quasar::Token>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
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
    v8 = *(v5 + 24);
    *(v6 + 39) = *(v5 + 39);
    *(v6 + 24) = v8;
    v9 = v5[3];
    *(v6 + 64) = *(v5 + 8);
    *(v6 + 48) = v9;
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    *(v5 + 6) = 0;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v6 + 72) = *(v5 + 72);
    *(v6 + 88) = *(v5 + 11);
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    *(v5 + 11) = 0;
    v10 = v5[6];
    *(v6 + 112) = *(v5 + 14);
    *(v6 + 96) = v10;
    *(v5 + 13) = 0;
    *(v5 + 14) = 0;
    *(v5 + 12) = 0;
    *(v6 + 120) = 0;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0;
    *(v6 + 120) = *(v5 + 120);
    *(v6 + 136) = *(v5 + 17);
    *(v5 + 15) = 0;
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
    v11 = v5[9];
    *(v6 + 160) = *(v5 + 20);
    *(v6 + 144) = v11;
    *(v5 + 19) = 0;
    *(v5 + 20) = 0;
    *(v5 + 18) = 0;
    v12 = *(v5 + 42);
    *(v6 + 172) = *(v5 + 86);
    *(v6 + 168) = v12;
    v13 = v5[11];
    *(v6 + 192) = *(v5 + 24);
    *(v6 + 176) = v13;
    *(v5 + 23) = 0;
    *(v5 + 24) = 0;
    *(v5 + 22) = 0;
    v14 = *(v5 + 200);
    *(v6 + 216) = *(v5 + 54);
    *(v6 + 200) = v14;
    v5 += 14;
    v6 += 224;
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v15 = v4 - 224;
    v16 = a4 - v4;
    v17 = (a2 + v4 - 224 - a4);
    do
    {
      result = quasar::Token::operator=(v15, v17);
      v15 -= 224;
      v17 -= 14;
      v16 += 224;
    }

    while (v16);
  }

  return result;
}

uint64_t std::vector<quasar::Token>::__swap_out_circular_buffer(uint64_t a1, void *a2, void **a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, v7, a3, v9);
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

void std::vector<std::vector<std::vector<quasar::Token>>>::__assign_with_size[abi:ne200100]<std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*>(uint64_t a1, quasar::Token ***a2, quasar::Token ***a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<std::vector<quasar::Token>>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<quasar::Token>> *,std::vector<std::vector<quasar::Token>> *,std::vector<std::vector<quasar::Token>> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<quasar::Token>> *,std::vector<std::vector<quasar::Token>> *,std::vector<std::vector<quasar::Token>> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<quasar::Token>>>,std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

quasar::Token ***std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<quasar::Token>> *,std::vector<std::vector<quasar::Token>> *,std::vector<std::vector<quasar::Token>> *>(int a1, quasar::Token ***a2, quasar::Token ***a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<quasar::Token>>>*,std::vector<std::vector<std::vector<quasar::Token>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5422608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<std::vector<quasar::Token>>>>,std::vector<std::vector<std::vector<quasar::Token>>>*,std::vector<std::vector<std::vector<quasar::Token>>>*,std::vector<std::vector<std::vector<quasar::Token>>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<std::vector<std::vector<quasar::Token>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<quasar::Token>>>>,std::vector<std::vector<std::vector<quasar::Token>>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<quasar::Token>>>>,std::vector<std::vector<std::vector<quasar::Token>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<quasar::Token>>>>,std::vector<std::vector<std::vector<quasar::Token>>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<quasar::Token>>>>,std::vector<std::vector<std::vector<quasar::Token>>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

unint64_t quasar::QuantizationTool::LinearRegionDequantize@<X0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, float **a5@<X4>, void *a6@<X8>)
{
  v10 = *a1;
  result = std::vector<float>::vector[abi:ne200100](a6, a1[1] - *a1);
  if (a2 >= 1)
  {
    v12 = 0;
    v13 = *result;
    v14 = *a5;
    do
    {
      if (a3 >= 1)
      {
        v15 = (v10 + v12 * a3);
        v16 = a3;
        v17 = v14;
        do
        {
          result = *v15;
          if (result <= a4)
          {
            v18 = *v17;
            v19 = v17[1];
            v20 = *v17;
            v21 = 1.0 / a4 * result;
          }

          else if (256 - a4 >= result)
          {
            v18 = v17[1];
            v19 = v17[2];
            v20 = v18;
            result = (result - 64);
            v21 = 1.0 / (256 - 2 * a4) * result;
          }

          else
          {
            v18 = v17[2];
            v19 = v17[3];
            v20 = v18;
            result = (result - 192);
            v21 = 1.0 / a4 * result;
          }

          v22 = v20 + v21 * (v19 - v18);
          *v13++ = v22;
          ++v15;
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v12;
    }

    while (v12 != a2);
  }

  return result;
}

void quasar::QuantizationTool::LinearRegionQuantize(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  LODWORD(v28) = 0;
  v26 = a2;
  std::vector<float>::vector[abi:ne200100](&v31, a2);
  v24 = a5;
  if (a2 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 + 3;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v11 = (a1[1] - *a1) >> 2;
  LOBYTE(v33) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, v11);
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    v25 = v10 >> 2;
    do
    {
      if (a2)
      {
        v14 = (*a1 + v12);
        v15 = v31;
        v16 = v26;
        do
        {
          *v15++ = *v14;
          v14 += a3;
          --v16;
        }

        while (v16);
      }

      std::__sort<std::__less<float,float> &,float *>();
      v33 = *v31;
      v34 = *(v31 + v25);
      v35 = *(v31 + 3 * v25);
      v36 = *(v32 - 1);
      std::vector<float>::push_back[abi:ne200100](&v28, &v33);
      std::vector<float>::push_back[abi:ne200100](&v28, &v34);
      std::vector<float>::push_back[abi:ne200100](&v28, &v35);
      std::vector<float>::push_back[abi:ne200100](&v28, &v36);
      v17 = v13;
      v18 = v26;
      if (a2)
      {
        do
        {
          v19 = *(*a1 + 4 * v17);
          if (v19 >= v34)
          {
            if (v19 >= v35)
            {
              v23 = (((v19 - v35) / (v36 - v35)) * (a4 - 1)) + 0.5;
              v21 = (v23 & ~(v23 >> 31)) - a4 + 256;
              if (v21 >= 255)
              {
                LOBYTE(v21) = -1;
              }
            }

            else
            {
              v22 = (((v19 - v34) / (v35 - v34)) * (256 - 2 * a4)) + 0.5;
              v21 = (v22 & ~(v22 >> 31)) + a4;
              if (v21 >= 256 - a4)
              {
                LOBYTE(v21) = -a4;
              }
            }
          }

          else
          {
            v20 = (((v19 - v33) / (v34 - v33)) * a4) + 0.5;
            v21 = v20 & ~(v20 >> 31);
            if (v21 >= a4)
            {
              LOBYTE(v21) = a4;
            }
          }

          *(__p[0] + v17) = v21;
          v17 += a3;
          --v18;
        }

        while (v18);
      }

      ++v13;
      v12 += 4;
    }

    while (v13 != a3);
  }

  std::pair<std::vector<float>,std::vector<unsigned char>>::pair[abi:ne200100]<std::vector<float>&,std::vector<unsigned char>&,0>(v24, &v28, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}