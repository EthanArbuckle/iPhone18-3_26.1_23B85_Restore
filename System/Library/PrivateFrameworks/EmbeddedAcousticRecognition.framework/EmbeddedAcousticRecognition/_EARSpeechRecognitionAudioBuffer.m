@interface _EARSpeechRecognitionAudioBuffer
+ (void)initialize;
- (double)bufferedAudioDuration;
- (double)consumedAudioDuration;
- (id).cxx_construct;
- (id)_initWithAudioBuffer:(shared_ptr<quasar:(id)a4 :RecogAudioBufferBase>)a3 speechRecognizer:;
- (unint64_t)packetArrivalTimestampFromAudioTime:(float)a3;
- (void)_setUnderlyingBuffer:(shared_ptr<quasar::RecogAudioBufferBase>)a3;
- (void)addAudio2SampleData:(id)a3 withCompletion:(id)a4;
- (void)addAudio2Samples:(const signed __int16 *)a3 count:(unint64_t)a4 withCompletion:(id)a5;
- (void)cancelRecognition;
- (void)endAudio;
- (void)stopAudioDecoding;
- (void)triggerServerSideEndPointer;
@end

@implementation _EARSpeechRecognitionAudioBuffer

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (id)_initWithAudioBuffer:(shared_ptr<quasar:(id)a4 :RecogAudioBufferBase>)a3 speechRecognizer:
{
  ptr = a3.__ptr_;
  v6 = a3.__cntrl_;
  v15.receiver = self;
  v15.super_class = _EARSpeechRecognitionAudioBuffer;
  v7 = [(_EARSpeechRecognitionAudioBuffer *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v10 = *ptr;
    v9 = *(ptr + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->_buffer.__cntrl_;
    v8->_buffer.__ptr_ = v10;
    v8->_buffer.__cntrl_ = v9;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v12 = dispatch_queue_create("com.apple.siri._EARSpeechRecognitionAudioBuffer", 0);
    queue = v8->_queue;
    v8->_queue = v12;

    objc_storeWeak(&v8->_speechRecognizer, v6);
  }

  return v8;
}

- (void)addAudio2Samples:(const signed __int16 *)a3 count:(unint64_t)a4 withCompletion:(id)a5
{
  v9 = a5;
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 length:2 * a4];
  [(_EARSpeechRecognitionAudioBuffer *)self addAudio2SampleData:v8 withCompletion:v9];
}

- (void)addAudio2SampleData:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___EARSpeechRecognitionAudioBuffer_addAudio2SampleData_withCompletion___block_invoke;
  block[3] = &unk_1E7C1A7C8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)endAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___EARSpeechRecognitionAudioBuffer_endAudio__block_invoke;
  block[3] = &unk_1E7C1A550;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)triggerServerSideEndPointer
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___EARSpeechRecognitionAudioBuffer_triggerServerSideEndPointer__block_invoke;
  block[3] = &unk_1E7C1A550;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancelRecognition
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___EARSpeechRecognitionAudioBuffer_cancelRecognition__block_invoke;
  block[3] = &unk_1E7C1A550;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)stopAudioDecoding
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___EARSpeechRecognitionAudioBuffer_stopAudioDecoding__block_invoke;
  block[3] = &unk_1E7C1A550;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setUnderlyingBuffer:(shared_ptr<quasar::RecogAudioBufferBase>)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __57___EARSpeechRecognitionAudioBuffer__setUnderlyingBuffer___block_invoke;
  block[3] = &unk_1F2D08608;
  v6 = *a3.__ptr_;
  v5 = *(a3.__ptr_ + 1);
  block[4] = self;
  block[5] = v6;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(queue, block);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

- (double)bufferedAudioDuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57___EARSpeechRecognitionAudioBuffer_bufferedAudioDuration__block_invoke;
  v5[3] = &unk_1E7C1A5E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)consumedAudioDuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57___EARSpeechRecognitionAudioBuffer_consumedAudioDuration__block_invoke;
  v5[3] = &unk_1E7C1A5E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)packetArrivalTimestampFromAudioTime:(float)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___EARSpeechRecognitionAudioBuffer_packetArrivalTimestampFromAudioTime___block_invoke;
  block[3] = &unk_1E7C1A7F0;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(queue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end