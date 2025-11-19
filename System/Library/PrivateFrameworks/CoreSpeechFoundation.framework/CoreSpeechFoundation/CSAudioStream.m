@interface CSAudioStream
- (BOOL)isNarrowBand;
- (BOOL)isStreaming;
- (BOOL)prepareAudioStreamSyncWithRequest:(id)a3 error:(id *)a4;
- (CSAudioStream)initWithAudioStreamProvider:(id)a3 streamName:(id)a4 streamRequest:(id)a5;
- (CSAudioStreamProviding)streamProvider;
- (CSAudioStreamProvidingDelegate)delegate;
- (id)recordSettings;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 audioChunkForTVAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didHardwareConfigurationChange:(int64_t)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)audioStreamProvider:(id)a3 numSamplesAvailableInExclave:(unint64_t)a4 hostTime:(unint64_t)a5 arrivalHostTimeToAudioRecorder:(unint64_t)a6 exclaveSampleCount:(unint64_t)a7;
- (void)dealloc;
- (void)prepareAudioStreamWithRequest:(id)a3 completion:(id)a4;
- (void)setName:(id)a3;
- (void)setStartStreamOption:(id)a3;
- (void)startAudioStreamWithOption:(id)a3 completion:(id)a4;
- (void)stopAudioStreamWithOption:(id)a3 completion:(id)a4;
- (void)updateAudioStreamStartTimeInSampleCount:(unint64_t)a3;
@end

@implementation CSAudioStream

- (CSAudioStreamProviding)streamProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_streamProvider);

  return WeakRetained;
}

- (BOOL)isStreaming
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSAudioStream *)self name];
    v8 = 136315650;
    v9 = "[CSAudioStream isStreaming]";
    v10 = 2114;
    v11 = v5;
    v12 = 1026;
    v13 = [(CSAudioStream *)self streaming];
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s AudioStream<%{public}@> is streaming : %{public}d", &v8, 0x1Cu);
  }

  result = [(CSAudioStream *)self streaming];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSAudioStream *)self name];
    *buf = 136315394;
    v9 = "[CSAudioStream dealloc]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s stream %{public}@ is deallocated", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = CSAudioStream;
  [(CSAudioStream *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (CSAudioStreamProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)audioStreamProvider:(id)a3 didHardwareConfigurationChange:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(CSAudioStream *)self name];
    v14 = 136315394;
    v15 = "[CSAudioStream audioStreamProvider:didHardwareConfigurationChange:]";
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s AudioStream<%{public}@> has received didHardwareConfigurationChange", &v14, 0x16u);
  }

  v10 = [(CSAudioStream *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CSAudioStream *)self delegate];
    [v12 audioStreamProvider:v6 didHardwareConfigurationChange:a4];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)audioStreamProvider:(id)a3 numSamplesAvailableInExclave:(unint64_t)a4 hostTime:(unint64_t)a5 arrivalHostTimeToAudioRecorder:(unint64_t)a6 exclaveSampleCount:(unint64_t)a7
{
  v15 = a3;
  v12 = [(CSAudioStream *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CSAudioStream *)self delegate];
    [v14 audioStreamProvider:v15 numSamplesAvailableInExclave:a4 hostTime:a5 arrivalHostTimeToAudioRecorder:a6 exclaveSampleCount:a7];
  }
}

- (void)audioStreamProvider:(id)a3 audioChunkForTVAvailable:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CSAudioStream *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CSAudioStream *)self delegate];
    [v9 audioStreamProvider:v10 audioChunkForTVAvailable:v6];
  }
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CSAudioStream *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CSAudioStream *)self delegate];
    [v9 audioStreamProvider:v10 audioBufferAvailable:v6];
  }
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CSAudioStream *)self setStreamingUUID:0];
  [(CSAudioStream *)self setStreaming:0];
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(CSAudioStream *)self name];
    *buf = 136315394;
    v26 = "[CSAudioStream audioStreamProvider:didStopStreamUnexpectedly:]";
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s AudioStream<%{public}@> has received didStopStreamUnexpectedly", buf, 0x16u);
  }

  v10 = [(CSAudioStream *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CSAudioStream *)self delegate];
    [v12 audioStreamProvider:v6 didStopStreamUnexpectedly:a4];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(CSAudioStream *)self tandemStreams];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v20 + 1) + 8 * v17++) audioStreamProvider:v6 didStopStreamUnexpectedly:a4];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v18 = [(CSAudioStream *)self tandemStreams];
  [v18 removeAllObjects];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setStartStreamOption:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_startStreamOption, a3);
  v6 = [[CSAudioStartStreamOption alloc] initTandemWithOption:v5];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(CSAudioStream *)self tandemStreams];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) setStartStreamOption:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateAudioStreamStartTimeInSampleCount:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(CSAudioStream *)self name];
    *buf = 136315650;
    v20 = "[CSAudioStream updateAudioStreamStartTimeInSampleCount:]";
    v21 = 2114;
    v22 = v7;
    v23 = 2050;
    v24 = a3;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Stream %{public}@ set startTimeInSampleCount : %{public}llu", buf, 0x20u);
  }

  self->_startSampleCount = a3;
  self->_lastForwardedSampleCount = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(CSAudioStream *)self tandemStreams];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) updateAudioStreamStartTimeInSampleCount:a3];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isNarrowBand
{
  v2 = [(CSAudioStream *)self streamProvider];
  v3 = [v2 isNarrowBand];

  return v3;
}

