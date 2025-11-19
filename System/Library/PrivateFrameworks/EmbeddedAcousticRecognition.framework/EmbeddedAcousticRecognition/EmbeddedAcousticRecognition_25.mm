void sub_1B51EB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ItnOverride>,quasar::ItnOverride*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ItnOverride>,quasar::ItnOverride*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::ItnOverride>,std::reverse_iterator<quasar::ItnOverride*>,std::reverse_iterator<quasar::ItnOverride*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::ItnOverride>,std::reverse_iterator<quasar::ItnOverride*>,std::reverse_iterator<quasar::ItnOverride*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 6));
      }

      v7 = v6 - 9;
      if (*(v6 - 49) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 9;
    }

    while (v7 != a5);
  }
}

quasar::AudioAnalytics *quasar::AudioAnalytics::AudioAnalytics(quasar::AudioAnalytics *this, const quasar::AudioAnalytics *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  v4 = *(a2 + 3);
  *(this + 4) = 0;
  *(this + 3) = v4;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  v5 = *(a2 + 7);
  *(this + 8) = 0;
  *(this + 7) = v5;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  v6 = *(a2 + 11);
  *(this + 12) = 0;
  *(this + 11) = v6;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  *(this + 15) = *(a2 + 15);
  *(this + 8) = *(a2 + 8);
  return this;
}

void sub_1B51EB458(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<quasar::LmeDataStatus,quasar::LmeUsageStatus>>::__init_with_size[abi:ne200100]<std::pair<quasar::LmeDataStatus,quasar::LmeUsageStatus>*,std::pair<quasar::LmeDataStatus,quasar::LmeUsageStatus>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51EB4FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void EARContinuousListeningResultHelper::reportHighResolutionRecognitionProgress(EARContinuousListeningResultHelper *this, int a2)
{
  if (*(this + 31) && *(this + 72) + 240 <= a2)
  {
    *(this + 72) = a2;
    WeakRetained = objc_loadWeakRetained(this + 26);
    v5 = WeakRetained;
    v6 = *(this + 31);
    v7 = *(this + 32);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (WeakRetained)
    {
      v8 = WeakRetained[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN34EARContinuousListeningResultHelper39reportHighResolutionRecognitionProgressEi_block_invoke;
      block[3] = &__block_descriptor_52_ea8_32c66_ZTSNSt3__110shared_ptrIN6quasar14result_handler13ResultHandlerEEE_e5_v8__0l;
      block[4] = v6;
      v10 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = a2;
      dispatch_async(v8, block);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t __copy_helper_block_ea8_32c66_ZTSNSt3__110shared_ptrIN6quasar14result_handler13ResultHandlerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c66_ZTSNSt3__110shared_ptrIN6quasar14result_handler13ResultHandlerEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void EARContinuousListeningResultHelper::reportPause(EARContinuousListeningResultHelper *this)
{
  WeakRetained = objc_loadWeakRetained(this + 26);
  v3 = WeakRetained;
  v4 = *(this + 31);
  v5 = *(this + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3321888768;
    v7[2] = ___ZN34EARContinuousListeningResultHelper11reportPauseEv_block_invoke;
    v7[3] = &__block_descriptor_48_ea8_32c66_ZTSNSt3__110shared_ptrIN6quasar14result_handler13ResultHandlerEEE_e5_v8__0l;
    v7[4] = v4;
    v8 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v6, v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void EARContinuousListeningResultHelper::reportResume(EARContinuousListeningResultHelper *this)
{
  WeakRetained = objc_loadWeakRetained(this + 26);
  v3 = WeakRetained;
  v4 = *(this + 31);
  v5 = *(this + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3321888768;
    v7[2] = ___ZN34EARContinuousListeningResultHelper12reportResumeEv_block_invoke;
    v7[3] = &__block_descriptor_48_ea8_32c66_ZTSNSt3__110shared_ptrIN6quasar14result_handler13ResultHandlerEEE_e5_v8__0l;
    v7[4] = v4;
    v8 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v6, v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

id EARHelpers::VectorToArray<unsigned int>(unsigned int **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [v2 copy];

  return v6;
}

__n128 __Block_byref_object_copy__1425(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float> const&>(a1, a2);
  }

  else
  {
    kaldi::CuMatrix<float>::CuMatrix(*(a1 + 8), a2, 111);
    result = v3 + 48;
    *(a1 + 8) = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(a1, a2);
  }

  else
  {
    kaldi::CuMatrix<float>::CuMatrix(*(a1 + 8), a2, 111);
    result = v3 + 48;
    *(a1 + 8) = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::deque<quasar::SpeakerCodeTraining::AlignedData>::pop_front(int64x2_t *a1)
{
  v2 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x27uLL)) + 104 * (a1[2].i64[0] % 0x27uLL);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 48);
  kaldi::CuMatrix<float>::~CuMatrix(v2);
  a1[2] = vaddq_s64(a1[2], xmmword_1B5AE01E0);

  return std::deque<quasar::SpeakerCodeTraining::AlignedData>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

void ___ZN19ResultStreamWrapper17writeTrainingDataERNSt3__15dequeIN6quasar19SpeakerCodeTraining11AlignedDataENS0_9allocatorIS4_EEEEl_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = quasar::SpeakerCodeTraining::load(*(a1 + 64));
  v3 = *(*(a1 + 48) + 8);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v4 = v3 + 48;
  if (v5 == v6 || (v7 = *(*(a1 + 56) + 8), v8 = *(v7 + 48), v9 = *(v7 + 56), v8 == v9) || v6 - v5 != v9 - v8)
  {
    v29 = EARLogger::QuasarOSLogger(v2);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * ((*(*(*(a1 + 48) + 8) + 56) - *(*(*(a1 + 48) + 8) + 48)) >> 4);
      v31 = 0xAAAAAAAAAAAAAAABLL * ((*(*(*(a1 + 56) + 8) + 56) - *(*(*(a1 + 56) + 8) + 48)) >> 4);
      *buf = 134218240;
      *v37 = v30;
      *&v37[8] = 2048;
      *&v37[10] = v31;
      _os_log_impl(&dword_1B501D000, v29, OS_LOG_TYPE_INFO, "Features or labels are invalid, not feeding data for training, feature size: %zu, label size: %zu", buf, 0x16u);
    }

    [*(a1 + 32) setTrainingSpeakerCode:0 inferenceSpeakerCode:0 accumulatedGradient:0 nnetVersion:0 numFrames:0 trainingOffset:0 recognitionOffset:0 language:0];
  }

  else
  {
    quasar::SpeakerCodeTraining::batchInput(*(a1 + 64), v4);
    v10 = quasar::SpeakerCodeTraining::batchInput(*(a1 + 64), *(*(a1 + 56) + 8) + 48);
    v11 = *(*(a1 + 48) + 8);
    v13 = *(v11 + 48);
    v12 = *(v11 + 56);
    v14 = EARLogger::QuasarOSLogger(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v37 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 4);
      _os_log_impl(&dword_1B501D000, v14, OS_LOG_TYPE_INFO, "Training starts, total samples: %zu", buf, 0xCu);
    }

    if (v12 != v13)
    {
      v16 = 0;
      if (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 4) <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 4);
      }

      do
      {
        v15 = quasar::SpeakerCodeTraining::train(*(a1 + 64), *(*(*(a1 + 48) + 8) + 48) + v16, *(*(*(a1 + 56) + 8) + 48) + v16);
        v16 += 48;
        --v17;
      }

      while (v17);
    }

    v18 = EARLogger::QuasarOSLogger(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      ProcessedSamples = quasar::SpeakerCodeTraining::getProcessedSamples(*(a1 + 64));
      TrainingOffset = quasar::SpeakerCodeTraining::getTrainingOffset(*(a1 + 64));
      RecognitionOffset = quasar::SpeakerCodeTraining::getRecognitionOffset(*(a1 + 64));
      *buf = 134218496;
      *v37 = ProcessedSamples;
      *&v37[8] = 2048;
      *&v37[10] = TrainingOffset;
      v38 = 2048;
      v39 = RecognitionOffset;
      _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_INFO, "Training finishes, writing updated speaker code out, processed samples: %zu, training offset: %zu, recognition offset: %zu", buf, 0x20u);
    }

    v22 = *(a1 + 32);
    quasar::SpeakerCodeTraining::getSpeakerCode(*(a1 + 64), buf);
    v23 = EARHelpers::serialize(buf);
    quasar::SpeakerCodeTraining::getInferenceSpeakerCode(*(a1 + 64), &v34);
    v24 = EARHelpers::serialize(&v34);
    quasar::SpeakerCodeTraining::getAccumulatedGradient(*(a1 + 64), &v32);
    v25 = EARHelpers::serialize(&v32);
    NnetVersion = quasar::SpeakerCodeTraining::getNnetVersion(*(a1 + 64));
    v27 = quasar::SpeakerCodeTraining::getProcessedSamples(*(a1 + 64));
    v28 = quasar::SpeakerCodeTraining::getTrainingOffset(*(a1 + 64));
    [v22 setTrainingSpeakerCode:v23 inferenceSpeakerCode:v24 accumulatedGradient:v25 nnetVersion:NnetVersion numFrames:v27 trainingOffset:v28 recognitionOffset:quasar::SpeakerCodeTraining::getRecognitionOffset(*(a1 + 64)) language:*(a1 + 40)];

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (*&v37[4])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v37[4]);
    }
  }
}

void sub_1B51EBDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_64c56_ZTSNSt3__110shared_ptrIN6quasar19SpeakerCodeTrainingEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_64c56_ZTSNSt3__110shared_ptrIN6quasar19SpeakerCodeTrainingEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float> const&>(uint64_t a1, uint64_t a2)
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

void sub_1B51EBFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<quasar::SpeakerCodeTraining::AlignedData>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x27)
  {
    a2 = 1;
  }

  if (v2 < 0x4E)
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
    *(a1 + 32) -= 39;
  }

  return v4 ^ 1u;
}

void std::__assoc_state<quasar::Location>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::promise<quasar::Location>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x1B8C849B0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        std::logic_error::~logic_error(v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x1E69E5508] + 16);
  exception[1] = a1[1];

  return MEMORY[0x1EEE63B00](v3);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x1B8C849B0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x1E69E53B0], MEMORY[0x1E69E52C8]);
}

void std::__assoc_state<quasar::Location>::set_value<quasar::Location>(uint64_t a1, _OWORD *a2)
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

void *std::__shared_ptr_emplace<quasar::RunAsyncParams>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::RecogResultStreamBase> &,std::allocator<quasar::RunAsyncParams>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04948;
  quasar::RunAsyncParams::RunAsyncParams(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::RunAsyncParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__shared_ptr_emplace<ResultStreamWrapper>::__shared_ptr_emplace[abi:ne200100]<_EARSpeechRecognizer * const {__strong}&,NSDictionary<NSString *,NSString> * {__strong}&,_EARSpeechRecognizer * const {__strong}&* {__strong}&<NSString,NSNumber *>,_EARSyncResultStreamHelper * const {__strong}&,NSString {__strong},decltype(nullptr),_EARSyncResultStreamHelper * const {__strong},std::allocator<ResultStreamWrapper>,0>(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6, uint64_t a7, void **a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04378;
  ResultStreamWrapper::ResultStreamWrapper((a1 + 3), *a2, *a3, *a4, *a5, *a6, 0, *a8);
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1B51EC730(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::RunAsyncParams>::__shared_ptr_emplace[abi:ne200100]<decltype(nullptr),std::allocator<quasar::RunAsyncParams>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04948;
  std::allocator<quasar::RunAsyncParams>::construct[abi:ne200100]<quasar::RunAsyncParams,decltype(nullptr)>(&v3, (a1 + 3));
  return a1;
}

void sub_1B51EC868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<getModelFilesWithSuffix(std::string const&,std::string const&)::$_0,std::allocator<getModelFilesWithSuffix(std::string const&,std::string const&)::$_0>,BOOL ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D04998;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<getModelFilesWithSuffix(std::string const&,std::string const&)::$_0,std::allocator<getModelFilesWithSuffix(std::string const&,std::string const&)::$_0>,BOOL ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v30.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v30.__first_ = 0;
      v30.__begin_ = (8 * (v13 >> 3));
      v30.__end_ = v30.__begin_;
      v30.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(&v30, a3, a5);
      v22 = v30.__begin_;
      memcpy(v30.__end_, v5, a1->__end_ - v5);
      v23 = a1->__begin_;
      v24 = v30.__begin_;
      v30.__end_ = (v30.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = a1->__begin_;
      a1->__begin_ = v26;
      v28 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v30.__end_;
      v30.__end_ = v27;
      v30.__end_cap_.__value_ = v28;
      v30.__first_ = v27;
      v30.__begin_ = v27;
      std::__split_buffer<std::string>::~__split_buffer(&v30);
      return v22;
    }
  }

  return v5;
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<BOOL>::__emplace_unique_key_args<BOOL,BOOL>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 25);
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

void TTokenizer::TTokenizer(TTokenizer *this, const TDataManager *a2, TDataManager *a3, TLexicon *a4, unsigned int a5)
{
  *(this + 21) = a5;
  *(this + 22) = a5;
  v5 = 1;
  for (i = 23; i != 646; ++i)
  {
    v7 = 1812433253 * (a5 ^ (a5 >> 30));
    a5 = v7 + v5;
    *(this + i) = i + v7 - 22;
    ++v5;
  }

  *(this + 323) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 3) = a4;
  *(this + 4) = 0;
  *this = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  operator new();
}

void sub_1B51EDF08(_Unwind_Exception *a1, int a2)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
    if ((v6 & 1) == 0)
    {
LABEL_6:
      *(v3 + 128) = v5;
      if (a2 == 1)
      {
        __cxa_begin_catch(a1);
        TTokenizer::freeMemory(v2);
        __cxa_rethrow();
      }

      if (*(v7 - 81) < 0)
      {
        operator delete(*(v7 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v6)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v4);
  goto LABEL_6;
}

uint64_t TIntParam::setOriginal(TIntParam *this, uint64_t a2, int a3)
{
  if (*(this + 38) > a3 || *(this + 39) < a3)
  {
    return 1;
  }

  *(this + a2 + 40) = a3;
  *(this + 14) |= 1 << (a2 + 9);
  TParam::notifyChange(this, a2);
  return 0;
}

void TInputStream::~TInputStream(TInputStream *this)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 152, *(this + 20));
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1B8C85200](a1 + 120);
  return a1;
}

_BYTE *std::wstring::basic_string[abi:ne200100]<0>(_BYTE *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  if (v4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 5)
  {
    if ((v4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v4 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v6);
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, a2, 4 * v4);
  }

  *&a1[4 * v5] = 0;
  return a1;
}

double TTokenizer::freeMemory(TTokenizer *this)
{
  v3 = (this + 32);
  v2 = *(this + 4);
  if (v2)
  {
    TDecompounder::~TDecompounder(v2);
    MEMORY[0x1B8C85350]();
  }

  v4 = *(this + 5);
  if (v4)
  {
    TClitics::~TClitics(v4);
    MEMORY[0x1B8C85350]();
  }

  v5 = *(this + 6);
  if (v5)
  {
    quasar::Bitmap::~Bitmap(v5);
    MEMORY[0x1B8C85350]();
  }

  v6 = *(this + 7);
  if (v6)
  {
    TPatternManager::~TPatternManager(v6);
    MEMORY[0x1B8C85350]();
  }

  v7 = *(this + 8);
  if (v7)
  {
    TRespellManager::~TRespellManager(v7);
    MEMORY[0x1B8C85350]();
  }

  v8 = *(this + 9);
  if (v8)
  {
    TMungeMapManager::~TMungeMapManager(v8);
    MEMORY[0x1B8C85350]();
  }

  if (*this)
  {
    TDataSaver::~TDataSaver(*this);
    MEMORY[0x1B8C85350]();
  }

  v9 = *(this + 1);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 2);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  return result;
}

