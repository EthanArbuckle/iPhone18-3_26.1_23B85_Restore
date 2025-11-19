@interface CSAudioProcessWaitingBuffer
- (CSAudioProcessWaitingBuffer)initWithUUID:(id)a3 waitingBufferMaxLengthInSec:(float)a4;
- (void)addAudioChunk:(id)a3;
- (void)addAudioChunk:(id)a3 withBufferedTimestamp:(id)a4;
- (void)dealloc;
@end

@implementation CSAudioProcessWaitingBuffer

- (void)addAudioChunk:(id)a3 withBufferedTimestamp:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    bufferedSampleCount = self->_bufferedSampleCount;
    if ([v10 numSamples] + bufferedSampleCount <= self->_maxWaitingBufferSizeInSampleCount)
    {
      buffer = self->_buffer;
      v9 = [[CSAudioChunkWithBufferedTimestamp alloc] initWithAudioChunk:v10 bufferedTimestamp:v6];
      [(NSMutableArray *)buffer addObject:v9];

      self->_bufferedSampleCount += [v10 numSamples];
    }
  }
}

- (void)addAudioChunk:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [[v4 alloc] initWithUnsignedLongLong:0];
  [(CSAudioProcessWaitingBuffer *)self addAudioChunk:v5 withBufferedTimestamp:v6];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAudioProcessWaitingBuffer dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSAudioProcessWaitingBuffer deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CSAudioProcessWaitingBuffer;
  [(CSAudioProcessWaitingBuffer *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (CSAudioProcessWaitingBuffer)initWithUUID:(id)a3 waitingBufferMaxLengthInSec:(float)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v15.receiver = self;
  v15.super_class = CSAudioProcessWaitingBuffer;
  v8 = [(CSAudioProcessWaitingBuffer *)&v15 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    buffer = v8->_buffer;
    v8->_buffer = v9;

    objc_storeStrong(&v8->_uuid, a3);
    +[CSConfig inputRecordingSampleRate];
    v8->_maxWaitingBufferSizeInSampleCount = (v11 * a4);
    v8->_bufferedSampleCount = 0;
    v12 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[CSAudioProcessWaitingBuffer initWithUUID:waitingBufferMaxLengthInSec:]";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s uuid = %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

@end