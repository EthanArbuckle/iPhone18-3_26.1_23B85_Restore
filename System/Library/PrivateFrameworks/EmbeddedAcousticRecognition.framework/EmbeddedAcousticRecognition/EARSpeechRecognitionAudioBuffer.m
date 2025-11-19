@interface EARSpeechRecognitionAudioBuffer
@end

@implementation EARSpeechRecognitionAudioBuffer

uint64_t __71___EARSpeechRecognitionAudioBuffer_addAudio2SampleData_withCompletion___block_invoke(uint64_t a1)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 40) == 1)
  {
    result = *(a1 + 48);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v10[3] = 0;
    if (*(a1 + 48))
    {
      v4 = MEMORY[0x1B8C868A0]();
      v5 = MEMORY[0x1B8C868A0]();
      v11[0] = &unk_1F2D08648;
      v11[1] = MEMORY[0x1B8C868A0]();
      v11[3] = v11;

      std::__function::__value_func<void ()(BOOL)>::swap[abi:ne200100](v11, v10);
      std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v11);
    }

    v6 = [*(a1 + 40) bytes];
    v7 = [*(a1 + 40) length];
    v8 = *(*(a1 + 32) + 8);
    std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v9, v10);
    (*(*v8 + 16))(v8, v6, v7 >> 1, v9);
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v9);
    return std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v10);
  }

  return result;
}

uint64_t __44___EARSpeechRecognitionAudioBuffer_endAudio__block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 8) + 32))(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 41) = 1;
  return result;
}

uint64_t __63___EARSpeechRecognitionAudioBuffer_triggerServerSideEndPointer__block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 8) + 48))(*(*(a1 + 32) + 8));
  result = (*(**(*(a1 + 32) + 8) + 32))(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 41) = 1;
  return result;
}

void __53___EARSpeechRecognitionAudioBuffer_cancelRecognition__block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 8) + 32))(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 41) = 1;
  *(*(a1 + 32) + 40) = 1;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained cancelRecognition];
}

uint64_t __53___EARSpeechRecognitionAudioBuffer_stopAudioDecoding__block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 8) + 56))(*(*(a1 + 32) + 8));
  result = (*(**(*(a1 + 32) + 8) + 32))(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 41) = 1;
  return result;
}

void __57___EARSpeechRecognitionAudioBuffer__setUnderlyingBuffer___block_invoke(void *a1)
{
  (*(**(a1[4] + 8) + 32))(*(a1[4] + 8));
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 16);
  *(v2 + 8) = v3;
  *(v2 + 16) = v4;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

double __57___EARSpeechRecognitionAudioBuffer_bufferedAudioDuration__block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 8) + 64))(*(*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

double __57___EARSpeechRecognitionAudioBuffer_consumedAudioDuration__block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 8) + 72))(*(*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __72___EARSpeechRecognitionAudioBuffer_packetArrivalTimestampFromAudioTime___block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 8) + 80))(*(*(a1 + 32) + 8), *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end