uint64_t TTokenizer::tokenize(uint64_t a1, char *a2, const char *a3, char *a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + 8);
  v100 = *(v9 + 128);
  v101 = v9;
  *(v9 + 128) = a5;
  v10 = *(a1 + 24) + 224;
  v123[0] = &unk_1F2D3CC60;
  v123[1] = v10;
  v123[2] = 0;
  TResGraphMaker::clear(v123);
  if (a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = v123;
  }

  v103 = v11;
  v12 = *(a1 + 8);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v12 + 136));
  if (*(v12 + TParam::getValidConfig((v12 + 136), ActiveConfigHandle) + 288) == 1)
  {
    v14 = *(a1 + 84);
    *(a1 + 88) = v14;
    v15 = 1;
    for (i = 23; i != 646; ++i)
    {
      v17 = 1812433253 * (v14 ^ (v14 >> 30));
      v14 = v17 + v15;
      *(a1 + 4 * i) = i + v17 - 22;
      ++v15;
    }

    *(a1 + 2584) = 0;
  }

  *v119 = v121;
  v120 = xmmword_1B5AE2110;
  v122 = 1;
  if (a3 && *a3)
  {
    v18 = *(a1 + 24);
    v19 = TStringParam::get((*(a1 + 8) + 3744));
    TSegmenter::TSegmenter(v110, a3, v18 + 224, v19);
    v20 = *(a1 + 8);
    v21 = TParam::getActiveConfigHandle((v20 + 13952));
    *&v111 = *(v20 + 4 * TParam::getValidConfig((v20 + 13952), v21) + 14112);
    (*(*v110 + 16))(v110);
    v22 = strlen(a3);
    PreviousSegment = TSegmenter::getPreviousSegment(v110, &a3[v22]);
    if (*(PreviousSegment + 24) != 5)
    {
      TBuffer<wchar_t>::assign(v119, *PreviousSegment);
    }

    TSegmenter::~TSegmenter(v110);
  }

  v24 = a5;
  v25 = a2;
  do
  {
    v26 = *(a1 + 24);
    v27 = TStringParam::get((*(a1 + 8) + 3744));
    TSegmenter::TSegmenter(v118, v25, v26 + 224, v27);
    v28 = *(a1 + 8);
    v29 = TParam::getActiveConfigHandle((v28 + 13952));
    v118[1] = *(v28 + 4 * TParam::getValidConfig((v28 + 13952), v29) + 14112);
    (*(v118[0] + 16))(v118);
    v30 = v25;
    do
    {
      if (!*v30)
      {
        break;
      }

      v30 = *(TSegmenter::getSegment(v118, v30) + 8);
    }

    while (v30 - v25 <= 2500);
    v31 = *(a1 + 8);
    v32 = TParam::getActiveConfigHandle((v31 + 632));
    ValidConfig = TParam::getValidConfig((v31 + 632), v32);
    TGraph::TGraph(v114, v25, v118, *(v31 + ValidConfig + 784));
    for (j = TGraph::addVertex(v114, v25); ; j = TGraph::getNextVertex(v114, *(j + 3) + 1))
    {
      v35 = *(j + 2);
      if (!*v35)
      {
        break;
      }

      Segment = TSegmenter::getSegment(v118, v35);
      v37 = Segment;
      v38 = *(j + 2);
      if (v38 - v25 >= 2501)
      {
        v39 = v115;
        v40 = v117 != v116 && j == v115;
        if (v40 && (!*(Segment + 24) || (v38 - v25) > 0x1388 || v38 != *(j + 3)))
        {
          goto LABEL_71;
        }
      }

      if (*(Segment + 24) == 5)
      {
        *v110 = v112;
        v111 = xmmword_1B5AE2110;
        v113 = 1;
        TBuffer<wchar_t>::assign(v110, "j");
        v41 = 0;
        v42 = *v37;
          ;
        }

        TBuffer<wchar_t>::insert(v110, *(&v111 + 1), v42, v41 - 1);
        v44 = *(a1 + 24);
        if (*(&v111 + 1) >= v111)
        {
          if (v113)
          {
            LODWORD(v106) = 0;
            TBuffer<wchar_t>::insert(v110, *(&v111 + 1), &v106, 1uLL);
            v45 = *v110;
            --*(&v111 + 1);
          }

          else
          {
            v45 = *v110;
            if (v111)
            {
              *(*v110 + 4 * v111 - 4) = 0;
            }
          }
        }

        else
        {
          v45 = *v110;
          *(*v110 + 4 * *(&v111 + 1)) = 0;
        }

        v59 = TLexicon::addTempWord(v44, 0, v45, 0, 0);
        v60 = TGraph::addVertex(v114, *(v37 + 8));
        LODWORD(v106) = 3;
        v107 = v59;
        v108 = 0;
        v109 = 0;
        TGraph::addEdge(v114, j, v60, &v106);
        if (v113 == 1 && *v110 != v112)
        {
          if (*v110)
          {
            MEMORY[0x1B8C85310]();
          }
        }
      }

      else
      {
        v46 = *(a1 + 56);
        if (v46)
        {
          TPatternManager::addWords(v46, j, v114, v118, v24);
        }

        TTokenizer::addWords(a1, j, v114, v118);
        v47 = *(a1 + 64);
        if (v47)
        {
          TRespellManager::addWords(v47, j, v114, v118);
        }

        if (*(a1 + 32))
        {
          v48 = *(a1 + 8);
          v49 = TParam::getActiveConfigHandle((v48 + 12112));
          if (*(v48 + TParam::getValidConfig((v48 + 12112), v49) + 12264) == 1)
          {
            TDecompounder::addWords(*(a1 + 32), j, v114, v118);
          }
        }

        if (*(a1 + 40))
        {
          v50 = *(a1 + 8);
          v51 = TParam::getActiveConfigHandle((v50 + 12360));
          if (*(v50 + TParam::getValidConfig((v50 + 12360), v51) + 12512) == 1)
          {
            TClitics::addWords(*(a1 + 40), j, v114, v118);
          }
        }

        v52 = *(a1 + 48);
        if (v52)
        {
          TNewWords::addWords(v52, j, v114, v118, *(a1 + 24));
        }

        v53 = TGraph::addVertex(v114, *(v37 + 8));
        OutEdge = TVertex::getOutEdge(j);
        if (OutEdge)
        {
          v55 = *(OutEdge + 64);
          v56 = v55 != 0;
          if (v55)
          {
            while (1)
            {
              OutEdge = *(OutEdge + 8);
              if (!OutEdge)
              {
                break;
              }

              if ((*(OutEdge + 32) & 1) == 0)
              {
                v57 = 0;
                v58 = *(OutEdge + 64);
                v56 = v58 != 0;
                if (!v58)
                {
                  goto LABEL_62;
                }
              }
            }

            v57 = v56;
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 1;
        }

LABEL_62:
        v61 = TVertex::getInEdge(v53);
        if (v61)
        {
LABEL_63:
          if (*(v61 + 64))
          {
            while (1)
            {
              v61 = *v61;
              if (!v61)
              {
                break;
              }

              if ((*(v61 + 32) & 1) == 0)
              {
                goto LABEL_63;
              }
            }
          }

          else if ((v57 & 1) == 0)
          {
            continue;
          }
        }

        v62 = TLexicon::addTempWord(*(a1 + 24), *v37, 0, 0, 0);
        v110[0] = 0;
        v111 = v62;
        v112[0] = 0;
        TGraph::addEdge(v114, j, v53, v110);
      }
    }

    v39 = v115;
LABEL_71:
    *v110 = v112;
    v111 = xmmword_1B5AE2110;
    v113 = 1;
    v63 = TSegmenter::getSegment(v118, v39[3]);
    if (v63)
    {
      TBuffer<wchar_t>::assign(v110, *v63);
    }

    else if (a4 && *a4)
    {
      v73 = *(a1 + 24);
      v74 = TStringParam::get((*(a1 + 8) + 3744));
      TSegmenter::TSegmenter(&v106, a4, v73 + 224, v74);
      v75 = *(a1 + 8);
      v76 = TParam::getActiveConfigHandle((v75 + 13952));
      v107 = *(v75 + 4 * TParam::getValidConfig((v75 + 13952), v76) + 14112);
      (*(v106 + 16))(&v106);
      v77 = TSegmenter::getSegment(&v106, a4);
      TBuffer<wchar_t>::assign(v110, *v77);
      TSegmenter::~TSegmenter(&v106);
    }

    TTokenizer::deleteBadPaths(a1, v114);
    if (v117 != v116)
    {
      v64 = 0;
      if (((v117 - v116) >> 3) <= 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = (v117 - v116) >> 3;
      }

      do
      {
        v66 = *(v116 + 8 * v64);
        if ((*(v66 + 32) & 1) == 0)
        {
          v67 = *(a1 + 64);
          if (v67)
          {
            if (*(v66 + 48) == 2)
            {
              v68 = *(a1 + 8);
              v69 = TParam::getActiveConfigHandle((v68 + 880));
              v70 = TParam::getValidConfig((v68 + 880), v69);
              TRespellManager::expandWord(v67, v114, v66, *(v68 + v70 + 1032));
            }
          }
        }

        ++v64;
      }

      while (v65 != v64);
    }

    if (*(a1 + 72))
    {
      TGraph::minimize(v114);
      v71 = *(a1 + 72);
      if (*(&v120 + 1) >= v120)
      {
        if (v122)
        {
          LODWORD(v106) = 0;
          TBuffer<wchar_t>::insert(v119, *(&v120 + 1), &v106, 1uLL);
          v72 = *v119;
          --*(&v120 + 1);
        }

        else
        {
          v72 = *v119;
          if (v120)
          {
            *(*v119 + 4 * v120 - 4) = 0;
          }
        }
      }

      else
      {
        v72 = *v119;
        *(*v119 + 4 * *(&v120 + 1)) = 0;
      }

      if (*(&v111 + 1) >= v111)
      {
        if (v113)
        {
          LODWORD(v106) = 0;
          TBuffer<wchar_t>::insert(v110, *(&v111 + 1), &v106, 1uLL);
          v78 = *v110;
          --*(&v111 + 1);
        }

        else
        {
          v78 = *v110;
          if (v111)
          {
            *(*v110 + 4 * v111 - 4) = 0;
          }
        }
      }

      else
      {
        v78 = *v110;
        *(*v110 + 4 * *(&v111 + 1)) = 0;
      }

      TMungeMapManager::munge(v71, v114, v72, v78, v118, 0, (a1 + 88));
    }

    v79 = (v117 - v116) >> 3;
    if (v117 != v116)
    {
      v80 = 0;
      if (v79 <= 1)
      {
        v81 = 1;
      }

      else
      {
        v81 = (v117 - v116) >> 3;
      }

      do
      {
        v82 = *(v116 + 8 * v80);
        if ((*(v82 + 32) & 1) == 0)
        {
          v83 = *(a1 + 56);
          if (v83)
          {
            if (*(v82 + 48) == 5)
            {
              v84 = *(a1 + 8);
              v85 = TParam::getActiveConfigHandle((v84 + 880));
              v86 = TParam::getValidConfig((v84 + 880), v85);
              TPatternManager::expandWord(v83, v114, v82, *(v84 + v86 + 1032));
            }
          }
        }

        ++v80;
      }

      while (v81 != v80);
    }

    if (*(a1 + 72))
    {
      TGraph::minimize(v114);
      v87 = *(a1 + 72);
      if (*(&v120 + 1) >= v120)
      {
        if (v122)
        {
          LODWORD(v106) = 0;
          TBuffer<wchar_t>::insert(v119, *(&v120 + 1), &v106, 1uLL);
          v88 = *v119;
          --*(&v120 + 1);
        }

        else
        {
          v88 = *v119;
          if (v120)
          {
            *(*v119 + 4 * v120 - 4) = 0;
          }
        }
      }

      else
      {
        v88 = *v119;
        *(*v119 + 4 * *(&v120 + 1)) = 0;
      }

      if (*(&v111 + 1) >= v111)
      {
        if (v113)
        {
          LODWORD(v106) = 0;
          TBuffer<wchar_t>::insert(v110, *(&v111 + 1), &v106, 1uLL);
          v89 = *v110;
          --*(&v111 + 1);
        }

        else
        {
          v89 = *v110;
          if (v111)
          {
            *(*v110 + 4 * v111 - 4) = 0;
          }
        }
      }

      else
      {
        v89 = *v110;
        *(*v110 + 4 * *(&v111 + 1)) = 0;
      }

      TMungeMapManager::munge(v87, v114, v88, v89, v118, v79, (a1 + 88));
    }

    TGraph::minimize(v114);
    v90 = *(a1 + 8);
    v91 = TParam::getActiveConfigHandle((v90 + 15256));
    if (*(v90 + TParam::getValidConfig((v90 + 15256), v91) + 15408) == 1)
    {
      TTokenizer::addClones(a1, v114);
    }

    v92 = *(a1 + 8);
    v93 = TParam::getActiveConfigHandle((v92 + 17864));
    if (*(v92 + TParam::getValidConfig((v92 + 17864), v93) + 18016) == 1)
    {
      TTokenizer::chooseBestPath(a1, v114);
    }

    (*(*v103 + 16))(v103, v114, v25 - a2);
    v94 = v115[2];
    v95 = *v94;
    if (*v94)
    {
      TBuffer<wchar_t>::resize(v119, 0);
      v96 = TSegmenter::getPreviousSegment(v118, v115[2]);
      if (*(v96 + 24) != 5)
      {
        TBuffer<wchar_t>::assign(v119, *v96);
      }

      v25 = v115[3];
    }

    TLexicon::cleanCache(*(a1 + 24));
    v97 = *(a1 + 48);
    if (v97)
    {
      *(v97 + 40) = 0;
    }

    v98 = *(a1 + 56);
    if (v98)
    {
      TPatternManager::clear(v98);
    }

    if (v113 == 1 && *v110 != v112 && *v110)
    {
      MEMORY[0x1B8C85310]();
    }

    TGraph::~TGraph(v114);
    TSegmenter::~TSegmenter(v118);
    v24 = a5;
  }

  while (v95);
  if (v122 == 1 && *v119 != v121 && *v119)
  {
    MEMORY[0x1B8C85310]();
  }

  TResGraphMaker::~TResGraphMaker(v123);
  *(v101 + 128) = v100;
  return -1;
}

void sub_1B51EF18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  TSegmenter::~TSegmenter(&a34);
  if (LOBYTE(STACK[0xA08]) == 1 && STACK[0x5F0] != a10 && STACK[0x5F0] != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  TResGraphMaker::~TResGraphMaker((v34 - 112));
  *(a12 + 128) = a11;
  _Unwind_Resume(a1);
}

void TTokenizer::addWords(TTokenizer *this, TVertex *a2, TGraph *a3, TSegmenter *a4)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v7 = TStringParam::get((*(this + 1) + 10736));
  std::wstring::basic_string[abi:ne200100]<0>(__p, v7);
  v8 = *(this + 3);
  v9 = *(a2 + 2);
  if (v36 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = *(this + 1);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v11 + 16456));
  v13 = *(v11 + 4 * TParam::getValidConfig((v11 + 16456), ActiveConfigHandle) + 16616);
  v14 = *(this + 1);
  v15 = TParam::getActiveConfigHandle((v14 + 16104));
  ValidConfig = TParam::getValidConfig((v14 + 16104), v15);
  TLexicon::findHeadClonesCollatedPrefix(v8, v9, a4, v10, v13, *(v14 + 4 * ValidConfig + 16264), &v37);
  v17 = v37;
  v18 = a4;
  if (v38 != v37)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = **&v17[v19];
      if (*v21 != 45)
      {
        goto LABEL_12;
      }

      v22 = v21[1];
      {
        operator new();
      }

      if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v22))
      {
        goto LABEL_12;
      }

      PreviousSegment = TSegmenter::getPreviousSegment(v18, *(a2 + 2));
      v25 = PreviousSegment;
      if (PreviousSegment)
      {
        if (!*(PreviousSegment + 24))
        {
          v28 = v24;
          v29 = **PreviousSegment;
          {
            operator new();
          }

          if (v29 == 13 || v29 == 10)
          {
            v18 = a4;
            v25 = TSegmenter::getPreviousSegment(a4, v28);
            if (!v25)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v18 = a4;
          }
        }

        if ((*(v25 + 24) - 1) <= 1)
        {
LABEL_12:
          v26 = TGraph::addVertex(a3, (*(a2 + 2) + *(v37 + v19 + 8)));
          v27 = *(v37 + v19);
          v32 = 1;
          v33 = v27;
          v34 = *(v37 + v19 + 16);
          TGraph::addEdge(a3, a2, v26, &v32);
        }
      }

