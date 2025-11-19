@interface CSAudioCircularBuffer
- (CSAudioCircularBuffer)initWithNumChannels:(unint64_t)a3 recordingDuration:(float)a4 samplingRate:(float)a5 audioTimeConverter:(id)a6;
- (id)copyBufferWithNumSamplesCopiedIn:(unint64_t *)a3;
- (id)copySamplesFrom:(unint64_t)a3 to:(unint64_t)a4;
- (id)copySamplesFrom:(unint64_t)a3 to:(unint64_t)a4 channelIdx:(unint64_t)a5;
- (id)copySamplesFromHostTime:(unint64_t)a3;
- (id)copybufferFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)addSamples:(const void *)a3 numSamples:(unint64_t)a4;
- (void)addSamples:(const void *)a3 numSamples:(unint64_t)a4 atHostTime:(unint64_t)a5;
- (void)reset;
@end

@implementation CSAudioCircularBuffer

- (void)reset
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAudioCircularBuffer reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSAudioCircularBuffer.reset", &v6, 0xCu);
  }

  ptr = self->_csAudioCircularBufferImpl.__ptr_;
  ptr[3] = 0;
  ptr[4] = 0;
  v5 = *MEMORY[0x1E69E9840];
}

- (id)copyBufferWithNumSamplesCopiedIn:(unint64_t *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  ptr = self->_csAudioCircularBufferImpl.__ptr_;
  v6 = ptr[4];
  v7 = ptr[2];
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a3;
    v18 = 136315906;
    v19 = "[CSAudioCircularBuffer copyBufferWithNumSamplesCopiedIn:]";
    v20 = 2050;
    v21 = v10;
    v22 = 2050;
    v23 = v6;
    v24 = 2050;
    v25 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s copyBuffer: oldestSample: %{public}lu latestSample: %{public}lu, numSamplesCopied: %{public}lu", &v18, 0x2Au);
  }

  v13 = [(CSAudioCircularBuffer *)self copySamplesFrom:v10 to:v6];
  v14 = v13;
  if (v13)
  {
    *a3 = [v13 numSamples];
    v15 = [v14 data];
  }

  else
  {
    v15 = 0;
    *a3 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)copybufferFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  corespeech::CSAudioCircularBufferImpl<unsigned short>::copySamples(&v12, self->_csAudioCircularBufferImpl.__ptr_, a3, a4);
  v7 = v12;
  if (v12)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:2 * (a4 - a3) * *self->_csAudioCircularBufferImpl.__ptr_];
    MEMORY[0x1E12B9880](v7, 0x1000C80BDFB0063);
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = "[CSAudioCircularBuffer copybufferFrom:to:]";
      v15 = 2050;
      v16 = a3;
      v17 = 2050;
      v18 = a4;
      v19 = 2050;
      v20 = 0;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Could NOT copyFrom: %{public}lu to: %{public}lu, retSampleCount: %{public}lu", buf, 0x2Au);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)copySamplesFrom:(unint64_t)a3 to:(unint64_t)a4 channelIdx:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  ptr = self->_csAudioCircularBufferImpl.__ptr_;
  v8 = ptr[2];
  v9 = ptr[4];
  if (v9 >= v8)
  {
    v10 = v9 - v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= a3 && a4 > a3 && v9 >= a4 && v9 > a3 && v10 < a4)
  {
    operator new[]();
  }

  v15 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v20 = "copySamples";
    v21 = 2050;
    v22 = a3;
    v23 = 2050;
    v24 = a4;
    v25 = 2050;
    v26 = v10;
    v27 = 2050;
    v28 = v9;
    _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Invalid request: reqStartSample=%{public}lu, reqEndSample=%{public}lu, oldestSampleInBuffer: %{public}lu, latestSampleInBuffer=%{public}lu", buf, 0x34u);
  }

  v16 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "[CSAudioCircularBuffer copySamplesFrom:to:channelIdx:]";
    v21 = 2050;
    v22 = a3;
    v23 = 2050;
    v24 = a4;
    v25 = 2050;
    v26 = 0;
    _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Could NOT copyFrom: %{public}lu to: %{public}lu, retSampleCount: %{public}lu", buf, 0x2Au);
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)copySamplesFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  corespeech::CSAudioCircularBufferImpl<unsigned short>::copySamples(&v20, self->_csAudioCircularBufferImpl.__ptr_, a3, a4);
  v7 = v20;
  if (v20)
  {
    v8 = *self->_csAudioCircularBufferImpl.__ptr_;
    v9 = a4 - a3;
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v20 length:2 * (a4 - a3) * v8];
    audioTimeConverter = self->_audioTimeConverter;
    if (audioTimeConverter)
    {
      v12 = [(CSAudioTimeConverter *)audioTimeConverter hostTimeFromSampleCount:a3];
    }

    else
    {
      v12 = 0;
    }

    v15 = [CSAudioChunk alloc];
    LOBYTE(v19) = +[CSConfig inputRecordingIsFloat];
    LOBYTE(v18) = 1;
    v14 = [(CSAudioChunk *)v15 initWithData:v10 numChannels:v8 numSamples:v9 sampleByteDepth:2 startSampleCount:a3 hostTime:v12 arrivalHostTimeToAudioRecorder:0 wasBuffered:v18 remoteVAD:0 isFloat:v19];

    MEMORY[0x1E12B9880](v7, 0x1000C80BDFB0063);
  }

  else
  {
    v13 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = "[CSAudioCircularBuffer copySamplesFrom:to:]";
      v23 = 2050;
      v24 = a3;
      v25 = 2050;
      v26 = a4;
      v27 = 2050;
      v28 = 0;
      _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Could NOT copyFrom: %{public}lu to: %{public}lu, retSampleCount: %{public}lu", buf, 0x2Au);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)copySamplesFromHostTime:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(self->_csAudioCircularBufferImpl.__ptr_ + 4))
  {
    audioTimeConverter = self->_audioTimeConverter;
    if (audioTimeConverter)
    {
      v5 = [(CSAudioTimeConverter *)audioTimeConverter sampleCountFromHostTime:a3];
    }

    else
    {
      v5 = 0;
    }

    v9 = [(CSAudioCircularBuffer *)self sampleCount];
    v10 = *MEMORY[0x1E69E9840];

    return [(CSAudioCircularBuffer *)self copySamplesFrom:v5 to:v9];
  }

  else
  {
    v6 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSAudioCircularBuffer copySamplesFromHostTime:]";
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Cannot copy samples since this is empty", &v11, 0xCu);
    }

    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (void)addSamples:(const void *)a3 numSamples:(unint64_t)a4 atHostTime:(unint64_t)a5
{
  ptr = self->_csAudioCircularBufferImpl.__ptr_;
  v7 = ptr[2];
  if (*ptr)
  {
    v9 = 0;
    v20 = a4 - v7;
    __n = 2 * a4;
    do
    {
      v10 = ptr[3];
      v11 = *(ptr[6] + 8 * v9);
      v12 = a3 + 2 * v9 * a4;
      v13 = v7 - v10;
      v14 = a4 - (v7 - v10);
      if (a4 <= v7 - v10)
      {
        memcpy(&v11[2 * v10], a3 + 2 * v9 * a4, __n);
        v14 = v10 + a4;
      }

      else
      {
        if (a4 >= v7)
        {
          v14 = (v10 + v20) % v7;
          v18 = &v12[2 * v20];
          memcpy(&v11[2 * v14], v18, 2 * (v7 - v14));
          v16 = &v18[2 * (v7 - v14)];
          v17 = v11;
          v15 = 2 * v14;
        }

        else
        {
          memcpy(&v11[2 * v10], a3 + 2 * v9 * a4, 2 * v13);
          v15 = 2 * v14;
          v16 = &v12[2 * v13];
          v17 = v11;
        }

        memcpy(v17, v16, v15);
      }

      ++v9;
    }

    while (v9 < *ptr);
  }

  else
  {
    v14 = ptr[3];
  }

  v19 = ptr[4] + a4;
  ptr[3] = v14 % v7;
  ptr[4] = v19;
}

- (void)addSamples:(const void *)a3 numSamples:(unint64_t)a4
{
  v7 = mach_absolute_time();

  [(CSAudioCircularBuffer *)self addSamples:a3 numSamples:a4 atHostTime:v7];
}

- (CSAudioCircularBuffer)initWithNumChannels:(unint64_t)a3 recordingDuration:(float)a4 samplingRate:(float)a5 audioTimeConverter:(id)a6
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = a6;
  v10.receiver = self;
  v10.super_class = CSAudioCircularBuffer;
  if ([(CSAudioCircularBuffer *)&v10 init])
  {
    operator new();
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

@end