- (id)recordSettings
{
  v2 = [(CSAudioStream *)self streamProvider];
  v3 = [v2 recordSettings];

  return v3;
}

- (void)stopAudioStreamWithOption:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSAudioStream *)self streamProvider];

  if (v8)
  {
    [(CSAudioStream *)self setStreamingUUID:0];
    v9 = [(CSAudioStream *)self streamProvider];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__CSAudioStream_stopAudioStreamWithOption_completion___block_invoke;
    v11[3] = &unk_1E865C238;
    v11[4] = self;
    v12 = v7;
    [v9 stopAudioStream:self option:v6 completion:v11];
  }

  else if (v7)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
    (*(v7 + 2))(v7, 0, v10);
  }
}

void __54__CSAudioStream_stopAudioStreamWithOption_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) streamingUUID];

    if (!v6)
    {
      [*(a1 + 32) setStreaming:0];
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = [*(a1 + 32) tandemStreams];
  v9 = [v8 count];

  if (v9)
  {
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v11 tandemStreams];
      *buf = 136315394;
      v29 = "[CSAudioStream stopAudioStreamWithOption:completion:]_block_invoke";
      v30 = 2050;
      v31 = [v13 count];
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Delivering didStop to %{public}lu tandem stream(s)", buf, 0x16u);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [*(a1 + 32) tandemStreams];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        v20 = [*(a1 + 32) streamProvider];
        [v19 audioStreamProvider:v20 didStopStreamUnexpectedly:7];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = [*(a1 + 32) tandemStreams];
  [v21 removeAllObjects];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)startAudioStreamWithOption:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CSAudioStream *)self streamProvider];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    [(CSAudioStream *)self setStreamingUUID:v9];
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[CSAudioStream startAudioStreamWithOption:completion:]";
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Creating UUID for start audio stream request : %{public}@", buf, 0x16u);
    }

    v11 = [(CSAudioStream *)self streamProvider];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CSAudioStream_startAudioStreamWithOption_completion___block_invoke;
    v15[3] = &unk_1E865B128;
    v16 = v9;
    v17 = self;
    v18 = v7;
    v12 = v9;
    [v11 startAudioStream:self option:v6 completion:v15];
  }

  else if (v7)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
    (*(v7 + 2))(v7, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __55__CSAudioStream_startAudioStreamWithOption_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) streamingUUID];
    LODWORD(v6) = [v6 isEqual:v7];

    if (v6)
    {
      [*(a1 + 40) setStreaming:1];
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v10);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)prepareAudioStreamWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSAudioStream *)self streamProvider];
  [v8 prepareAudioStream:self request:v7 completion:v6];
}

- (BOOL)prepareAudioStreamSyncWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CSAudioStream *)self streamProvider];
  LOBYTE(a4) = [v7 prepareAudioStreamSync:self request:v6 error:a4];

  return a4;
}

- (void)setName:(id)a3
{
  v6 = [a3 stringByAppendingFormat:@"-%@", self->_UUID];
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;
}

- (CSAudioStream)initWithAudioStreamProvider:(id)a3 streamName:(id)a4 streamRequest:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = CSAudioStream;
  v11 = [(CSAudioStream *)&v23 init];
  v12 = v11;
  if (v11)
  {
    [(CSAudioStream *)v11 setStreamProvider:v8];
    [(CSAudioStream *)v12 setStreaming:0];
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    UUID = v12->_UUID;
    v12->_UUID = v14;

    [(CSAudioStream *)v12 setName:v9];
    [(CSAudioStream *)v12 setStreamRequest:v10];
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    tandemStreams = v12->_tandemStreams;
    v12->_tandemStreams = v16;

    v12->_needsBoost12dB = 0;
    v18 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [(CSAudioStream *)v12 name];
      *buf = 136315394;
      v25 = "[CSAudioStream initWithAudioStreamProvider:streamName:streamRequest:]";
      v26 = 2114;
      v27 = v20;
      _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s stream %{public}@ initialized", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

@end