LABEL_13:
      ++v20;
      v17 = v37;
      v19 += 32;
    }

    while (v20 < (v38 - v37) >> 5);
  }

  std::vector<TLexiconMatch>::resize(&v37, 0);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_1B51EF59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22)
{
  MEMORY[0x1B8C85350](a9, 0x1070C40ADD13FEBLL);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void TTokenizer::deleteBadPaths(TTokenizer *this, TGraph *a2)
{
  v49 = 0;
  v50 = 0;
  v51 = 0;
  TGraph::topologicalSort(a2, &v49, 0);
  std::vector<TEdgeStat>::vector[abi:ne200100](v48, (*(a2 + 11) - *(a2 + 10)) >> 3);
  *(v48[0] + 72 * *(*(a2 + 8) + 40) + 64) = 1;
  __p = 0;
  v46 = 0;
  v47 = 0;
  v4 = *(this + 1);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v4 + 15752));
  if (*(v4 + 4 * TParam::getValidConfig((v4 + 15752), ActiveConfigHandle) + 15912) != -1)
  {
    *&v40 = *(this + 1) + 15752;
    std::vector<TVertex const*>::push_back[abi:ne200100](&__p, &v40);
  }

  v6 = *(this + 1);
  v7 = TParam::getActiveConfigHandle((v6 + 16808));
  if (*(v6 + 4 * TParam::getValidConfig((v6 + 16808), v7) + 16968) != -1)
  {
    *&v40 = *(this + 1) + 16808;
    std::vector<TVertex const*>::push_back[abi:ne200100](&__p, &v40);
  }

  v8 = *(this + 1);
  v9 = TParam::getActiveConfigHandle((v8 + 17160));
  if (*(v8 + 4 * TParam::getValidConfig((v8 + 17160), v9) + 17320) != -1)
  {
    *&v40 = *(this + 1) + 17160;
    std::vector<TVertex const*>::push_back[abi:ne200100](&__p, &v40);
  }

  v10 = *(this + 1);
  v11 = TParam::getActiveConfigHandle((v10 + 17512));
  if (*(v10 + 4 * TParam::getValidConfig((v10 + 17512), v11) + 17672) != -1)
  {
    *&v40 = *(this + 1) + 17512;
    std::vector<TVertex const*>::push_back[abi:ne200100](&__p, &v40);
  }

  v12 = *(this + 1);
  v13 = TParam::getActiveConfigHandle((v12 + 18112));
  if (*(v12 + 4 * TParam::getValidConfig((v12 + 18112), v13) + 18272) != -1)
  {
    *&v40 = *(this + 1) + 18112;
    std::vector<TVertex const*>::push_back[abi:ne200100](&__p, &v40);
  }

  v14 = *(this + 1);
  v15 = TParam::getActiveConfigHandle((v14 + 18464));
  if (*(v14 + 4 * TParam::getValidConfig((v14 + 18464), v15) + 18624) != -1)
  {
    *&v40 = *(this + 1) + 18464;
    std::vector<TVertex const*>::push_back[abi:ne200100](&__p, &v40);
  }

  v16 = *(this + 1);
  v17 = TParam::getActiveConfigHandle((v16 + 18816));
  if (*(v16 + 4 * TParam::getValidConfig((v16 + 18816), v17) + 18976) != -1)
  {
    *&v40 = *(this + 1) + 18816;
    std::vector<TVertex const*>::push_back[abi:ne200100](&__p, &v40);
  }

  v18 = 126 - 2 * __clz((v46 - __p) >> 3);
  *&v40 = sortPruningParams;
  if (v46 == __p)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,false>(__p, v46, &v40, v19, 1);
  v20 = v49;
  v21 = v50 - v49;
  if (v50 != v49)
  {
    v22 = 0;
    do
    {
      OutEdge = TVertex::getOutEdge(v20[v22]);
      if (OutEdge)
      {
LABEL_21:
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        computeEdgeStat(OutEdge, *(this + 1), &__p, &v40);
        v24 = 0;
        v25 = *(*(OutEdge + 24) + 40);
        v26 = v48[0];
        v27 = v48[0] + 72 * *(*(OutEdge + 16) + 40);
        do
        {
          *(&v40 + v24) = vaddq_s64(*(&v40 + v24), *&v27[v24]);
          v24 += 16;
        }

        while (v24 != 64);
        v28 = &v26[72 * v25];
        if (v28[64] == 1)
        {
          v29 = 0;
          while (1)
          {
            v30 = *(&v40 + v29);
            v31 = *&v28[v29];
            v32 = v30 >= v31;
            if (v30 != v31)
            {
              break;
            }

            v29 += 8;
            if (v29 == 56)
            {
              v32 = *(&v43 + 1) >= *(v28 + 7);
              break;
            }
          }

          if (v32)
          {
            goto LABEL_30;
          }
        }

        *(v28 + 1) = v41;
        *(v28 + 2) = v42;
        *(v28 + 3) = v43;
        v28[64] = v44;
        *v28 = v40;
LABEL_30:
        while (1)
        {
          OutEdge = *(OutEdge + 8);
          if (!OutEdge)
          {
            break;
          }

          if ((*(OutEdge + 32) & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      ++v22;
      v20 = v49;
      v21 = v50 - v49;
    }

    while (v22 < v50 - v49);
  }

  if (v21)
  {
    v33 = 0;
    do
    {
      v34 = *(&v20[~v33] + v21);
      v35 = TVertex::getOutEdge(v34);
      if (v35)
      {
LABEL_37:
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        computeEdgeStat(v35, *(this + 1), &__p, &v40);
        v36 = 0;
        v37 = *(*(v35 + 24) + 40);
        v38 = v48[0];
        v39 = v48[0] + 72 * *(*(v35 + 16) + 40);
        do
        {
          *(&v40 + v36) = vaddq_s64(*(&v40 + v36), *&v39[v36]);
          v36 += 16;
        }

        while (v36 != 64);
        if (memcmp(&v40, &v38[72 * v37], 0x40uLL))
        {
          TGraph::deleteEdge(a2, v35);
        }

        while (1)
        {
          v35 = *(v35 + 8);
          if (!v35)
          {
            break;
          }

          if ((*(v35 + 32) & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      if (v34 != *(a2 + 9) && !TVertex::getOutEdge(v34))
      {
        TGraph::deleteVertex(a2, v34);
      }

      ++v33;
      v20 = v49;
      v21 = v50 - v49;
    }

    while (v33 < v50 - v49);
  }

  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_1B51EFB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 88);
  if (v24)
  {
    *(v22 - 80) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void TTokenizer::addClones(TTokenizer *this, TGraph *a2)
{
  v4 = *(a2 + 13);
  v3 = *(a2 + 14);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = TStringParam::get((*(this + 1) + 10736));
  std::wstring::basic_string[abi:ne200100]<0>(__p, v5);
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    if (((v3 - v4) >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = (v3 - v4) >> 3;
    }

    do
    {
      v9 = *(*(a2 + 13) + 8 * v7);
      if ((*(v9 + 32) & 1) == 0)
      {
        v10 = *(v9 + 64);
        v14[0] = *(v9 + 48);
        v14[1] = v10;
        if (LODWORD(v14[0]) == 1)
        {
          TWord::getClones(*(&v14[0] + 1), &v17);
          v6 = v17;
          if (v18 != v17)
          {
            v11 = 0;
            do
            {
              v12 = v6[v11];
              *(&v14[0] + 1) = v12;
              if (v16 >= 0)
              {
                v13 = __p;
              }

              else
              {
                v13 = __p[0];
              }

              if (!TWord::applyMask(v12, v13))
              {
                TGraph::addEdge(a2, *(v9 + 16), *(v9 + 24), v14);
              }

              ++v11;
              v6 = v17;
            }

            while (v11 < (v18 - v17) >> 3);
          }
        }
      }

      ++v7;
    }

    while (v7 != v8);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
    v6 = v17;
  }

  if (v6)
  {
    v18 = v6;
    operator delete(v6);
  }
}

void sub_1B51EFCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TTokenizer::chooseBestPath(TTokenizer *this, TGraph *a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  TGraph::topologicalSort(a2, &v14, 0);
  v4 = v14;
  if (v15 != v14)
  {
    v5 = 0;
    do
    {
      v6 = *&v4[8 * v5];
      if ((*(v6 + 32) & 1) == 0)
      {
        if (v6 == *(a2 + 8) || TVertex::getInEdge(*&v4[8 * v5]))
        {
          OutEdgeCount = TVertex::getOutEdgeCount(v6);
          v8 = OutEdgeCount;
          if (OutEdgeCount >= 2 && (v9 = *(this + 1), ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 384)), *(v9 + TParam::getValidConfig((v9 + 384), ActiveConfigHandle) + 536) == 1))
          {
            v11 = (floor(vcvtd_n_f64_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()((this + 88)), 0x20uLL) * v8) + 0.0);
          }

          else
          {
            v11 = 0;
          }

          OutEdge = TVertex::getOutEdge(v6);
          if (OutEdge)
          {
            v13 = 0;
LABEL_12:
            if (v11 != v13)
            {
              TGraph::deleteEdge(a2, OutEdge);
            }

            while (1)
            {
              OutEdge = *(OutEdge + 8);
              if (!OutEdge)
              {
                break;
              }

              if ((*(OutEdge + 32) & 1) == 0)
              {
                ++v13;
                goto LABEL_12;
              }
            }
          }
        }

        else
        {
          TGraph::deleteVertex(a2, v6);
        }
      }

      ++v5;
      v4 = v14;
    }

    while (v5 < (v15 - v14) >> 3);
  }

  if (v4)
  {
    v15 = v4;
    operator delete(v4);
  }
}

void sub_1B51EFE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TBuffer<wchar_t>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 1048) == 1 && *(a1 + 8) < a2)
  {
    *(a1 + 8) = a2 + 1;
    operator new[]();
  }

  v4 = *(a1 + 16);
  if (v4 < a2)
  {
    v5 = a2;
    if (*(a1 + 1048))
    {
LABEL_9:
      bzero((*a1 + 4 * v4), 4 * (v5 - v4));
      goto LABEL_10;
    }

    v5 = *(a1 + 8);
    if (v4 < v5)
    {
      if (v5 >= a2)
      {
        v5 = a2;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *(a1 + 16) = a2;
}

BOOL sortPruningParams(const TIntParam *a1, const TIntParam *a2)
{
  v3 = a1;
  ActiveConfigHandle = TParam::getActiveConfigHandle(a1);
  LODWORD(v3) = *(v3 + TParam::getValidConfig(v3, ActiveConfigHandle) + 40);
  v5 = TParam::getActiveConfigHandle(a2);
  return v3 < *(a2 + TParam::getValidConfig(a2, v5) + 40);
}

uint64_t computeEdgeStat(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(a4 + 64) = 1;
  if (*(result + 48) != 6)
  {
    v5 = *a3;
    if (a3[1] != *a3)
    {
      v7 = result;
      v8 = 0;
      v9 = *(result + 72);
      v10 = a2 + 15752;
      v11 = *(result + 64);
      v12 = a2 + 16808;
      v13 = a2 + 17160;
      v14 = a2 + 17512;
      v15 = a2 + 18112;
      v16 = a2 + 18464;
      v17 = a2 + 18816;
      v18 = &v49;
      v19 = v11 & 0x30;
      v20 = v11 & 0x35;
      v21 = v11 & 0xC0;
      v22 = v11 & 0xD;
      if ((v11 & 5) != 0)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v24 = xmmword_1B5AE2110;
      while (1)
      {
        v25 = *(v5 + 8 * v8);
        if (v25 == v10)
        {
          break;
        }

        if (v25 == v12)
        {
          if (!*(v7 + 48))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v25 == v13)
          {
            if (!v20)
            {
              goto LABEL_27;
            }

LABEL_25:
            v27 = 1;
LABEL_26:
            *(a4 + 8 * v8) = v27;
            goto LABEL_27;
          }

          if (v25 == v14)
          {
            goto LABEL_25;
          }

          if (v25 == v15)
          {
            if (*(v7 + 48) != 5)
            {
              goto LABEL_27;
            }

            goto LABEL_25;
          }

          if (v25 == v16)
          {
            if (*(v7 + 48) == 4)
            {
              goto LABEL_25;
            }
          }

          else if (v25 == v17)
          {
            v26 = v23;
            if (v22)
            {
              goto LABEL_15;
            }

            if ((v11 & 2) == 0)
            {
              goto LABEL_52;
            }

            v28 = *(v7 + 16);
            v45 = v9;
            v46 = v18;
            v43 = v15;
            v44 = v11;
            v41 = v17;
            v42 = v16;
            v39 = v20;
            v40 = v19;
            v38 = v23;
            v37 = v24;
            result = TVertex::getInEdge(v28);
            v24 = v37;
            v23 = v38;
            v22 = 0;
            v20 = v39;
            v19 = v40;
            v17 = v41;
            v16 = v42;
            v15 = v43;
            v11 = v44;
            v9 = v45;
            v18 = v46;
            if (!result)
            {
              goto LABEL_52;
            }

            if (*(v28 + 2) == *(v28 + 3))
            {
              goto LABEL_55;
            }

            v47 = v46;
            v48 = v37;
            v50 = 1;
            result = TVertex::getInEdge(v28);
            v29 = result;
            v9 = v45;
            v18 = v46;
            v15 = v43;
            v11 = v44;
            v17 = v41;
            v16 = v42;
            v20 = v39;
            v19 = v40;
            v23 = v38;
            v22 = 0;
            v24 = v37;
            if (result)
            {
LABEL_33:
              v30 = *(v29 + 48);
              v31 = v30 > 5;
              v32 = (1 << v30) & 0x2C;
              if (!v31 && v32 != 0)
              {
                v36 = 0;
LABEL_45:
                if (v50 == 1)
                {
                  result = v47;
                  if (v47 != v18 && v47 != 0)
                  {
                    result = MEMORY[0x1B8C85310](v24);
                    v24 = v37;
                    v23 = v38;
                    v22 = 0;
                    v20 = v39;
                    v19 = v40;
                    v17 = v41;
                    v16 = v42;
                    v15 = v43;
                    v11 = v44;
                    v9 = v45;
                    v18 = v46;
                  }
                }

                if (v36)
                {
LABEL_52:
                  v35 = *(a4 + 8 * v8);
                  if (v19)
                  {
                    v35 += 3;
                    *(a4 + 8 * v8) = v35;
                  }

                  v27 = v35 + v9;
                  goto LABEL_26;
                }

LABEL_55:
                v26 = 1;
LABEL_15:
                *(a4 + 8 * v8) += v26;
                goto LABEL_52;
              }

              result = TWord::getWrittenForm(*(v29 + 56), &v47);
              if (v48.n128_u64[1] > 1 || (result = wcschr(".", *v47)) == 0)
              {
                v36 = 0;
                v9 = v45;
                v18 = v46;
                v15 = v43;
                v11 = v44;
                v17 = v41;
                v16 = v42;
                v20 = v39;
                v19 = v40;
                v23 = v38;
                v22 = 0;
                v24 = v37;
                goto LABEL_45;
              }

              v9 = v45;
              v18 = v46;
              v15 = v43;
              v11 = v44;
              v17 = v41;
              v16 = v42;
              v20 = v39;
              v19 = v40;
              v23 = v38;
              v22 = 0;
              v24 = v37;
              while (1)
              {
                v29 = *v29;
                if (!v29)
                {
                  break;
                }

                if ((*(v29 + 32) & 1) == 0)
                {
                  goto LABEL_33;
                }
              }
            }

            v36 = 1;
            goto LABEL_45;
          }
        }

LABEL_27:
        ++v8;
        v5 = *a3;
        if (v8 >= (a3[1] - *a3) >> 3)
        {
          return result;
        }
      }

      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  return result;
}

void sub_1B51F0380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (LOBYTE(STACK[0x480]) == 1 && a22 != a21)
  {
    if (a22)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

void TInputStream::TInputStream(TInputStream *this, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 1;
  *(this + 104) = 0u;
  *(this + 20) = 0;
  *(this + 19) = this + 160;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 21) = 0;
  *(this + 22) = a5;
  if (a4)
  {
    MEMORY[0x1B8C84820](this + 16, a4);
  }

  *(this + 9) = TInputStream::readHeader(this);
}

void sub_1B51F0450(_Unwind_Exception *a1)
{
  v5 = v3;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v5, *(v1 + 160));
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t TIntParam::set(TIntParam *this, uint64_t a2, int a3)
{
  if (*(this + 38) > a3 || *(this + 39) < a3)
  {
    return 1;
  }

  *(this + a2 + 64) = a3;
  *(this + 14) |= 1 << (a2 + 33);
  TParam::notifyChange(this, a2);
  return 0;
}

uint64_t TBuffer<wchar_t>::assign(uint64_t a1, int *a2)
{
  TBuffer<wchar_t>::resize(a1, 0);
  v4 = 0;
    ;
  }

  return TBuffer<wchar_t>::insert(a1, 0, a2, v4 - 1);
}

void *std::vector<TEdgeStat>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TEdgeStat>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B51F062C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TEdgeStat>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TEdgeStat>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TEdgeStat>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,TIntParam const**>(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TIntParam const**,BOOL (*&)(TIntParam const*,TIntParam const*)>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TIntParam const**,BOOL (*&)(TIntParam const*,TIntParam const*)>(v8, a2, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(v8, v49, a3);
    v9 = (v49 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(v49 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,false>(v8, v49, a3, -v11, a5 & 1);
      v9 = (v49 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,0>(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TIntParam const**,BOOL (*&)(TIntParam const*,TIntParam const*)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TIntParam const**,BOOL (*&)(TIntParam const*,TIntParam const*)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**,TIntParam const**>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(a1, a4, v8, v11--);
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
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(a1, a4, v8, a1);
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
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TIntParam const*,TIntParam const*),TIntParam const**>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void fst::MappedFile::~MappedFile(fst::MappedFile *this)
{
  *this = &unk_1F2D04A28;
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(this + 2);
  if (v3)
  {
    if (!munmap(v3, v2))
    {
      goto LABEL_9;
    }

    std::string::basic_string[abi:ne200100]<0>(v12, "ERROR");
    v4 = fst::LogMessage::LogMessage(&v14, v12);
    v5 = fst::cerr(v4);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "failed to unmap region: ", 24);
    v7 = __error();
    v8 = strerror(*v7);
    v9 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    fst::LogMessage::~LogMessage(&v14);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    v10 = v12[0];
  }

  else
  {
    v11 = *(this + 1);
    if (!v11)
    {
      goto LABEL_9;
    }

    v10 = (v11 - *(this + 8));
  }

  operator delete(v10);
LABEL_9:
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

{
  fst::MappedFile::~MappedFile(this);

  JUMPOUT(0x1B8C85350);
}

void fst::MappedFile::Allocate(fst::MappedFile *this, int a2)
{
  if (this)
  {
    operator new(this + a2);
  }

  operator new();
}

void sub_1B51F1BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v15, v16);
  _Unwind_Resume(a1);
}

void buildRegExp(const TFileObject *a1, TLexicon *a2)
{
  v8 = &unk_1B5AE5410;
  v9 = vdupq_n_s64(1uLL);
  v10 = -1;
  if (!TFileObject::verify(a1, &v8, 1, 1))
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  TException::TException(__p, &v6);
  __p[0] = &unk_1F2D00400;
  if (v5 >= 0)
  {
    v2 = &__p[1];
  }

  else
  {
    v2 = __p[1];
  }

  conditionalAssert(v2, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/decompounder.cpp", 70);
  TException::~TException(__p);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  TException::TException(exception, __p);
  *exception = &unk_1F2D00400;
}

void sub_1B51F22B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1B51F22DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_1B51F2318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  TException::~TException(&a13);
  if (*(v18 - 121) < 0)
  {
    operator delete(*(v18 - 144));
  }

  _Unwind_Resume(a1);
}

void sub_1B51F2390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (LOBYTE(STACK[0x438]) == 1)
  {
    buildRegExp(va, v5);
  }

  _Unwind_Resume(a1);
}

void TFsaBuilder::minimizeChildren(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    v9 = a4 + 8;
    do
    {
      v11 = *(v4 + 16);
      if (!*(v11 + 8))
      {
        TFsaBuilder::minimizeChildren(a1, a2);
        v10 = std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::find<TState *>(a4, &v11);
        if (v9 == v10)
        {
          *(v11 + 8) = 1;
          std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__emplace_unique_key_args<TState *,TState * const&>(a4, &v11);
        }

        else
        {
          TFsa::moveTrans(a2, v4, a3, *(v10 + 32));
          TFsa::deleteState(a2, v11);
        }
      }

      v4 = *(v4 + 40);
    }

    while (v4);
  }
}

uint64_t TFsa::moveTrans(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  if (v6 != a3)
  {
    TState::deleteTrans(v6, a2, 1u);
    TState::addTrans(a3, a2, 1u);
  }

  result = *(a2 + 16);
  if (result != a4)
  {
    TState::deleteTrans(result, a2, 0);

    return TState::addTrans(a4, a2, 0);
  }

  return result;
}

void TFsaBuilder::addSuffix(int a1, TAllocator *this, void *a3, _DWORD *a4)
{
  v4 = a3;
  if (*a4)
  {
    v6 = a4 + 1;
    do
    {
      v7 = TFsa::newState(this, 0);
      TFsa::newTrans(this, v4, v7, *(v6 - 1));
      v8 = *v6++;
      v4 = v7;
    }

    while (v8);
  }

  else
  {
    v7 = a3;
  }

  TFsa::addExtremity(this, v7, 1u);
}

void TDecompounder::load(TLexicon **this, TInputStream *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  if (TInputStream::verifyHeader(a2, "TknDecomp", &pTknDecompVersion, 3))
  {
    std::string::basic_string[abi:ne200100]<0>(v40, "");
    TException::TException(&v59, v40);
    v59.__vftable = &unk_1F2D00400;
    if (v61 >= 0)
    {
      v35 = &v60;
    }

    else
    {
      v35 = v60;
    }

    conditionalAssert(v35, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/decompounder.cpp", 382);
    TException::~TException(&v59);
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v59, "");
    TException::TException(exception, &v59);
    *exception = &unk_1F2D00400;
  }

  TFileObjectParser::TFileObjectParser(v40, a2);
  v4 = v40[0];
  v60 = xmmword_1B5AE5400;
  v59.__vftable = dword_1B5AE5414;
  v63 = xmmword_1B5AE5400;
  v61 = -1;
  v62 = dword_1B5AE5434;
  v66 = xmmword_1B5AE5400;
  v64 = -1;
  v65 = dword_1B5AE545C;
  v69 = xmmword_1B5AE5400;
  v67 = -1;
  v68 = dword_1B5AE5498;
  v72 = xmmword_1B5AE0050;
  v70 = -1;
  v71 = dword_1B5AE54D0;
  v73 = -1;
  v75 = xmmword_1B5AE5400;
  v74 = dword_1B5AE5510;
  v78 = xmmword_1B5AE5400;
  v76 = 1;
  v77 = dword_1B5AE554C;
  v79 = 1;
  if (TFileObject::verify(v40[0], &v59, 7, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v52, "");
    TException::TException(&v55, v52);
    v55.__vftable = &unk_1F2D00400;
    if (v57 >= 0)
    {
      v37 = &v56;
    }

    else
    {
      v37 = v56.i64[0];
    }

    conditionalAssert(v37->i8, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/decompounder.cpp", 404);
    TException::~TException(&v55);
    if (v53 < 0)
    {
      operator delete(v52[0].__vftable);
    }

    v38 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v55, "");
    TException::TException(v38, &v55);
    *v38 = &unk_1F2D00400;
  }

  v5 = v4[3];
  if (v5)
  {
    v39 = 0;
    while (1)
    {
      v6 = *(v5 + 1);
      if (!wcscmp(v6, dword_1B5AE5414))
      {
        break;
      }

      if (!wcscmp(v6, dword_1B5AE5434))
      {
        buildRegExp(v5, *this);
      }

      if (!wcscmp(v6, dword_1B5AE545C))
      {
        buildRegExp(v5, *this);
      }

      if (!wcscmp(v6, dword_1B5AE5498))
      {
        buildRegExp(v5, *this);
      }

      if (!wcscmp(v6, dword_1B5AE54D0))
      {
        buildRegExp(v5, *this);
      }

      if (!wcscmp(v6, dword_1B5AE5510))
      {
        v39 = 1;
      }

      else
      {
        v39 |= wcscmp(v6, dword_1B5AE554C) == 0;
      }

      v5 = *(v5 + 2);
      if (!v5)
      {
        if (v39)
        {
          tknPrintString("Warning: Decompounder model has been lobotomized on load.\n");
        }

        goto LABEL_84;
      }
    }

    v7 = *this;
    v56 = vdupq_n_s64(1uLL);
    v55.__vftable = &unk_1B5AE5410;
    v57 = -1;
    if (TFileObject::verify(v5, &v55, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(v50, "");
      TException::TException(v52, v50);
      v52[0].__vftable = &unk_1F2D00400;
      if (v54 >= 0)
      {
        v31 = &v52[1];
      }

      else
      {
        v31 = v52[1].__vftable;
      }

      conditionalAssert(v31, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/decompounder.cpp", 304);
      TException::~TException(v52);
      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      v32 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v52, "");
      TException::TException(v32, v52);
      *v32 = &unk_1F2D00400;
    }

    v47 = 0;
    v48 = 0;
    v49 = 0;
    v8 = *(v5 + 3);
    if (!v8)
    {
      v28 = 0;
      v27 = 0;
      goto LABEL_60;
    }

    v9 = 0;
    while (1)
    {
      if ((TFileObject::verify(v8, 0, 0) & 1) == 0)
      {
        if (!TLexicon::checkName(v7, *(v8 + 24), 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(v7, *(v8 + 24)))
          {
            loggableFileObject(v8);
            v14 = v43;
            v15 = v42[0].__vftable;
            loggableUnicode(*(v8 + 24), __p);
            if (v14 >= 0)
            {
              v16 = v42;
            }

            else
            {
              v16 = v15;
            }

            if (v46 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v16, v17);
            if (v46 < 0)
            {
              operator delete(__p[0]);
            }

            if (v43 < 0)
            {
              operator delete(v42[0].__vftable);
            }
          }

          v18 = *(v8 + 24);
          v19 = v48;
          if (v48 >= v49)
          {
            v21 = (v48 - v47) >> 3;
            if ((v21 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v22 = (v49 - v47) >> 2;
            if (v22 <= v21 + 1)
            {
              v22 = v21 + 1;
            }

            if (v49 - v47 >= 0x7FFFFFFFFFFFFFF8)
            {
              v23 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v22;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&v47, v23);
            }

            v24 = (8 * v21);
            *v24 = v18;
            v20 = 8 * v21 + 8;
            v25 = v24 - (v48 - v47);
            memcpy(v25, v47, v48 - v47);
            v26 = v47;
            v47 = v25;
            v48 = v20;
            v49 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v48 = v18;
            v20 = (v19 + 8);
          }

          v48 = v20;
          goto LABEL_28;
        }

        loggableFileObject(v8);
        v10 = v43;
        v11 = v42[0].__vftable;
        loggableUnicode(*(v8 + 24), __p);
        if (v10 >= 0)
        {
          v12 = v42;
        }

        else
        {
          v12 = v11;
        }

        if (v46 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        tknPrintf("Error: %s'%s' is an invalid token name.\n", v12, v13);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v43 < 0)
        {
          operator delete(v42[0].__vftable);
        }
      }

      v9 = 1;
LABEL_28:
      v8 = *(v8 + 16);
      if (!v8)
      {
        if (v9)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "");
          TException::TException(v42, __p);
          v42[0].__vftable = &unk_1F2D00400;
          if (v44 >= 0)
          {
            v33 = &v42[1];
          }

          else
          {
            v33 = v42[1].__vftable;
          }

          conditionalAssert(v33, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/decompounder.cpp", 337);
          TException::~TException(v42);
          if (v46 < 0)
          {
            operator delete(__p[0]);
          }

          v34 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v42, "");
          TException::TException(v34, v42);
          *v34 = &unk_1F2D00400;
        }

        v27 = v47;
        v28 = v48;
LABEL_60:
        v29 = 126 - 2 * __clz(v28 - v27);
        if (v28 == v27)
        {
          v30 = 0;
        }

        else
        {
          v30 = v29;
        }

        std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(v27, v28, &v58, v30, 1);
        TFsaBuilder::operator()();
      }
    }
  }

LABEL_84:
  TFileObjectParser::~TFileObjectParser(v40);
}

void sub_1B51F347C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1B51F3484);
  }

  __clang_call_terminate(a1);
}

void TDecompounder::TDecompounder(TDecompounder *this, TInputStream *a2, TLexicon *a3, TTokenizerParamManager *a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  TDecompounder::load(this, a2);
}

void TDecompounder::~TDecompounder(TDecompounder *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    TFsa::~TFsa(v2);
    MEMORY[0x1B8C85350]();
  }

  v3 = *(this + 3);
  if (v3)
  {
    TRegExp::~TRegExp(v3);
    MEMORY[0x1B8C85350]();
  }

  v4 = *(this + 4);
  if (v4)
  {
    TRegExp::~TRegExp(v4);
    MEMORY[0x1B8C85350]();
  }

  v5 = *(this + 5);
  if (v5)
  {
    TRegExp::~TRegExp(v5);
    MEMORY[0x1B8C85350]();
  }

  v6 = *(this + 6);
  if (v6)
  {
    TRegExp::~TRegExp(v6);
    MEMORY[0x1B8C85350]();
  }
}

uint64_t TDecompounder::isValidWord(TDecompounder *this, int **a2, __int32 **a3, int a4, int a5)
{
  if (a4 && (a5 & 1) != 0)
  {
    return 0;
  }

  v44 = v46;
  v45 = xmmword_1B5AE2110;
  v47 = 1;
  TWord::getTokenName(a3, &v44);
  v11 = *(this + 1);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v11 + 5616));
  if (*(v11 + TParam::getValidConfig((v11 + 5616), ActiveConfigHandle) + 5768) != 1)
  {
    goto LABEL_43;
  }

  v13 = *(this + 1);
  v14 = TParam::getActiveConfigHandle((v13 + 5120));
  if ((*(v13 + TParam::getValidConfig((v13 + 5120), v14) + 5272) & 1) == 0)
  {
    v15 = *(this + 3);
    if (v15)
    {
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v16 = v44;
          --*(&v45 + 1);
        }

        else
        {
          v16 = v44;
          if (v45)
          {
            v44[v45 - 1] = 0;
          }
        }
      }

      else
      {
        v16 = v44;
        v44[*(&v45 + 1)] = 0;
      }

      if (TRegExp::match(v15, v16, 0))
      {
        goto LABEL_50;
      }
    }
  }

  if (a4)
  {
    v17 = *(this + 5);
    if (v17)
    {
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v18 = v44;
          --*(&v45 + 1);
        }

        else
        {
          v18 = v44;
          if (v45)
          {
            v44[v45 - 1] = 0;
          }
        }
      }

      else
      {
        v18 = v44;
        v44[*(&v45 + 1)] = 0;
      }

      if (TRegExp::match(v17, v18, 0))
      {
        goto LABEL_50;
      }
    }

    if (a5)
    {
LABEL_26:
      v19 = *(this + 4);
      if (v19)
      {
        if (*(&v45 + 1) < v45)
        {
          v20 = v44;
          v44[*(&v45 + 1)] = 0;
          goto LABEL_42;
        }

        if (v47)
        {
LABEL_36:
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v20 = v44;
          --*(&v45 + 1);
          goto LABEL_42;
        }

        v20 = v44;
        if (v45)
        {
          v44[v45 - 1] = 0;
        }

LABEL_42:
        if (TRegExp::match(v19, v20, 0))
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (a4)
    {
      goto LABEL_43;
    }
  }

  else if (a5)
  {
    goto LABEL_26;
  }

  v19 = *(this + 6);
  if (v19)
  {
    if (*(&v45 + 1) < v45)
    {
      v20 = v44;
      v44[*(&v45 + 1)] = 0;
      goto LABEL_42;
    }

    if (v47)
    {
      goto LABEL_36;
    }

    v20 = v44;
    if (v45)
    {
      v44[v45 - 1] = 0;
    }

    goto LABEL_42;
  }

LABEL_43:
  v21 = *(this + 1);
  v22 = TParam::getActiveConfigHandle((v21 + 5368));
  if (*(v21 + TParam::getValidConfig((v21 + 5368), v22) + 5520) != 1 || a5 == 0)
  {
    goto LABEL_51;
  }

  v24 = **a2;
  {
    operator new();
  }

  isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v24);
  v26 = *v44;
  {
    operator new();
  }

  if (isUpper == TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v26))
  {
LABEL_51:
    v27 = *(this + 1);
    v28 = TParam::getActiveConfigHandle((v27 + 6112));
    v29 = *(v27 + TParam::getValidConfig((v27 + 6112), v28) + 6264);
    v10 = 1;
    if (v29 != 1 || a5 == 0)
    {
      goto LABEL_98;
    }

    v40 = v42;
    v41 = xmmword_1B5AE2110;
    v43 = 1;
    TWord::getCategoryTag(a2, &v40);
    v36 = v38;
    v37 = xmmword_1B5AE2110;
    v39 = 1;
    TWord::getCategoryTag(a3, &v36);
    if (*(&v37 + 1) >= v37)
    {
      if (v39)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v36, *(&v37 + 1), &v48, 1uLL);
        v31 = v36;
        --*(&v37 + 1);
      }

      else
      {
        v31 = v36;
        if (v37)
        {
          v36[v37 - 1] = 0;
        }
      }
    }

    else
    {
      v31 = v36;
      v36[*(&v37 + 1)] = 0;
    }

    if (!wcscmp(v31, dword_1B5AE556C))
    {
      goto LABEL_92;
    }

    v32 = *(&v41 + 1);
    if (*(&v41 + 1) >= v41)
    {
      if (v43)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v40, *(&v41 + 1), &v48, 1uLL);
        v33 = v40;
        v32 = --*(&v41 + 1);
      }

      else
      {
        v33 = v40;
        if (v41)
        {
          v40[v41 - 1] = 0;
        }
      }
    }

    else
    {
      v33 = v40;
      v40[*(&v41 + 1)] = 0;
    }

    if (!wcscmp(v33, dword_1B5AE556C))
    {
      goto LABEL_92;
    }

    if (v32 >= v41)
    {
      if (v43)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v40, v32, &v48, 1uLL);
        v33 = v40;
        --*(&v41 + 1);
      }

      else if (v41)
      {
        v33[v41 - 1] = 0;
      }
    }

    else
    {
      v33[v32] = 0;
    }

    if (*(&v37 + 1) >= v37)
    {
      if (v39)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v36, *(&v37 + 1), &v48, 1uLL);
        v34 = v36;
        --*(&v37 + 1);
      }

      else
      {
        v34 = v36;
        if (v37)
        {
          v36[v37 - 1] = 0;
        }
      }
    }

    else
    {
      v34 = v36;
      v36[*(&v37 + 1)] = 0;
    }

    if (!wcsncmp(v33, v34, 2uLL))
    {
LABEL_92:
      if (v39 == 1 && v36 != v38 && v36)
      {
        MEMORY[0x1B8C85310]();
      }

      if (v43 == 1 && v40 != v42 && v40)
      {
        MEMORY[0x1B8C85310]();
      }

      goto LABEL_98;
    }

    if (v39 == 1 && v34 != v38 && v34)
    {
      MEMORY[0x1B8C85310](v34, 0x1000C8052888210);
    }

    if (v43 == 1 && v40 != v42 && v40)
    {
      MEMORY[0x1B8C85310]();
    }
  }

