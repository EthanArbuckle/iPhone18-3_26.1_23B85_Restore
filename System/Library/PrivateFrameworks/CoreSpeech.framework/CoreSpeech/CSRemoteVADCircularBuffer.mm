@interface CSRemoteVADCircularBuffer
- (CSRemoteVADCircularBuffer)initWithRecordingDuration:(float)a3 audioSamplesPerRemoteVAD:(int)a4 audioSampleRate:(float)a5;
- (id)copySamplesFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)addSamples:(const void *)a3 numSamples:(unint64_t)a4;
- (void)reset;
@end

@implementation CSRemoteVADCircularBuffer

- (id)copySamplesFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  ptr = self->_remoteVADCircularBufferImpl.__ptr_;
  v7 = ptr[2];
  v8 = ptr[4];
  if (v8 >= v7)
  {
    v9 = v8 - v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= a3 && a4 > a3 && v8 >= a4 && v8 > a3 && v9 < a4)
  {
    v17 = *ptr;
    operator new[]();
  }

  v14 = MEMORY[0x277D015B0];
  v15 = *MEMORY[0x277D015B0];
  if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "copySamples";
    v22 = 2050;
    v23 = a3;
    v24 = 2050;
    v25 = a4;
    v26 = 2050;
    v27 = v9;
    v28 = 2050;
    v29 = v8;
    _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Invalid request: reqStartSample=%{public}lu, reqEndSample=%{public}lu, oldestSampleInBuffer: %{public}lu, latestSampleInBuffer=%{public}lu", buf, 0x34u);
  }

  v16 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v21 = "[CSRemoteVADCircularBuffer copySamplesFrom:to:]";
    v22 = 2050;
    v23 = a3;
    v24 = 2050;
    v25 = a4;
    v26 = 2050;
    v27 = 0;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s Could NOT copyFrom: %{public}lu to: %{public}lu, retSampleCount: %{public}lu", buf, 0x2Au);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)addSamples:(const void *)a3 numSamples:(unint64_t)a4
{
  ptr = self->_remoteVADCircularBufferImpl.__ptr_;
  v6 = ptr[2];
  if (*ptr)
  {
    v7 = 0;
    v8 = a4 - v6;
    v9 = a3;
    do
    {
      v10 = ptr[3];
      v11 = *(ptr[6] + 8 * v7);
      v12 = a4 - (v6 - v10);
      if (a4 <= v6 - v10)
      {
        memcpy(&v11[v10], v9, a4);
        v12 = v10 + a4;
      }

      else
      {
        if (a4 >= v6)
        {
          v12 = (v10 + v8) % v6;
          memcpy(&v11[v12], &v9[v8], v6 - v12);
          v13 = a3 + v7 * a4 + v8 + v6 - v12;
        }

        else
        {
          memcpy(&v11[v10], v9, v6 - v10);
          v13 = &v9[v6 - v10];
        }

        memcpy(v11, v13, v12);
      }

      ++v7;
      v9 += a4;
    }

    while (v7 < *ptr);
  }

  else
  {
    v12 = ptr[3];
  }

  v14 = ptr[4] + a4;
  ptr[3] = v12 % v6;
  ptr[4] = v14;
}

- (void)reset
{
  ptr = self->_remoteVADCircularBufferImpl.__ptr_;
  ptr[3] = 0;
  ptr[4] = 0;
}

- (CSRemoteVADCircularBuffer)initWithRecordingDuration:(float)a3 audioSamplesPerRemoteVAD:(int)a4 audioSampleRate:(float)a5
{
  v6.receiver = self;
  v6.super_class = CSRemoteVADCircularBuffer;
  if ([(CSRemoteVADCircularBuffer *)&v6 init])
  {
    operator new();
  }

  return 0;
}

@end