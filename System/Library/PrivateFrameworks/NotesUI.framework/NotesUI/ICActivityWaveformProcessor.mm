@interface ICActivityWaveformProcessor
- (BOOL)getAmplitudes:(float *)amplitudes count:(int)count startTime:(double)time endTime:(double)endTime;
- (ICActivityWaveformProcessor)init;
- (ICActivityWaveformProcessorDelegate)delegate;
- (VMFrameRange)_bufferRange;
- (double)availableRangeEnd;
- (double)availableRangeStart;
- (double)recordingStartTime;
- (float)runningAverage;
- (int)_excessFrames;
- (void)_tearDown;
- (void)consumeRingBufferIfNecessary;
- (void)dealloc;
- (void)prepareToProcessWithFormat:(id)format audioTime:(id)time punchInTime:(double)inTime;
- (void)processAudioBuffer:(id)buffer;
@end

@implementation ICActivityWaveformProcessor

- (ICActivityWaveformProcessor)init
{
  v3.receiver = self;
  v3.super_class = ICActivityWaveformProcessor;
  result = [(ICActivityWaveformProcessor *)&v3 init];
  if (result)
  {
    result->_readerLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(ICActivityWaveformProcessor *)self _tearDown];
  v3.receiver = self;
  v3.super_class = ICActivityWaveformProcessor;
  [(ICActivityWaveformProcessor *)&v3 dealloc];
}

- (double)recordingStartTime
{
  if (!self->_isPrepared)
  {
    return 0.0;
  }

  [(ICActivityWaveformProcessor *)self referenceMediaTime];
  return result;
}

- (double)availableRangeStart
{
  result = 0.0;
  if (self->_isPrepared)
  {
    return self->_referenceMediaTime + [(ICActivityWaveformProcessor *)self _bufferRange]/ self->_sampleRate;
  }

  return result;
}

- (double)availableRangeEnd
{
  result = 0.0;
  if (self->_isPrepared)
  {
    _bufferRange = [(ICActivityWaveformProcessor *)self _bufferRange];
    return self->_referenceMediaTime + (v5 + _bufferRange) / self->_sampleRate;
  }

  return result;
}

- (void)prepareToProcessWithFormat:(id)format audioTime:(id)time punchInTime:(double)inTime
{
  formatCopy = format;
  timeCopy = time;
  if (self->_isPrepared)
  {
    [(ICActivityWaveformProcessor *)self _tearDown];
  }

  [formatCopy sampleRate];
  self->_sampleRate = v10;
  self->_punchInTime = inTime;
  v11 = +[ICRecorderStyleProvider sharedStyleProvider];
  [v11 activityWaveformTimeWindowDuration];
  v13 = v12;

  sampleRate = self->_sampleRate;
  [MEMORY[0x1E69584A0] secondsForHostTime:{objc_msgSend(timeCopy, "hostTime")}];
  v15 = v13 + 0.2 + 0.5;
  self->_referenceMediaTime = v16;
  self->_emptyFramesToLeaveInInputBuffer = (self->_sampleRate * 0.5);
  VMAudio::ICRingBuffer<float>::allocate(&self->_ringBuffer, (sampleRate * v15), 1, 0);
  v17 = objc_alloc_init(ICAmplitudeAnalyzer);
  mainQueueAmplitudeAnalyzer = self->_mainQueueAmplitudeAnalyzer;
  self->_mainQueueAmplitudeAnalyzer = v17;

  v19 = objc_alloc_init(ICAmplitudeAnalyzer);
  audioQueueAmplitudeAnalyzer = self->_audioQueueAmplitudeAnalyzer;
  self->_audioQueueAmplitudeAnalyzer = v19;

  v21 = +[ICRecorderStyleProvider sharedStyleProvider];
  [v21 activityWaveformRunningAverageDuration];

  operator new();
}

- (void)_tearDown
{
  v3.n128_f64[0] = VMAudio::ICRingBuffer<float>::deallocate(&self->_ringBuffer);
  rollingSumBuffer = self->_rollingSumBuffer;
  if (rollingSumBuffer)
  {
    v5 = *rollingSumBuffer;
    if (*rollingSumBuffer)
    {
      rollingSumBuffer[1] = v5;
      operator delete(v5);
    }

    MEMORY[0x1DA6D7940](rollingSumBuffer, 0x1080C400A8FA341, v3);
  }

  self->_isPrepared = 0;
}