LABEL_50:
  v10 = 0;
LABEL_98:
  if (v47 == 1 && v44 != v46 && v44)
  {
    MEMORY[0x1B8C85310]();
  }

  return v10;
}

void sub_1B51F3C90(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0xC70]) == 1)
  {
    v4 = STACK[0x858];
    if (STACK[0x858] != v2)
    {
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TDecompounder::decompound(TDecompounder *this, const TWord *a2, TFsa *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v124 = *MEMORY[0x1E69E9840];
  v116 = v118;
  v117 = xmmword_1B5AE2110;
  v119 = 1;
  TWord::getWrittenForm(v6, &v116);
  WordSpec = TWord::getWordSpec(v7);
  v112 = v114;
  v113 = xmmword_1B5AE2110;
  v115 = 1;
  v9 = TStringParam::get((v8[1] + 10736));
  TBuffer<wchar_t>::assign(&v112, v9);
  *(v112 + 70) = 48;
  v120.__vftable = 0;
  std::vector<TState *>::vector[abi:ne200100](&v110, *(&v117 + 1) + 1);
  v86 = v7;
  v10 = TFsa::newState(v5, 0);
  *v110 = v10;
  TFsa::addExtremity(v5, *v110, 0);
  v11 = *(&v117 + 1);
  if (*(&v117 + 1))
  {
    v12 = 0;
    while (1)
    {
      v87 = v12;
      v109 = *(v110 + v12);
      if (!v109)
      {
        goto LABEL_107;
      }

      v105 = v107;
      v106 = xmmword_1B5AE2110;
      v108 = 1;
      if (v11 >= v117)
      {
        if (v119)
        {
          LODWORD(v120.__vftable) = 0;
          TBuffer<wchar_t>::insert(&v116, v11, &v120, 1uLL);
          v13 = v116;
          --*(&v117 + 1);
        }

        else
        {
          v13 = v116;
          if (v117)
          {
            *&v116[4 * v117 - 4] = 0;
          }
        }
      }

      else
      {
        v13 = v116;
        *&v116[4 * v11] = 0;
      }

      TBuffer<wchar_t>::assign(&v105, &v13[4 * v87]);
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v14 = v8[1];
      ActiveConfigHandle = TParam::getActiveConfigHandle((v14 + 5120));
      if (*(v14 + TParam::getValidConfig((v14 + 5120), ActiveConfigHandle) + 5272) != 1 || (v16 = v8[2]) == 0 || !*(v16 + 25))
      {
        v93 = *v8;
        if (*(&v106 + 1) >= v106)
        {
          if (v108)
          {
            LODWORD(v120.__vftable) = 0;
            TBuffer<wchar_t>::insert(&v105, *(&v106 + 1), &v120, 1uLL);
            v22 = v105;
            --*(&v106 + 1);
          }

          else
          {
            v22 = v105;
            if (v106)
            {
              v105[v106 - 1] = 0;
            }
          }
        }

        else
        {
          v22 = v105;
          v105[*(&v106 + 1)] = 0;
        }

        v23 = v8[1];
        v24 = TParam::getActiveConfigHandle((v23 + 16456));
        v25 = *(v23 + TParam::getValidConfig((v23 + 16456), v24) + 4154);
        v26 = v8[1];
        v27 = TParam::getActiveConfigHandle((v26 + 16104));
        v28 = *(v26 + TParam::getValidConfig((v26 + 16104), v27) + 4066);
        if (*(&v113 + 1) >= v113)
        {
          if (v115)
          {
            LODWORD(v120.__vftable) = 0;
            TBuffer<wchar_t>::insert(&v112, *(&v113 + 1), &v120, 1uLL);
            v29 = v112;
            --*(&v113 + 1);
          }

          else
          {
            v29 = v112;
            if (v113)
            {
              *&v112[4 * v113 - 4] = 0;
            }
          }
        }

        else
        {
          v29 = v112;
          *&v112[4 * *(&v113 + 1)] = 0;
        }

        v120.__vftable = v122;
        v121 = xmmword_1B5AE2110;
        v123 = 1;
        v30 = *v22;
        if (*v22)
        {
          v31 = v22 + 1;
          do
          {
            LODWORD(v99) = v30;
            TBuffer<wchar_t>::insert(&v120, *(&v121 + 1), &v99, 1uLL);
            if (*(&v121 + 1) >= v121)
            {
              if (v123)
              {
                LODWORD(v99) = 0;
                TBuffer<wchar_t>::insert(&v120, *(&v121 + 1), &v99, 1uLL);
                v32 = v120.__vftable;
                --*(&v121 + 1);
              }

              else
              {
                v32 = v120.__vftable;
                if (v121)
                {
                  *(v120.__vftable + v121 - 1) = 0;
                }
              }
            }

            else
            {
              v32 = v120.__vftable;
              *(&v120.~exception + *(&v121 + 1)) = 0;
            }

            HeadClonesCollated = TLexicon::findHeadClonesCollated(v93, v32, v29, v25, v28, &v102);
            v34 = *v31++;
            v30 = v34;
          }

          while (((v34 != 0) & HeadClonesCollated) != 0);
          if ((v123 & 1) != 0 && v120.__vftable != v122 && v120.__vftable)
          {
            MEMORY[0x1B8C85310]();
          }
        }

        goto LABEL_44;
      }

      v17 = *(v16 + 19);
      v18 = *(v16 + 20);
      if (v17 != v18)
      {
        while (!*v17)
        {
          if (++v17 == v18)
          {
            v17 = v18;
            break;
          }
        }
      }

      v90 = *v17;
      v92 = *v8;
      v19 = *(&v106 + 1);
      v20 = v106;
      if (*(&v106 + 1) >= v106)
      {
        if (v108)
        {
          LODWORD(v99) = 0;
          TBuffer<wchar_t>::insert(&v105, *(&v106 + 1), &v99, 1uLL);
          v20 = v106;
          v19 = --*(&v106 + 1);
          v21 = v105;
        }

        else
        {
          v21 = v105;
          if (!v106)
          {
            goto LABEL_119;
          }

          v105[v106 - 1] = 0;
        }
      }

      else
      {
        v21 = v105;
        v105[*(&v106 + 1)] = 0;
      }

      if (v19 < v20)
      {
        break;
      }

      if ((v108 & 1) == 0)
      {
        if (v20)
        {
          v21[v20 - 1] = 0;
        }

        goto LABEL_119;
      }

      LODWORD(v99) = 0;
      TBuffer<wchar_t>::insert(&v105, v19, &v99, 1uLL);
      v64 = v105;
      --*(&v106 + 1);
LABEL_120:
      v65 = v8[1];
      v66 = TParam::getActiveConfigHandle((v65 + 16456));
      v67 = *(v65 + TParam::getValidConfig((v65 + 16456), v66) + 4154);
      v68 = v8[1];
      v69 = TParam::getActiveConfigHandle((v68 + 16104));
      ValidConfig = TParam::getValidConfig((v68 + 16104), v69);
      fsaSearch(v92, v90, v21, v64, &v120, &v120, 0, v67, *(v68 + ValidConfig + 4066), &v102);
LABEL_44:
      v99 = 0;
      v100 = 0;
      v101 = 0;
      std::vector<TVertex *>::push_back[abi:ne200100](&v99, &v109);
      v35 = v102;
      if (v103 != v102)
      {
        for (i = 0; i < (v103 - v102) >> 5; ++i)
        {
          v37 = &v35[32 * i];
          v39 = *v37;
          v38 = *(v37 + 1);
          v40 = v8[1];
          v41 = TParam::getActiveConfigHandle((v40 + 5368));
          if (*(v40 + TParam::getValidConfig((v40 + 5368), v41) + 5520) == 1)
          {
            *(v102 + 4 * i + 2) &= 0xFFFFFFFFFFFFFFBCLL;
          }

          v42 = *TWord::getOptionalTagBits(v39);
          v91 = v38 + v87;
          if ((v42 & 0x80) != 0)
          {
            if (v87 && *(&v117 + 1) != v91)
            {
              goto LABEL_60;
            }
          }

          else if (TDecompounder::isValidWord(v8, v86, v39, v87 == 0, *(&v117 + 1) == v38 + v87))
          {
            v43 = v8[1];
            v44 = TParam::getActiveConfigHandle((v43 + 5864));
            if (*(v43 + TParam::getValidConfig((v43 + 5864), v44) + 6016) != 1 || WordSpec == 0)
            {
              if (!*(v110 + v91))
              {
                v46 = TFsa::newState(v5, 0);
                *(v110 + v91) = v46;
              }

              operator new();
            }

LABEL_60:
            if (TWord::getWordSpec(v39) && v100 != v99)
            {
              v47 = 0;
              v48 = (v100 - v99) >> 3;
              if (v48 <= 1)
              {
                v48 = 1;
              }

              v88 = v48;
              while (1)
              {
                v49 = *(v99 + v47);
                v97 = 0;
                v98 = 0;
                __p = 0;
                v89 = v49;
                v50 = *(v49 + 16);
                if (!v50)
                {
                  goto LABEL_91;
                }

                do
                {
                  if ((v42 & 0x80) != 0 && (*TWord::getOptionalTagBits(*(*v50 + 8)) & 0x80) != 0)
                  {
                    v53 = v5;
                    v54 = v97;
                    if (v97 >= v98)
                    {
                      v56 = (v97 - __p) >> 3;
                      if ((v56 + 1) >> 61)
                      {
                        std::vector<int>::__throw_length_error[abi:ne200100]();
                      }

                      v57 = (v98 - __p) >> 2;
                      if (v57 <= v56 + 1)
                      {
                        v57 = v56 + 1;
                      }

                      if (v98 - __p >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v58 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v58 = v57;
                      }

                      if (v58)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&__p, v58);
                      }

                      *(8 * v56) = v50;
                      v55 = 8 * v56 + 8;
                      v59 = (8 * v56 - (v97 - __p));
                      memcpy(v59, __p, v97 - __p);
                      v60 = __p;
                      __p = v59;
                      v97 = v55;
                      v98 = 0;
                      if (v60)
                      {
                        operator delete(v60);
                      }
                    }

                    else
                    {
                      *v97 = v50;
                      v55 = (v54 + 8);
                    }

                    v97 = v55;
                    v5 = v53;
                  }

                  else
                  {
                    v51 = v8[1];
                    v52 = TParam::getActiveConfigHandle((v51 + 5864));
                    if (*(v51 + TParam::getValidConfig((v51 + 5864), v52) + 6016) == 1)
                    {
                      tknPrintf("Error: pron predictor is not supported during decompounding in Tennessee since pronunciations were not ported over (see rdar://91574959).\n");
                      std::string::basic_string[abi:ne200100]<0>(v94, "");
                      TException::TException(&v120, v94);
                      v120.__vftable = &unk_1F2D00400;
                      if (v122[7] >= 0)
                      {
                        v83 = &v121;
                      }

                      else
                      {
                        v83 = v121;
                      }

                      conditionalAssert(v83, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/decompounder.cpp", 769);
                      TException::~TException(&v120);
                      if (v95 < 0)
                      {
                        operator delete(v94[0]);
                      }

                      exception = __cxa_allocate_exception(0x20uLL);
                      std::string::basic_string[abi:ne200100]<0>(&v120, "");
                      TException::TException(exception, &v120);
                      *exception = &unk_1F2D00400;
                    }
                  }

                  v50 = v50[4];
                }

                while (v50);
                if (__p == v97)
                {
                  goto LABEL_91;
                }

                if (TState::getTransCount(v89, 0) != (v97 - __p) >> 3)
                {
                  break;
                }

                if (__p)
                {
                  v97 = __p;
                  operator delete(__p);
                }

                if (++v47 == v88)
                {
                  goto LABEL_97;
                }
              }

              v120.__vftable = TFsa::newState(v5, 0);
              std::vector<TVertex *>::push_back[abi:ne200100](&v99, &v120);
              v61 = __p;
              if (v97 != __p)
              {
                v62 = 0;
                do
                {
                  TFsa::moveTrans(v5, v61[v62], *(v61[v62] + 24), *(v100 - 1));
                  ++v62;
                  v61 = __p;
                }

                while (v62 < (v97 - __p) >> 3);
              }

              if (*(v89 + 24))
              {
                operator new();
              }

LABEL_91:
              if (!*(v110 + v91))
              {
                v63 = TFsa::newState(v5, 0);
                *(v110 + v91) = v63;
              }

              operator new();
            }
          }

LABEL_97:
          v35 = v102;
        }
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
        v35 = v102;
      }

      if (v35)
      {
        v103 = v35;
        operator delete(v35);
      }

      if (v108 == 1 && v105 != v107 && v105)
      {
        MEMORY[0x1B8C85310]();
      }

      v11 = *(&v117 + 1);
LABEL_107:
      v12 = v87 + 1;
      if (v87 + 1 >= v11)
      {
        goto LABEL_121;
      }
    }

    v21[v19] = 0;
LABEL_119:
    v64 = v21;
    goto LABEL_120;
  }

LABEL_121:
  v71 = *(v111 - 1);
  if (v71)
  {
    TFsa::addExtremity(v5, v71, 1u);
  }

  std::vector<unsigned long>::vector[abi:ne200100](&v120, (v5[7] - v5[6]) >> 3);
  v105 = 0;
  v106 = 0uLL;
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(&v105, v5[5]);
  v73 = v5[6];
  v72 = v5[7];
  if (v73 != v72)
  {
    while (!*v73)
    {
      if (++v73 == v72)
      {
        goto LABEL_135;
      }
    }
  }

  if (v73 != v72)
  {
    do
    {
      v74 = *v73;
      v102 = v74;
      if (!v74[3] && v74[5] == -1)
      {
        std::vector<TVertex *>::push_back[abi:ne200100](&v105, &v102);
        v74 = v102;
      }

      TransCount = TState::getTransCount(v74, 1u);
      *(&v120.~exception + *v102) = TransCount;
      v76 = v73 + 1;
      do
      {
        v73 = v76;
        if (v76 == v72)
        {
          break;
        }

        ++v76;
      }

      while (!*v73);
    }

    while (v73 != v5[7]);
  }

LABEL_135:
  v77 = v105;
  if (v106 != v105)
  {
    v78 = 0;
    do
    {
      v79 = *&v77[2 * v78];
      for (j = *(v79 + 16); j; j = j[4])
      {
        v81 = j[3];
        v82 = v120.__vftable;
        --*(&v120.~exception + *v81);
        if (!*(&v82->~exception + *v81))
        {
          v102 = v81;
          std::vector<TVertex *>::push_back[abi:ne200100](&v105, &v102);
        }

        if (*j)
        {
          MEMORY[0x1B8C85350](*j, 0x1060C40A1FB9E56);
        }
      }

      TFsa::deleteState(v5, v79);
      ++v78;
      v77 = v105;
    }

    while (v78 < (v106 - v105) >> 3);
  }

  if (v77)
  {
    *&v106 = v77;
    operator delete(v77);
  }

  if (v120.__vftable)
  {
    *&v121 = v120;
    operator delete(v120.__vftable);
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v115 == 1 && v112 != v114 && v112)
  {
    MEMORY[0x1B8C85310]();
  }

  if (v119 == 1 && v116 != v118 && v116)
  {
    MEMORY[0x1B8C85310]();
  }
}

void sub_1B51F4B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = STACK[0xD60];
  if (STACK[0xD60])
  {
    STACK[0xD68] = v38;
    operator delete(v38);
  }

  v39 = STACK[0x508];
  if (STACK[0x508])
  {
    STACK[0x510] = v39;
    operator delete(v39);
  }

  if (LOBYTE(STACK[0x938]) == 1)
  {
    v40 = STACK[0x520];
    if (STACK[0x520] != a11)
    {
      if (v40)
      {
        MEMORY[0x1B8C85310](v40, 0x1000C8052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xD58]) == 1 && STACK[0x940] != a12 && STACK[0x940] != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

void fsaSearch(TAllocator *a1, uint64_t a2, int *a3, int *a4, __int32 *a5, _DWORD *a6, char a7, size_t a8, size_t a9, uint64_t a10)
{
  v15 = a2;
  if (*(a2 + 40) != -1)
  {
    *a6 = 0;
    HeadClone = TLexicon::findHeadClone(a1, a5);
    if (!HeadClone)
    {
      HeadClone = TLexicon::addTempWord(a1, a5, 0, 0, 0);
    }

    v48 = v50;
    v49 = xmmword_1B5AE2110;
    v51 = 1;
    v44 = v46;
    v45 = xmmword_1B5AE2110;
    v47 = 1;
    v42 = HeadClone;
    TWord::getWrittenForm(HeadClone, &v48);
    TBuffer<wchar_t>::resize(&v44, 0);
    TBuffer<wchar_t>::insert(&v44, 0, a3, a4 - a3);
    if (*(&v45 + 1) >= v45)
    {
      if (v47)
      {
        v52[0] = 0;
        TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), v52, 1uLL);
        v18 = v44;
        --*(&v45 + 1);
      }

      else
      {
        v18 = v44;
        if (v45)
        {
          v44[v45 - 1] = 0;
        }
      }
    }

    else
    {
      v18 = v44;
      v44[*(&v45 + 1)] = 0;
    }

    if (*(&v49 + 1) >= v49)
    {
      if (v51)
      {
        v52[0] = 0;
        TBuffer<wchar_t>::insert(&v48, *(&v49 + 1), v52, 1uLL);
        v19 = v48;
        --*(&v49 + 1);
      }

      else
      {
        v19 = v48;
        if (v49)
        {
          v48[v49 - 1] = 0;
        }
      }
    }

    else
    {
      v19 = v48;
      v48[*(&v49 + 1)] = 0;
    }

    Score = TLexicon::makeScore(a1, v18, v19, a8, a9);
    v41 = v15;
    v22 = *(&v45 + 1);
    v23 = *(a10 + 8);
    v24 = *(a10 + 16);
    if (v23 >= v24)
    {
      v40 = v21;
      v26 = (v23 - *a10) >> 5;
      v27 = v26 + 1;
      if ((v26 + 1) >> 59)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v24 - *a10;
      if (v28 >> 4 > v27)
      {
        v27 = v28 >> 4;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFE0)
      {
        v29 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<TLexiconMatch>>(a10, v29);
      }

      v30 = 32 * v26;
      *v30 = v42;
      *(v30 + 8) = v22;
      *(v30 + 16) = Score;
      *(v30 + 24) = v40;
      v25 = 32 * v26 + 32;
      v31 = *(a10 + 8) - *a10;
      v32 = 32 * v26 - v31;
      memcpy((v30 - v31), *a10, v31);
      v33 = *a10;
      *a10 = v32;
      *(a10 + 8) = v25;
      *(a10 + 16) = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v23 = v42;
      *(v23 + 8) = v22;
      *(v23 + 16) = Score;
      v25 = v23 + 32;
      *(v23 + 24) = v21;
    }

    *(a10 + 8) = v25;
    if (v47 == 1 && v44 != v46 && v44)
    {
      MEMORY[0x1B8C85310]();
    }

    v15 = v41;
    if (v51 == 1 && v48 != v50 && v48)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  for (i = *(v15 + 24); i; i = i[5])
  {
    v35 = *i;
    if (*i == 92)
    {
      v36 = 1;
    }

    else
    {
      v36 = a7;
    }

    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v38 = *a4;
      v39 = *(a1 + 32);
      if (!v39)
      {
        goto LABEL_47;
      }

      if (v38 < 0x10000)
      {
        v38 = *(v39 + 4 * v38);
      }

      if (v35 < 0x10000)
      {
        LODWORD(v39) = *(v39 + 4 * v35);
      }

      else
      {
LABEL_47:
        v39 = *i;
      }

      if (v38 != v39)
      {
        continue;
      }

      v37 = 1;
    }

    *a6 = v35;
    fsaSearch(a1, i[2], a3, &a4[v37], a5, a6 + 1);
  }
}

void sub_1B51F5110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (LOBYTE(STACK[0x468]) == 1 && a19 != a14 && a19)
  {
    MEMORY[0x1B8C85310]();
  }

  if (LOBYTE(STACK[0x888]) == 1)
  {
    v20 = STACK[0x470];
    if (STACK[0x470] != a15)
    {
      if (v20)
      {
        MEMORY[0x1B8C85310](v20, 0x1000C8052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TDecompounder::addWords(TDecompounder *this, char **a2, TGraph *a3, TSegmenter *a4)
{
  Segment = TSegmenter::getSegment(a4, a2[2]);
  if (Segment)
  {
    v9 = Segment;
    v10 = *(Segment + 24);
    v11 = v10 > 5;
    v12 = (1 << v10) & 0x2D;
    if (v11 || v12 == 0)
    {
      v72 = v74;
      v73 = xmmword_1B5AE2110;
      v75 = 1;
      TBuffer<wchar_t>::assign(&v72, *Segment);
      v14 = *(v9 + 8);
      if (*(v9 + 24) == 1 && (v15 = *(this + 1), ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 13352)), *(v15 + TParam::getValidConfig((v15 + 13352), ActiveConfigHandle) + 13504) == 1) && *v14)
      {
        v17 = 0;
        do
        {
          v18 = TSegmenter::getSegment(a4, v14);
          v19 = v18;
          if (!v18)
          {
            break;
          }

          if (**v18 != 45)
          {
            break;
          }

          v20 = TSegmenter::getSegment(a4, *(v18 + 8));
          v21 = v20;
          if (!v20)
          {
            break;
          }

          if (*(v20 + 24) != 1)
          {
            break;
          }

          v22 = 0;
          v23 = *v19;
            ;
          }

          TBuffer<wchar_t>::insert(&v72, *(&v73 + 1), v23, v22 - 1);
          v25 = 0;
          v26 = *v21;
            ;
          }

          TBuffer<wchar_t>::insert(&v72, *(&v73 + 1), v26, v25 - 1);
          v14 = *(v21 + 8);
          v17 = 1;
        }

        while (*v14);
      }

      else
      {
        v17 = 0;
      }

      OutEdge = TVertex::getOutEdge(a2);
      if (!OutEdge)
      {
        goto LABEL_30;
      }

      v29 = 0;
LABEL_24:
      v29 |= (*(OutEdge + 64) & 0xC0) == 0;
      while (1)
      {
        OutEdge = *(OutEdge + 8);
        if (!OutEdge)
        {
          break;
        }

        if ((*(OutEdge + 32) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v17 & 1 | ((v29 & 1) == 0) || (v30 = *(this + 1), v31 = TParam::getActiveConfigHandle((v30 + 13104)), *(v30 + TParam::getValidConfig((v30 + 13104), v31) + 13256) == 1))
      {
LABEL_30:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v32 = *this;
        if (*(&v73 + 1) >= v73)
        {
          if (v75)
          {
            v59[0] = 0;
            TBuffer<wchar_t>::insert(&v72, *(&v73 + 1), v59, 1uLL);
            v33 = v72;
            --*(&v73 + 1);
          }

          else
          {
            v33 = v72;
            if (v73)
            {
              v72[v73 - 1] = 0;
            }
          }
        }

        else
        {
          v33 = v72;
          v72[*(&v73 + 1)] = 0;
        }

        v34 = TStringParam::get((*(this + 1) + 10736));
        v35 = *(this + 1);
        v36 = TParam::getActiveConfigHandle((v35 + 16456));
        v37 = *(v35 + 4 * TParam::getValidConfig((v35 + 16456), v36) + 16616);
        v38 = *(this + 1);
        v39 = TParam::getActiveConfigHandle((v38 + 16104));
        ValidConfig = TParam::getValidConfig((v38 + 16104), v39);
        TLexicon::findHeadClonesCollated(v32, v33, v34, v37, *(v38 + 4 * ValidConfig + 16264), &v69);
        if (v69 == v70)
        {
          goto LABEL_44;
        }

        v41 = (v70 - v69) >> 5;
        if (v41 <= 1)
        {
          v41 = 1;
        }

        v42 = v69 + 16;
        while ((*v42 & 0x35) != 0)
        {
          v42 += 32;
          if (!--v41)
          {
            goto LABEL_44;
          }
        }

        v43 = *(v42 - 2);
        if (!v43)
        {
LABEL_44:
          v44 = *this;
          if (*(&v73 + 1) >= v73)
          {
            if (v75)
            {
              v59[0] = 0;
              TBuffer<wchar_t>::insert(&v72, *(&v73 + 1), v59, 1uLL);
              v45 = v72;
              --*(&v73 + 1);
            }

            else
            {
              v45 = v72;
              if (v73)
              {
                v72[v73 - 1] = 0;
              }
            }
          }

          else
          {
            v45 = v72;
            v72[*(&v73 + 1)] = 0;
          }

          v43 = TLexicon::addTempWord(v44, v45, 0, 0, 0);
        }

        TFsa::TFsa(v59);
        TDecompounder::decompound(this, v43, v59);
        if (v60)
        {
          std::vector<TVertex *>::vector[abi:ne200100](__p, (v62 - v61) >> 3);
          v46 = v65;
          if (v65 != v66)
          {
            while (!*v46)
            {
              if (++v46 == v66)
              {
                v46 = v66;
                break;
              }
            }
          }

          *(__p[0] + **v46) = a2;
          v47 = TGraph::addVertex(a3, v14);
          v48 = v67;
          if (v67 != v68)
          {
            while (!*v48)
            {
              if (++v48 == v68)
              {
                v48 = v68;
                break;
              }
            }
          }

          *(__p[0] + **v48) = v47;
          v50 = v61;
          v49 = v62;
          if (v62 != v61)
          {
            v51 = 0;
            do
            {
              if (*(v50 + 8 * v51) && !*(__p[0] + v51))
              {
                v52 = TGraph::addVertex(a3, 0);
                *(__p[0] + v51) = v52;
                v50 = v61;
                v49 = v62;
              }

              ++v51;
            }

            while (v51 < (v49 - v50) >> 3);
          }

          v54 = v63;
          v53 = v64;
          if (v64 != v63)
          {
            v55 = 0;
            do
            {
              v56 = *(v54 + 8 * v55);
              if (v56)
              {
                v57 = *v56;
                TGraph::addEdge(a3, *(__p[0] + **(v56 + 24)), *(__p[0] + **(v56 + 16)), *v56);
                MEMORY[0x1B8C85350](v57, 0x1060C40A1FB9E56);
                v54 = v63;
                v53 = v64;
              }

              ++v55;
            }

            while (v55 < (v53 - v54) >> 3);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        TFsa::~TFsa(v59);
        if (v69)
        {
          v70 = v69;
          operator delete(v69);
        }
      }

      if (v75 == 1 && v72 != v74)
      {
        if (v72)
        {
          MEMORY[0x1B8C85310]();
        }
      }
    }
  }
}

void sub_1B51F5708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  TFsa::~TFsa(&a15);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  if (LOBYTE(STACK[0x540]) == 1 && a46 != a10 && a46 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

const __int32 **std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(const __int32 **result, const __int32 **a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a3;
  v7 = result;
LABEL_2:
  v8 = v7;
LABEL_3:
  v9 = 1 - a4;
  while (1)
  {
    v7 = v8;
    v10 = v9;
    v11 = a2 - v8;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v67 = *(a2 - 1);
        v68 = *v8;
        result = wcscmp(v67, *v8);
        if ((result & 0x80000000) != 0)
        {
          *v8 = v67;
          *(a2 - 1) = v68;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(v8, v8 + 1, v8 + 2, a2 - 1);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(v8, v8 + 1, v8 + 2, v8 + 3);
      v63 = *(a2 - 1);
      v64 = v8[3];
      result = wcscmp(v63, v64);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[3] = v63;
      *(a2 - 1) = v64;
      v65 = v8[2];
      v61 = v8[3];
      result = wcscmp(v61, v65);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[2] = v61;
      v8[3] = v65;
      v66 = v8[1];
      result = wcscmp(v61, v66);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[1] = v61;
      v8[2] = v66;
      goto LABEL_72;
    }

LABEL_11:
    if (v11 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v8, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v8, a2);
      }
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,wchar_t const**>(v8, a2, a2, v5);
      }

      return result;
    }

    v12 = &v8[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v15 = *v12;
      v16 = *v8;
      v17 = wcscmp(*v12, *v7);
      v18 = wcscmp(v14, v15);
      if (v17 < 0)
      {
        if (v18 < 0)
        {
          *v7 = v14;
        }

        else
        {
          *v7 = v15;
          *v12 = v16;
          v27 = *(a2 - 1);
          if ((wcscmp(v27, v16) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          *v12 = v27;
        }

        *(a2 - 1) = v16;
      }

      else if (v18 < 0)
      {
        *v12 = v14;
        *(a2 - 1) = v15;
        v19 = *v12;
        v20 = *v7;
        if (wcscmp(*v12, *v7) < 0)
        {
          *v7 = v19;
          *v12 = v20;
        }
      }

LABEL_30:
      v29 = v12 - 1;
      v30 = *(v12 - 1);
      v31 = v7[1];
      v32 = wcscmp(v30, v31);
      v33 = *(a2 - 2);
      v34 = wcscmp(v33, v30);
      if (v32 < 0)
      {
        if (v34 < 0)
        {
          v7[1] = v33;
        }

        else
        {
          v7[1] = v30;
          *v29 = v31;
          v37 = *(a2 - 2);
          if ((wcscmp(v37, v31) & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          *v29 = v37;
        }

        *(a2 - 2) = v31;
      }

      else if (v34 < 0)
      {
        *v29 = v33;
        *(a2 - 2) = v30;
        v35 = *v29;
        v36 = v7[1];
        if (wcscmp(*v29, v36) < 0)
        {
          v7[1] = v35;
          *v29 = v36;
        }
      }

LABEL_41:
      v40 = v12[1];
      v39 = v12 + 1;
      v38 = v40;
      v41 = v7[2];
      v42 = wcscmp(v40, v41);
      v43 = *(a2 - 3);
      v44 = wcscmp(v43, v40);
      if (v42 < 0)
      {
        if (v44 < 0)
        {
          v7[2] = v43;
        }

        else
        {
          v7[2] = v38;
          *v39 = v41;
          v47 = *(a2 - 3);
          if ((wcscmp(v47, v41) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          *v39 = v47;
        }

        *(a2 - 3) = v41;
      }

      else if (v44 < 0)
      {
        *v39 = v43;
        *(a2 - 3) = v38;
        v45 = *v39;
        v46 = v7[2];
        if (wcscmp(*v39, v46) < 0)
        {
          v7[2] = v45;
          *v39 = v46;
        }
      }

LABEL_50:
      v48 = *v13;
      v49 = *v29;
      v50 = wcscmp(*v13, *v29);
      v51 = *v39;
      v52 = wcscmp(*v39, v48);
      if (v50 < 0)
      {
        if ((v52 & 0x80000000) == 0)
        {
          *v29 = v48;
          *v13 = v49;
          v29 = v13;
          v48 = v51;
          if ((wcscmp(v51, v49) & 0x80000000) == 0)
          {
            v48 = v49;
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((v52 & 0x80000000) == 0)
        {
LABEL_58:
          v53 = *v7;
          *v7 = v48;
          *v13 = v53;
          v5 = a3;
          goto LABEL_59;
        }

        *v13 = v51;
        *v39 = v48;
        v39 = v13;
        v48 = v49;
        if ((wcscmp(v51, v49) & 0x80000000) == 0)
        {
          v48 = v51;
          goto LABEL_58;
        }
      }

      *v29 = v51;
      *v39 = v49;
      goto LABEL_58;
    }

    v21 = *v8;
    v22 = *v12;
    v23 = wcscmp(*v7, *v12);
    v24 = wcscmp(v14, v21);
    if (v23 < 0)
    {
      if (v24 < 0)
      {
        *v12 = v14;
        goto LABEL_38;
      }

      *v12 = v21;
      *v7 = v22;
      v28 = *(a2 - 1);
      if (wcscmp(v28, v22) < 0)
      {
        *v7 = v28;
LABEL_38:
        *(a2 - 1) = v22;
      }
    }

    else if (v24 < 0)
    {
      *v7 = v14;
      *(a2 - 1) = v21;
      v25 = *v7;
      v26 = *v12;
      if (wcscmp(*v7, *v12) < 0)
      {
        *v12 = v25;
        *v7 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && (wcscmp(*(v7 - 1), *v7) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(v7, a2);
      v8 = result;
      goto LABEL_66;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(v7, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_64;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v7, v54);
    v8 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v54 + 1, a2);
    if (result)
    {
      a4 = -v10;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v56)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(v7, v54, v5, -v10, a5 & 1);
      v8 = v54 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v10;
      goto LABEL_3;
    }
  }

  v57 = *v8;
  v58 = v8[1];
  v59 = wcscmp(v58, *v8);
  v60 = *(a2 - 1);
  result = wcscmp(v60, v58);
  if ((v59 & 0x80000000) == 0)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v7[1] = v60;
    *(a2 - 1) = v58;
    v61 = v7[1];
LABEL_72:
    v62 = *v7;
    result = wcscmp(v61, *v7);
    if ((result & 0x80000000) != 0)
    {
      *v7 = v61;
      v7[1] = v62;
    }

    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    *v7 = v60;
  }

  else
  {
    *v7 = v58;
    v7[1] = v57;
    v69 = *(a2 - 1);
    result = wcscmp(v69, v57);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v7[1] = v69;
  }

  *(a2 - 1) = v57;
  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(const __int32 **a1, const __int32 **a2, const __int32 **a3, const __int32 **a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = wcscmp(*a2, *a1);
  v11 = *a3;
  v12 = wcscmp(*a3, v8);
  if (v10 < 0)
  {
    if (v12 < 0)
    {
      *a1 = v11;
    }

    else
    {
      *a1 = v8;
      *a2 = v9;
      v8 = *a3;
      if ((wcscmp(*a3, v9) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      *a2 = v8;
    }

    *a3 = v9;
    v8 = v9;
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    *a2 = v11;
    *a3 = v8;
    v13 = *a2;
    v14 = *a1;
    if (wcscmp(*a2, *a1) < 0)
    {
      *a1 = v13;
      *a2 = v14;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v15 = *a4;
  result = wcscmp(*a4, v8);
  if ((result & 0x80000000) != 0)
  {
    *a3 = v15;
    *a4 = v8;
    v17 = *a3;
    v18 = *a2;
    result = wcscmp(*a3, *a2);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *a1;
      result = wcscmp(*a2, *a1);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

const __int32 **std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **result, const __int32 **a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1;
    if (result + 1 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v4;
        result = wcscmp(v7, v8);
        if ((result & 0x80000000) != 0)
        {
          v9 = v5;
          while (1)
          {
            *(v3 + v9 + 8) = v8;
            if (!v9)
            {
              break;
            }

            v8 = *(v3 + v9 - 8);
            result = wcscmp(v7, v8);
            v9 -= 8;
            if ((result & 0x80000000) == 0)
            {
              v10 = (v3 + v9 + 8);
              goto LABEL_10;
            }
          }

          v10 = v3;
LABEL_10:
          *v10 = v7;
        }

        v4 = v6 + 1;
        v5 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

const __int32 **std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **result, const __int32 **a2)
{
  if (result != a2)
  {
    v3 = result;
    while (v3 + 1 != a2)
    {
      v5 = *v3;
      v4 = v3[1];
      ++v3;
      result = wcscmp(v4, v5);
      if ((result & 0x80000000) != 0)
      {
        v6 = v3;
        do
        {
          *v6 = v5;
          v5 = *(v6 - 2);
          result = wcscmp(v4, v5);
          --v6;
        }

        while ((result & 0x80000000) != 0);
        *v6 = v4;
      }
    }
  }

  return result;
}

const __int32 **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(const __int32 **a1, const __int32 **a2)
{
  v2 = a2;
  v4 = *a1;
  if (wcscmp(*a1, *(a2 - 1)) < 0)
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while ((wcscmp(v4, v7) & 0x80000000) == 0);
  }

  else
  {
    v5 = a1 + 1;
    do
    {
      v6 = v5;
      if (v5 >= v2)
      {
        break;
      }

      ++v5;
    }

    while ((wcscmp(v4, *v6) & 0x80000000) == 0);
  }

  if (v6 < v2)
  {
    do
    {
      v8 = *--v2;
    }

    while (wcscmp(v4, v8) < 0);
  }

  if (v6 < v2)
  {
    v9 = *v6;
    v10 = *v2;
    do
    {
      *v6 = v10;
      *v2 = v9;
      do
      {
        v11 = v6[1];
        ++v6;
        v9 = v11;
      }

      while ((wcscmp(v4, v11) & 0x80000000) == 0);
      do
      {
        v12 = *--v2;
        v10 = v12;
      }

      while (wcscmp(v4, v12) < 0);
    }

    while (v6 < v2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v4;
  return v6;
}

const __int32 **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(const __int32 **a1, const __int32 **a2)
{
  v4 = 0;
  v5 = *a1;
  do
  {
    v6 = a1[++v4];
  }

  while (wcscmp(v6, v5) < 0);
  v7 = &a1[v4];
  v8 = &a1[v4 - 1];
  if (v4 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *--a2;
    }

    while ((wcscmp(v10, v5) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v9 = *--a2;
    }

    while ((wcscmp(v9, v5) & 0x80000000) == 0);
  }

  if (v7 < a2)
  {
    v11 = *a2;
    v12 = &a1[v4];
    v13 = a2;
    do
    {
      *v12 = v11;
      *v13 = v6;
      do
      {
        v14 = v12[1];
        ++v12;
        v6 = v14;
      }

      while (wcscmp(v14, v5) < 0);
      do
      {
        v15 = *--v13;
        v11 = v15;
      }

      while ((wcscmp(v15, v5) & 0x80000000) == 0);
    }

    while (v12 < v13);
    v8 = v12 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v5;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **a1, const __int32 **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *a1;
        v13 = a1[1];
        v14 = wcscmp(v13, *a1);
        v15 = *(a2 - 1);
        v16 = wcscmp(v15, v13);
        if (v14 < 0)
        {
          if (v16 < 0)
          {
            *a1 = v15;
          }

          else
          {
            *a1 = v13;
            a1[1] = v12;
            v28 = *(a2 - 1);
            if ((wcscmp(v28, v12) & 0x80000000) == 0)
            {
              return 1;
            }

            a1[1] = v28;
          }

          *(a2 - 1) = v12;
          return 1;
        }

        if ((v16 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v15;
        *(a2 - 1) = v13;
        v9 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v7 = *(a2 - 1);
        v8 = a1[3];
        if ((wcscmp(v7, v8) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[3] = v7;
        *(a2 - 1) = v8;
        v10 = a1[2];
        v9 = a1[3];
        if ((wcscmp(v9, v10) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[2] = v9;
        a1[3] = v10;
        v11 = a1[1];
        if ((wcscmp(v9, v11) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v9;
        a1[2] = v11;
        break;
      default:
        goto LABEL_18;
    }

    v17 = *a1;
    if (wcscmp(v9, *a1) < 0)
    {
      *a1 = v9;
      a1[1] = v17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (wcscmp(v5, *a1) < 0)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_18:
  v19 = a1 + 1;
  v18 = a1[1];
  v20 = *a1;
  v21 = wcscmp(v18, *a1);
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = wcscmp(v22, v18);
  if (v21 < 0)
  {
    v26 = a1;
    v27 = a1 + 2;
    if (v24 < 0)
    {
      goto LABEL_28;
    }

    *a1 = v18;
    a1[1] = v20;
    v29 = wcscmp(v22, v20);
    v26 = a1 + 1;
    v27 = a1 + 2;
    if (v29 < 0)
    {
      goto LABEL_28;
    }
  }

  else if (v24 < 0)
  {
    *v19 = v22;
    *v23 = v18;
    v25 = wcscmp(v22, v20);
    v26 = a1;
    v27 = a1 + 1;
    if (v25 < 0)
    {
LABEL_28:
      *v26 = v22;
      *v27 = v20;
    }
  }

  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  for (i = 24; ; i += 8)
  {
    v33 = *v30;
    v34 = *v23;
    if (wcscmp(*v30, *v23) < 0)
    {
      v35 = i;
      while (1)
      {
        *(a1 + v35) = v34;
        v36 = v35 - 8;
        if (v35 == 8)
        {
          break;
        }

        v34 = *(a1 + v35 - 16);
        v37 = wcscmp(v33, v34);
        v35 = v36;
        if ((v37 & 0x80000000) == 0)
        {
          v38 = (a1 + v36);
          goto LABEL_37;
        }
      }

      v38 = a1;
LABEL_37:
      *v38 = v33;
      if (++v31 == 8)
      {
        break;
      }
    }

    v23 = v30++;
    if (v30 == a2)
    {
      return 1;
    }
  }

  return v30 + 1 == a2;
}

const __int32 **std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,wchar_t const**>(const __int32 **a1, const __int32 **a2, const __int32 **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8, v11--);
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
        v13 = *v12;
        v14 = *a1;
        if (wcscmp(*v12, *a1) < 0)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(uint64_t result, uint64_t a2, uint64_t a3, const __int32 **a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v8 = a3;
      v9 = (a4 - result) >> 2;
      v10 = v9 + 1;
      v11 = (result + 8 * (v9 + 1));
      v12 = v9 + 2;
      v13 = *v11;
      if (v9 + 2 < a3)
      {
        v14 = v11[1];
        if (wcscmp(*v11, v14) < 0)
        {
          v13 = v14;
          ++v11;
          v10 = v12;
        }
      }

      v15 = *v5;
      result = wcscmp(v13, *v5);
      if ((result & 0x80000000) == 0)
      {
        v21 = v8;
        do
        {
          v16 = v11;
          *v5 = v13;
          if (v7 < v10)
          {
            break;
          }

          v17 = (2 * v10) | 1;
          v11 = (v6 + 8 * v17);
          v18 = 2 * v10 + 2;
          v13 = *v11;
          if (v18 < v8)
          {
            v19 = v11[1];
            v20 = wcscmp(*v11, v19);
            if (v20 < 0)
            {
              v13 = v19;
              ++v11;
            }

            v8 = v21;
            if (v20 < 0)
            {
              v17 = v18;
            }
          }

          result = wcscmp(v13, v15);
          v5 = v16;
          v10 = v17;
        }

        while ((result & 0x80000000) == 0);
        *v16 = v15;
      }
    }
  }

  return result;
}

const __int32 **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[v5];
    v8 = v7 + 1;
    v9 = v7[1];
    v10 = (2 * v5) | 1;
    v11 = 2 * v5 + 2;
    if (v11 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v14 = v7[2];
      v13 = v7 + 2;
      v12 = v14;
      if (wcscmp(v9, v14) >= 0)
      {
        v5 = v10;
      }

      else
      {
        v9 = v12;
        v8 = v13;
        v5 = v11;
      }
    }

    *a1 = v9;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 8 * (v4 >> 1));
    v8 = *v7;
    v10 = (a2 - 8);
    v9 = *(a2 - 8);
    result = wcscmp(*v7, v9);
    if ((result & 0x80000000) != 0)
    {
      do
      {
        v11 = v7;
        *v10 = v8;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 8 * v6);
        v8 = *v7;
        result = wcscmp(*v7, v9);
        v10 = v11;
      }

      while ((result & 0x80000000) != 0);
      *v11 = v9;
    }
  }

  return result;
}

uint64_t std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::find<TState *>(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = TFsaBuilder::TStateCompare::operator()(a1, *(v3 + 32), *a2);
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
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || TFsaBuilder::TStateCompare::operator()(a1, *a2, *(v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t TFsaBuilder::TStateCompare::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a3 + 40);
  if ((v3 != -1) == (v4 != -1))
  {
    return std::__lexicographical_compare[abi:ne200100]<TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,std::__identity,std::__identity,TFsaBuilder::TTransCompare>(*(a2 + 24), 1u, 0, 1, *(a3 + 24), 1u, 0, 1);
  }

  return v4 != -1 && v3 == -1;
}

uint64_t std::__lexicographical_compare[abi:ne200100]<TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,std::__identity,std::__identity,TFsaBuilder::TTransCompare>(unint64_t *a1, unsigned int a2, unint64_t *a3, int a4, unint64_t *a5, unsigned int a6, unint64_t *a7, int a8)
{
  if (a6 == a8 && a5 == a7)
  {
    return 0;
  }

  while (a2 != a4 || a1 != a3)
  {
    v9 = *a1;
    v10 = *a5;
    v11 = *a1 >= *a5;
    if (*a1 == *a5)
    {
      v9 = a1[2];
      v10 = a5[2];
      v11 = v9 >= v10;
    }

    if (!v11)
    {
      break;
    }

    if (v10 >= v9)
    {
      a1 = a1[a2 + 4];
      a5 = a5[a6 + 4];
      if (a6 != a8 || a5 != a7)
      {
        continue;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__emplace_unique_key_args<TState *,TState * const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__find_equal<TState *>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__find_equal<TState *>(uint64_t a1, void *a2, uint64_t *a3)
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
        if (!TFsaBuilder::TStateCompare::operator()(a1, *a3, v4[4]))
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

      if (!TFsaBuilder::TStateCompare::operator()(a1, v8[4], *a3))
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

void *std::vector<TState *>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1B51F6CE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<TVertex *>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1B51F6DB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tknPrintString(const char *a1)
{
  v2 = strlen(s_pLogPartialLine);
  if (strlen(a1) + v2 + 101 > s_nPartialLineAllocSize)
  {
    s_pLogPartialLine = &s_pStaticLogPartialLine;
    s_nPartialLineAllocSize = 0x2000;
    operator new[]();
  }

  v3 = s_pLogPartialLine;
  v4 = &s_pLogPartialLine[strlen(s_pLogPartialLine)];
  v5 = *a1;
  if (*a1)
  {
    do
    {
      if ((s_bJustPrintedNewLine & 1) == 0)
      {
        v6 = strcpy(v4, gpLogLinePrefix);
        v4 += strlen(v6);
        s_bJustPrintedNewLine = 1;
        v5 = *a1;
      }

      *v4++ = v5;
      if (*a1 == 10)
      {
        *v4 = 0;
        tknLogString(s_pLogPartialLine);
        v4 = s_pLogPartialLine;
        s_bJustPrintedNewLine = 0;
        v3 = s_pLogPartialLine;
      }

      v7 = *++a1;
      v5 = v7;
    }

    while (v7);
  }

  *v4 = 0;
  v8 = s_pLogPartialLine;

  return memmove(v8, v3, v4 - v3 + 1);
}

void *tknPrintf(const char *a1, ...)
{
  va_start(va, a1);
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = *MEMORY[0x1E69E9840];
  __str[0] = 0;
  vsnprintf(__str, 0x1FFEuLL, v1, va);
  return tknPrintString(__str);
}

unint64_t loggableUnicode@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  __s = v10;
  v9 = xmmword_1B5AE2110;
  v11 = 1;
  {
    operator new();
  }

  TLocaleInfo::unicodeToMultiByte(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a1, &__s);
  if (*(&v9 + 1) >= v9)
  {
    if (v11)
    {
      v7 = 0;
      TBuffer<char>::insert(&__s, *(&v9 + 1), &v7, 1uLL);
      --*(&v9 + 1);
    }

    else if (v9)
    {
      __s[v9 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v9 + 1)] = 0;
  }

  v4 = __s;
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  a2[v6] = 0;
  if (v11 == 1)
  {
    result = __s;
    if (__s != v10)
    {
      if (__s)
      {
        return MEMORY[0x1B8C85310]();
      }
    }
  }

  return result;
}

void sub_1B51F71E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  MEMORY[0x1B8C85350](v45, 0x1070C40ADD13FEBLL);
  if (a45 == 1 && a10 != v46 && a10 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

void *operator<<(void *a1, unsigned int *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  __s = v9;
  v8 = xmmword_1B5AE2110;
  v10 = 1;
  {
    operator new();
  }

  TLocaleInfo::unicodeToMultiByte(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &__s);
  if (*(&v8 + 1) >= v8)
  {
    if (v10)
    {
      v6 = 0;
      TBuffer<char>::insert(&__s, *(&v8 + 1), &v6, 1uLL);
      --*(&v8 + 1);
    }

    else if (v8)
    {
      __s[v8 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v8 + 1)] = 0;
  }

  v4 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
  if (v10 == 1 && __s != v9 && __s)
  {
    MEMORY[0x1B8C85310]();
  }

  return a1;
}

void sub_1B51F73E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  MEMORY[0x1B8C85350](v45, 0x1070C40ADD13FEBLL);
  if (a45 == 1 && a10 != v46 && a10 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

uint64_t TBuffer<char>::insert(uint64_t result, unint64_t a2, char *a3, unint64_t a4)
{
  v5 = *(result + 16);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 16);
  }

  if (*(result + 280) == 1)
  {
    v7 = v5 + a4;
    v8 = *(result + 8);
    if (v5 + a4 > v8 && v8 < 2 * v7)
    {
      *(result + 8) = (2 * v7) | 1;
      operator new[]();
    }
  }

  if (v6 < v5)
  {
    v9 = *(result + 8);
    if (v6 + a4 < v9)
    {
      if (v9 >= v5 + a4)
      {
        v9 = v5 + a4;
      }

      v10 = v9 - (v6 + a4);
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = v9 - 1;
      do
      {
        *(*result + v11) = *(*result + v11 - a4);
        --v11;
        --v10;
      }

      while (v10);
    }
  }

  v12 = *(result + 8);
  v13 = v12 - v6;
  if (v12 > v6)
  {
    if (v13 >= a4)
    {
      v13 = a4;
    }

    if (v13)
    {
      do
      {
        v14 = *a3++;
        *(*result + v6++) = v14;
        --v13;
      }

      while (v13);
      v12 = *(result + 8);
    }
  }

  v15 = *(result + 16) + a4;
  *(result + 16) = v15;
  if (v15 < v12)
  {
    *(*result + v15) = 0;
  }

  return result;
}

void freeChart(uint64_t a1)
{
  v2 = maxRefLengthTLS();
  v3 = *v2;
  if (!*v2)
  {
    v4 = v2;
    v3 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *v4 = v3;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(a1 + 8 * v5);
    if (v6)
    {
      MEMORY[0x1B8C85310](v6, 0x1000C8000313F17);
    }

    if (++v5 > *v3)
    {

      JUMPOUT(0x1B8C85310);
    }
  }
}

void wordError_freeThread(void)
{
  v0 = chartTLS();
  v1 = *v0;
  if (!*v0)
  {
    v1 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    *v0 = v1;
  }

  v2 = *v1;
  if (v2)
  {
    freeChart(v2);
  }

  v3 = maxHypLengthTLS();
  if (*v3)
  {
    free(*v3);
    *v3 = 0;
  }

  v4 = maxRefLengthTLS();
  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }

  if (*v0)
  {
    free(*v0);
    *v0 = 0;
  }
}

void *LHash<unsigned int,double>::alloc(void *a1, unsigned int a2)
{
  v3 = -1;
  do
  {
    v4 = (1 << ++v3);
  }

  while (v4 < a2);
  result = BM_malloc(16 * (v4 - 1) + 24);
  *a1 = result;
  *result = *result & 0xFFFFFFE0 | v3 & 0x1F;
  **a1 &= 0x1Fu;
  v6 = (v4 + 3) & 0x1FFFFFFFCLL;
  v7 = vdupq_n_s64(v4 - 1);
  v8 = xmmword_1B5AE0050;
  v9 = xmmword_1B5AE0060;
  v10 = (*a1 + 64);
  v11 = vdupq_n_s64(4uLL);
  do
  {
    v12 = vmovn_s64(vcgeq_u64(v7, v9));
    if (vuzp1_s16(v12, *v7.i8).u8[0])
    {
      *(v10 - 12) = -1;
    }

    if (vuzp1_s16(v12, *&v7).i8[2])
    {
      *(v10 - 8) = -1;
    }

    if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
    {
      *(v10 - 4) = -1;
      *v10 = -1;
    }

    v8 = vaddq_s64(v8, v11);
    v9 = vaddq_s64(v9, v11);
    v10 += 16;
    v6 -= 4;
  }

  while (v6);
  return result;
}

void *LHash<unsigned int,double>::LHash(void *a1, unsigned int a2)
{
  *a1 = 0;
  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,double>::alloc(a1, a2);
  }

  return a1;
}

void LHash<unsigned int,double>::clear(void *a1, unsigned int a2)
{
  v4 = *a1;
  if (v4)
  {
    BM_free(v4, 16 * ~(-1 << *v4) + 24);
    *a1 = 0;
  }

  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,double>::alloc(a1, a2);
  }
}

uint64_t LHash<unsigned int,double>::find(_DWORD **a1, unsigned int a2, _BYTE *a3)
{
  v7 = 0;
  v5 = LHash<unsigned int,double>::locate(a1, a2, &v7);
  *a3 = v5;
  if (v5)
  {
    return &(*a1)[4 * v7 + 2];
  }

  else
  {
    return 0;
  }
}

uint64_t LHash<unsigned int,double>::locate(_DWORD **a1, unsigned int a2, _DWORD *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = v3 + 2;
  v5 = *v3;
  v6 = v5 & 0x1F;
  if ((*v3 & 0x1Fu) > 2)
  {
    v9 = -1 << v6;
    v7 = ((1103515245 * a2 + 12345) >> (30 - v6)) & ~(-1 << v6);
    v10 = v4[4 * v7 + 2];
    if (v10 == -1)
    {
LABEL_10:
      result = 0;
    }

    else
    {
      v11 = ~v9;
      while (v10 != a2)
      {
        v7 = (v7 + 1) & v11;
        v10 = v4[4 * v7 + 2];
        if (v10 == -1)
        {
          goto LABEL_10;
        }
      }

      result = 1;
    }
  }

  else if (v5 >= 0x20)
  {
    v12 = 0;
    v7 = v5 >> 5;
    v13 = v3 + 4;
    while (1)
    {
      v14 = *v13;
      v13 += 4;
      if (v14 == a2)
      {
        break;
      }

      if (v7 == ++v12)
      {
        goto LABEL_14;
      }
    }

    result = 1;
    LODWORD(v7) = v12;
  }

  else
  {
    LODWORD(v7) = 0;
LABEL_14:
    result = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t LHash<unsigned int,double>::insert(void *a1, unsigned int a2, _BYTE *a3)
{
  if (!*a1)
  {
    LHash<unsigned int,double>::alloc(a1, 1u);
  }

  v19 = 0;
  v6 = LHash<unsigned int,double>::locate(a1, a2, &v19);
  *a3 = v6;
  v7 = *a1;
  if (!v6)
  {
    v8 = *v7;
    v9 = 1 << (v8 & 0x1F);
    v10 = v8 >> 5;
    if (v8 >= 0xE0)
    {
      v11 = ((v10 + 2) / 0.8);
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v11 > v9)
    {
      LHash<unsigned int,double>::alloc(a1, v11);
      **a1 = v8 & 0xFFFFFFE0 | **a1 & 0x1F;
      if ((**a1 & 0x1Fu) >= 3)
      {
        v12 = (v7 + 2);
        v13 = 1 << (v8 & 0x1F);
        v14 = (v7 + 2);
        do
        {
          v16 = *v14;
          v14 += 4;
          v15 = v16;
          if (v16 != -1)
          {
            v17 = v12 - 2;
            LHash<unsigned int,double>::locate(a1, v15, &v19);
            *(*a1 + 16 * v19 + 8) = *v17;
          }

          v12 = v14;
          --v13;
        }

        while (v13);
      }

      else
      {
        memcpy((*a1 + 8), v7 + 1, 16 * v10);
      }

      BM_free(v7, 16 * (v9 - 1) + 24);
      LHash<unsigned int,double>::locate(a1, a2, &v19);
      v7 = *a1;
    }

    LODWORD(v7[2 * v19 + 2]) = a2;
    v7[2 * v19 + 1] = 0;
    **a1 += 32;
    v7 = *a1;
  }

  return &v7[2 * v19 + 1];
}

_DWORD **LHash<unsigned int,double>::memStats(_DWORD **result, uint64_t *a2)
{
  v2 = *a2 + 8;
  *a2 = v2;
  v3 = *result;
  if (*result)
  {
    v4 = 1 << *v3;
    v5 = 16 * (v4 - 1) + 24;
    *a2 = v5 + v2;
    a2[1] += 16 * (v4 - (*v3 >> 5));
    v6 = 256;
    if (v5 < 0x100)
    {
      v6 = 16 * (v4 - 1) + 24;
    }

    ++*(a2 + v6 + 4);
  }

  return result;
}

uint64_t LHashIter<unsigned int,double>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int,double>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B51F83D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<unsigned int,double>::LHashIter(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 12);
  *(result + 8) = *(a2 + 8);
  *(result + 12) = v2;
  *(result + 24) = 0;
  v3 = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  if (v3)
  {
    operator new[]();
  }

  return result;
}

uint64_t LHashIter<unsigned int,double>::~LHashIter(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x1000C8052888210);
  }

  *(a1 + 24) = 0;
  return a1;
}

uint64_t LHashIter<unsigned int,double>::next(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v9 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int,double>::locate(&v9, *(v7 + 4 * v4), &v10);
  v8 = *a1 + 16 * v10;
  result = v8 + 8;
  *a2 = *(v8 + 16);
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v9->u32[0] + 8));
      if ((result & 0x80000000) != 0)
      {
        v56 = v9->i32[0];
        v9->i32[0] = *(a2 - 1);
        goto LABEL_78;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,unsigned int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a3 + 16);
    v15 = *a3 + 8;
    if (v12 >= 0x81)
    {
      v16 = v14(*(v15 + 16 * v8[v13] + 8), *(v15 + 16 * *v8 + 8));
      v17 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v8[v13] + 8));
      if (v16 < 0)
      {
        v24 = *v8;
        if (v17 < 0)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v24;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v24;
          if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v24 + 8)) & 0x80000000) != 0)
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v17 < 0)
      {
        v18 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v18;
        if (((*(a3 + 16))(*(*a3 + 8 + 16 * v8[v13] + 8), *(*a3 + 8 + 16 * *v8 + 8)) & 0x80000000) != 0)
        {
          v19 = *v8;
          *v8 = v8[v13];
          v8[v13] = v19;
        }
      }

      v28 = v13 - 1;
      v29 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v13 - 1] + 8), *(*a3 + 8 + 16 * v8[1] + 8));
      v30 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 2) + 8), *(*a3 + 8 + 16 * v8[v13 - 1] + 8));
      if (v29 < 0)
      {
        v33 = v8[1];
        if (v30 < 0)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v33;
        }

        else
        {
          v8[1] = v8[v28];
          v8[v28] = v33;
          if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 2) + 8), *(*a3 + 8 + 16 * v33 + 8)) & 0x80000000) != 0)
          {
            v34 = v8[v28];
            v8[v28] = *(a2 - 2);
            *(a2 - 2) = v34;
          }
        }
      }

      else if (v30 < 0)
      {
        v31 = v8[v28];
        v8[v28] = *(a2 - 2);
        *(a2 - 2) = v31;
        if (((*(a3 + 16))(*(*a3 + 8 + 16 * v8[v28] + 8), *(*a3 + 8 + 16 * v8[1] + 8)) & 0x80000000) != 0)
        {
          v32 = v8[1];
          v8[1] = v8[v28];
          v8[v28] = v32;
        }
      }

      v35 = v13 + 1;
      v36 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v13 + 1] + 8), *(*a3 + 8 + 16 * v8[2] + 8));
      v37 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 3) + 8), *(*a3 + 8 + 16 * v8[v13 + 1] + 8));
      if (v36 < 0)
      {
        v40 = v8[2];
        if (v37 < 0)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v40;
        }

        else
        {
          v8[2] = v8[v35];
          v8[v35] = v40;
          if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 3) + 8), *(*a3 + 8 + 16 * v40 + 8)) & 0x80000000) != 0)
          {
            v41 = v8[v35];
            v8[v35] = *(a2 - 3);
            *(a2 - 3) = v41;
          }
        }
      }

      else if (v37 < 0)
      {
        v38 = v8[v35];
        v8[v35] = *(a2 - 3);
        *(a2 - 3) = v38;
        if (((*(a3 + 16))(*(*a3 + 8 + 16 * v8[v35] + 8), *(*a3 + 8 + 16 * v8[2] + 8)) & 0x80000000) != 0)
        {
          v39 = v8[2];
          v8[2] = v8[v35];
          v8[v35] = v39;
        }
      }

      v42 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v13] + 8), *(*a3 + 8 + 16 * v8[v28] + 8));
      v43 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v35] + 8), *(*a3 + 8 + 16 * v8[v13] + 8));
      if (v42 < 0)
      {
        v48 = v8[v28];
        if (v43 < 0)
        {
          v8[v28] = v8[v35];
          v8[v35] = v48;
          v44 = v8[v13];
        }

        else
        {
          v8[v28] = v8[v13];
          v8[v13] = v48;
          v49 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v35] + 8), *(*a3 + 8 + 16 * v48 + 8));
          v44 = v8[v13];
          if (v49 < 0)
          {
            v47 = v8[v35];
            v8[v13] = v47;
            v8[v35] = v44;
LABEL_57:
            v44 = v47;
          }
        }
      }

      else
      {
        v44 = v8[v13];
        if (v43 < 0)
        {
          v45 = v8[v35];
          v8[v13] = v45;
          v8[v35] = v44;
          v46 = (*(a3 + 16))(*(*a3 + 8 + 16 * v45 + 8), *(*a3 + 8 + 16 * v8[v28] + 8));
          v44 = v8[v13];
          if (v46 < 0)
          {
            v47 = v8[v28];
            v8[v28] = v44;
            v8[v13] = v47;
            goto LABEL_57;
          }
        }
      }

      v50 = *v8;
      *v8 = v44;
      v8[v13] = v50;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v20 = v14(*(v15 + 16 * *v8 + 8), *(v15 + 16 * v8[v13] + 8));
    v21 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * *v8 + 8));
    if (v20 < 0)
    {
      v26 = v8[v13];
      if (v21 < 0)
      {
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v26;
LABEL_39:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *v8;
      *v8 = v26;
      if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v26 + 8)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v27 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v27;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v22 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v22;
      if (((*(a3 + 16))(*(*a3 + 8 + 16 * *v8 + 8), *(*a3 + 8 + 16 * v8[v13] + 8)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v23 = v8[v13];
      v8[v13] = *v8;
      *v8 = v23;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(v8 - 1) + 8), *(*a3 + 8 + 16 * *v8 + 8)) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,double> &>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v51 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,double> &>(v8, a2, a3);
    if ((v52 & 1) == 0)
    {
      goto LABEL_64;
    }

    v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(v8, v51, a3);
    v9 = (v51 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(v51 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v51;
      if (v53)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v53)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,false>(v8, v51, a3, -v11, a5 & 1);
      v9 = (v51 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,0>(v9, v9 + 1, &v9[1], a2 - 1, a3);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,0>(v9, v9 + 1, &v9[1], &v9[1] + 1, a2 - 1, a3);
    }

    goto LABEL_11;
  }

  v54 = (*(a3 + 16))(*(*a3 + 8 + 16 * v9->u32[1] + 8), *(*a3 + 8 + 16 * v9->u32[0] + 8));
  result = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v9->u32[1] + 8));
  if (v54 < 0)
  {
    v57 = v9->u32[0];
    if ((result & 0x80000000) != 0)
    {
      v9->i32[0] = *(a2 - 1);
      *(a2 - 1) = v57;
      return result;
    }

    v9->i32[0] = v9->i32[1];
    v9->i32[1] = v57;
    result = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v57 + 8));
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v56 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
LABEL_78:
    *(a2 - 1) = v56;
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    v55 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
    *(a2 - 1) = v55;
    result = (*(a3 + 16))(*(*a3 + 8 + 16 * v9->u32[1] + 8), *(*a3 + 8 + 16 * v9->u32[0] + 8));
    if ((result & 0x80000000) != 0)
    {
      *v9 = vrev64_s32(*v9);
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v10 = (*(a5 + 16))(*(*a5 + 8 + 16 * *a2 + 8), *(*a5 + 8 + 16 * *a1 + 8));
  v11 = (*(a5 + 16))(*(*a5 + 8 + 16 * *a3 + 8), *(*a5 + 8 + 16 * *a2 + 8));
  if (v10 < 0)
  {
    v14 = *a1;
    if (v11 < 0)
    {
      *a1 = *a3;
      *a3 = v14;
    }

    else
    {
      *a1 = *a2;
      *a2 = v14;
      if (((*(a5 + 16))(*(*a5 + 8 + 16 * *a3 + 8), *(*a5 + 8 + 16 * v14 + 8)) & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11 < 0)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    if (((*(a5 + 16))(*(*a5 + 8 + 16 * *a2 + 8), *(*a5 + 8 + 16 * *a1 + 8)) & 0x80000000) != 0)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
    }
  }

  result = (*(a5 + 16))(*(*a5 + 8 + 16 * *a4 + 8), *(*a5 + 8 + 16 * *a3 + 8));
  if ((result & 0x80000000) != 0)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*(a5 + 16))(*(*a5 + 8 + 16 * *a3 + 8), *(*a5 + 8 + 16 * *a2 + 8));
    if ((result & 0x80000000) != 0)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*(a5 + 16))(*(*a5 + 8 + 16 * *a2 + 8), *(*a5 + 8 + 16 * *a1 + 8));
      if ((result & 0x80000000) != 0)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,0>(a1, a2, a3, a4, a6);
  result = (*(a6 + 16))(*(*a6 + 8 + 16 * *a5 + 8), *(*a6 + 8 + 16 * *a4 + 8));
  if ((result & 0x80000000) != 0)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    result = (*(a6 + 16))(*(*a6 + 8 + 16 * *a4 + 8), *(*a6 + 8 + 16 * *a3 + 8));
    if ((result & 0x80000000) != 0)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      result = (*(a6 + 16))(*(*a6 + 8 + 16 * *a3 + 8), *(*a6 + 8 + 16 * *a2 + 8));
      if ((result & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        result = (*(a6 + 16))(*(*a6 + 8 + 16 * *a2 + 8), *(*a6 + 8 + 16 * *a1 + 8));
        if ((result & 0x80000000) != 0)
        {
          v16 = *a1;
          *a1 = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*(a3 + 16))(*(*a3 + 8 + 16 * v9 + 8), *(*a3 + 8 + 16 * v10 + 8));
        if ((result & 0x80000000) != 0)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 4) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*(a3 + 16))(*(*a3 + 8 + 16 * v11 + 8), *(*a3 + 8 + 16 * *(v4 + v12 - 4) + 8));
            v12 -= 4;
            if ((result & 0x80000000) == 0)
            {
              v13 = (v4 + v12 + 4);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 4); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*(a3 + 16))(*(*a3 + 8 + 16 * v7 + 8), *(*a3 + 8 + 16 * v8 + 8));
      if ((result & 0x80000000) != 0)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*(a3 + 16))(*(*a3 + 8 + 16 * v9 + 8), *(*a3 + 8 + 16 * *(v11 - 2) + 8));
        }

        while ((result & 0x80000000) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,double> &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * *(a2 - 1) + 8)) & 0x80000000) != 0)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * v9 + 8)) & 0x80000000) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v8 = v7;
      if (v7 >= v4)
      {
        break;
      }

      ++v7;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * *v8 + 8)) & 0x80000000) == 0);
  }

  if (v8 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * v10 + 8)) & 0x80000000) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    *v8 = *v4;
    *v4 = v11;
    do
    {
      v12 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * v12 + 8)) & 0x80000000) == 0);
    do
    {
      v13 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * v13 + 8)) & 0x80000000) != 0);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v6;
  return v8;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,double> &>(int *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*(a3 + 16))(*(*a3 + 8 + 16 * a1[++v6] + 8), *(*a3 + 8 + 16 * v7 + 8));
  }

  while (v8 < 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v12 + 8), *(*a3 + 8 + 16 * v7 + 8)) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v11 + 8), *(*a3 + 8 + 16 * v7 + 8)) & 0x80000000) == 0);
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*(a3 + 16))(*(*a3 + 8 + 16 * v16 + 8), *(*a3 + 8 + 16 * v7 + 8)) & 0x80000000) != 0);
      do
      {
        v17 = *--v14;
      }

      while (((*(a3 + 16))(*(*a3 + 8 + 16 * v17 + 8), *(*a3 + 8 + 16 * v7 + 8)) & 0x80000000) == 0);
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = (*(a3 + 16))(*(*a3 + 8 + 16 * a1[1] + 8), *(*a3 + 8 + 16 * *a1 + 8));
        v9 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * a1[1] + 8));
        if ((v8 & 0x80000000) == 0)
        {
          if (v9 < 0)
          {
            v10 = a1[1];
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v10;
            if (((*(a3 + 16))(*(*a3 + 8 + 16 * a1[1] + 8), *(*a3 + 8 + 16 * *a1 + 8)) & 0x80000000) != 0)
            {
              *a1 = vrev64_s32(*a1);
            }
          }

          return 1;
        }

        v17 = *a1;
        if (v9 < 0)
        {
          *a1 = *(a2 - 1);
          *(a2 - 1) = v17;
          return 1;
        }

        *a1 = a1[1];
        a1[1] = v17;
        if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v17 + 8)) & 0x80000000) != 0)
        {
          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * *a1 + 8)) & 0x80000000) != 0)
      {
        v7 = *a1;
        *a1 = *(a2 - 1);
LABEL_6:
        *(a2 - 1) = v7;
        return 1;
      }

      return 1;
    }
  }

  v11 = (*(a3 + 16))(*(*a3 + 8 + 16 * a1[1] + 8), *(*a3 + 8 + 16 * *a1 + 8));
  v12 = a1 + 2;
  v13 = (*(a3 + 16))(*(*a3 + 8 + 16 * a1[2] + 8), *(*a3 + 8 + 16 * a1[1] + 8));
  if (v11 < 0)
  {
    v18 = *a1;
    if (v13 < 0)
    {
      *a1 = a1[2];
      a1[2] = v18;
    }

    else
    {
      v19 = a1[2];
      *a1 = a1[1];
      a1[1] = v18;
      if (((*(a3 + 16))(*(*a3 + 8 + 16 * v19 + 8), *(*a3 + 8 + 16 * v18 + 8)) & 0x80000000) != 0)
      {
        *(a1 + 1) = vrev64_s32(*(a1 + 1));
      }
    }
  }

  else if (v13 < 0)
  {
    v15 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    a1[1] = v14;
    a1[2] = v15;
    if (((*(a3 + 16))(*(*a3 + 8 + 16 * v14 + 8), *(*a3 + 8 + 16 * v16 + 8)) & 0x80000000) != 0)
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v20 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (((*(a3 + 16))(*(*a3 + 8 + 16 * *v20 + 8), *(*a3 + 8 + 16 * *v12 + 8)) & 0x80000000) != 0)
    {
      v23 = *v20;
      v24 = v21;
      while (1)
      {
        *(a1 + v24 + 12) = *(a1 + v24 + 8);
        if (v24 == -8)
        {
          break;
        }

        v25 = (*(a3 + 16))(*(*a3 + 8 + 16 * v23 + 8), *(*a3 + 8 + 16 * *(a1 + v24 + 4) + 8));
        v24 -= 4;
        if ((v25 & 0x80000000) == 0)
        {
          v26 = (a1 + v24 + 12);
          goto LABEL_36;
        }
      }

      v26 = a1;
LABEL_36:
      *v26 = v23;
      if (++v22 == 8)
      {
        return v20 + 1 == a2;
      }
    }

    v12 = v20;
    v21 += 4;
    if (++v20 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(a1, a4, v8, v11--);
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
        if (((*(a4 + 16))(*(*a4 + 8 + 16 * *v12 + 8), *(*a4 + 8 + 16 * *a1 + 8)) & 0x80000000) != 0)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(a1, a4, v8, a1);
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
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v10 = (a4 - result) >> 1;
      v11 = v10 + 1;
      v12 = (result + 4 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*(a2 + 16))(*(*a2 + 8 + 16 * *v12 + 8), *(*a2 + 8 + 16 * v12[1] + 8)) < 0)
      {
        ++v12;
        v11 = v13;
      }

      result = (*(a2 + 16))(*(*a2 + 8 + 16 * *v12 + 8), *(*a2 + 8 + 16 * *v5 + 8));
      if ((result & 0x80000000) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 4 * v16);
          if (2 * v11 + 2 < a3 && (*(a2 + 16))(*(*a2 + 8 + 16 * *v12 + 8), *(*a2 + 8 + 16 * v12[1] + 8)) < 0)
          {
            ++v12;
            v16 = 2 * v11 + 2;
          }

          result = (*(a2 + 16))(*(*a2 + 8 + 16 * *v12 + 8), *(*a2 + 8 + 16 * v14 + 8));
          v5 = v15;
          v11 = v16;
        }

        while ((result & 0x80000000) == 0);
        *v15 = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*(a2 + 16))(*(*a2 + 8 + 16 * *(v12 - 1) + 8), *(*a2 + 8 + 16 * v13 + 8)) >= 0)
      {
        v6 = v10;
      }

      else
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,double> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = (*(a3 + 16))(*(*a3 + 8 + 16 * *v8 + 8), *(*a3 + 8 + 16 * *(a2 - 4) + 8));
    if ((result & 0x80000000) != 0)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = (*(a3 + 16))(*(*a3 + 8 + 16 * *v8 + 8), *(*a3 + 8 + 16 * v10 + 8));
        v9 = v11;
      }

      while ((result & 0x80000000) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst()
{
  operator new();
}

{
  operator new();
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read(uint64_t a1)
{
  result = fst::ImplToExpandedFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Read(a1);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t fst::ImplToExpandedFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Read(uint64_t a1)
{
  v14[19] = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8))
    {
      goto LABEL_5;
    }

LABEL_15:
    fst::cin(a1);
    std::string::basic_string[abi:ne200100]<0>(__p, "standard input");
    fst::FstReadOptions::FstReadOptions(v12, __p, 0, 0, 0);
    fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read();
  }

  if (!*(a1 + 23))
  {
    goto LABEL_15;
  }

LABEL_5:
  std::ifstream::basic_ifstream(v12);
  if ((v13[*(v12[0] - 3) + 16] & 5) == 0)
  {
    fst::FstReadOptions::FstReadOptions(__p, a1, 0, 0, 0);
    fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v11, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ExpandedFst::Read: Can't open file: ", 36);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  fst::LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v12[0] = *MEMORY[0x1E69E54C8];
  *(v12 + *(v12[0] - 3)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v13);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v14);
  return 0;
}

void sub_1B51FA328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a24);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(void *a1, void *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  *v31 = 0u;
  v6 = -1;
  v35 = 0;
  v36 = 0;
  v34 = -1;
  v34 = (*(*a1 + 24))(a1);
  v35 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v35 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v38;
    if (v38 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      LODWORD(__p[0].__r_.__value_.__l.__data_) = (*(*a1 + 32))(a1, v11);
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(*(a1[1] + 64) + 8 * v11) + 24);
      v14 = *(*(*(a1[1] + 64) + 8 * v11) + 32) - v13;
      if (v14)
      {
        v15 = v14 >> 4;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v13 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v28, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_27:
    fst::LogMessage::~LogMessage(&v28);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v35 == v12)
    {
      updated = 1;
      goto LABEL_30;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v28, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v35 = v12;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v31[0]) < 0)
  {
    operator delete(v30[0]);
  }

  return updated;
}

void sub_1B51FA84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a13);
  _Unwind_Resume(a1);
}

void *fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v6, a3);
}

void fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::VectorFst()
{
  operator new();
}

{
  operator new();
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}