- (void)processAudioBuffer:(id)buffer
{
  bufferCopy = buffer;
  floatChannelData = [bufferCopy floatChannelData];
  frameLength = [bufferCopy frameLength];
  v7 = frameLength;
  if (frameLength)
  {
    mCapacity = self->_ringBuffer.mCapacity;
    v9 = atomic_load(&self->_ringBuffer.mFill);
    if (mCapacity - v9 < frameLength)
    {
      [(ICActivityWaveformProcessor *)self consumeRingBufferIfNecessary];
    }

    v10 = self->_ringBuffer.mCapacity;
    v11 = atomic_load(&self->_ringBuffer.mFill);
    v12 = -1.0;
    if (v10 - v11 >= v7)
    {
      memcpy(*self->_ringBuffer.mWritePointers, *floatChannelData, 4 * v7);
      VMAudio::ICRingBuffer<float>::advanceWritePointer(&self->_ringBuffer, v7);
      [(ICAmplitudeAnalyzer *)self->_audioQueueAmplitudeAnalyzer calculateAmplitude:floatChannelData sampleCount:v7 channelCount:1];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__ICActivityWaveformProcessor_processAudioBuffer___block_invoke;
    v13[3] = &unk_1E8469718;
    v14 = v12;
    v13[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

uint64_t __50__ICActivityWaveformProcessor_processAudioBuffer___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  if (*&a2 != -1.0)
  {
    a2 = VMRollingSumBuffer::add(*(*(a1 + 32) + 72), *&a2);
  }

  v3 = *(a1 + 32);

  return [v3 consumeRingBufferIfNecessary];
}

- (BOOL)getAmplitudes:(float *)amplitudes count:(int)count startTime:(double)time endTime:(double)endTime
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (!self->_isPrepared)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_readerLock);
  referenceMediaTime = self->_referenceMediaTime;
  sampleRate = self->_sampleRate;
  _bufferRange = [(ICActivityWaveformProcessor *)self _bufferRange];
  if (count < 1)
  {
    v21 = 1;
  }

  else
  {
    v15 = _bufferRange;
    v16 = 0;
    v17 = ((time - referenceMediaTime) * sampleRate);
    v18 = (endTime - time) / count;
    v19 = v14 + _bufferRange;
    countCopy = count;
    v21 = 1;
    do
    {
      v22 = (v18 * self->_sampleRate);
      v23 = (v16 * v22);
      v24 = v23 + v17;
      if (v15 <= v23 + v17)
      {
        v25 = v23 + v17;
      }

      else
      {
        v25 = v15;
      }

      v26 = v24 + v22;
      if (v19 < v26)
      {
        v26 = v19;
      }

      v27 = v26 - v25;
      v28 = (v27 & ~(v27 >> 63)) == v22;
      if (v27 < 1)
      {
        v30 = 0.0;
      }

      else
      {
        v29 = v25 - self->_inputBufferReadPosition;
        v32[0] = 0;
        v32[0] = &(*self->_ringBuffer.mReadPointers)[v29];
        [ICAmplitudeAnalyzer calculateAmplitude:"calculateAmplitude:sampleCount:channelCount:" sampleCount:v32 channelCount:?];
      }

      v21 &= v28;
      amplitudes[v16++] = v30;
    }

    while (countCopy != v16);
  }

  os_unfair_lock_unlock(&self->_readerLock);
  [(ICActivityWaveformProcessor *)self consumeRingBufferIfNecessary];
  return v21;
}

- (int)_excessFrames
{
  mCapacity = self->_ringBuffer.mCapacity;
  v3 = atomic_load(&self->_ringBuffer.mFill);
  v4 = mCapacity - v3;
  emptyFramesToLeaveInInputBuffer = self->_emptyFramesToLeaveInInputBuffer;
  v6 = emptyFramesToLeaveInInputBuffer >= v4;
  v7 = emptyFramesToLeaveInInputBuffer - v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (void)consumeRingBufferIfNecessary
{
  if ([(ICActivityWaveformProcessor *)self _excessFrames]>= 1)
  {
    os_unfair_lock_lock(&self->_readerLock);
    _excessFrames = [(ICActivityWaveformProcessor *)self _excessFrames];
    if (_excessFrames >= 1)
    {
      v4 = _excessFrames;
      VMAudio::ICRingBuffer<float>::advanceReadPointer(&self->_ringBuffer, _excessFrames);
      self->_inputBufferReadPosition += v4;
    }

    os_unfair_lock_unlock(&self->_readerLock);
  }
}

- (float)runningAverage
{
  result = 0.0;
  if (self->_isPrepared)
  {
    rollingSumBuffer = self->_rollingSumBuffer;
    v4 = rollingSumBuffer[5];
    return v4 / *(rollingSumBuffer + 6);
  }

  return result;
}

- (VMFrameRange)_bufferRange
{
  inputBufferReadPosition = self->_inputBufferReadPosition;
  v3 = atomic_load(&self->_ringBuffer.mFill);
  v4 = v3;
  v5 = inputBufferReadPosition;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (ICActivityWaveformProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end