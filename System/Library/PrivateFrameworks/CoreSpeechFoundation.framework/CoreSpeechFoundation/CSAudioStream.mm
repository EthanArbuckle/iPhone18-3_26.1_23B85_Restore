@interface CSAudioStream
- (BOOL)isNarrowBand;
- (BOOL)isStreaming;
- (BOOL)prepareAudioStreamSyncWithRequest:(id)request error:(id *)error;
- (CSAudioStream)initWithAudioStreamProvider:(id)provider streamName:(id)name streamRequest:(id)request;
- (CSAudioStreamProviding)streamProvider;
- (CSAudioStreamProvidingDelegate)delegate;
- (id)recordSettings;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider audioChunkForTVAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didHardwareConfigurationChange:(int64_t)change;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)audioStreamProvider:(id)provider numSamplesAvailableInExclave:(unint64_t)exclave hostTime:(unint64_t)time arrivalHostTimeToAudioRecorder:(unint64_t)recorder exclaveSampleCount:(unint64_t)count;
- (void)dealloc;
- (void)prepareAudioStreamWithRequest:(id)request completion:(id)completion;
- (void)setName:(id)name;
- (void)setStartStreamOption:(id)option;
- (void)startAudioStreamWithOption:(id)option completion:(id)completion;
- (void)stopAudioStreamWithOption:(id)option completion:(id)completion;
- (void)updateAudioStreamStartTimeInSampleCount:(unint64_t)count;
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
    name = [(CSAudioStream *)self name];
    v8 = 136315650;
    v9 = "[CSAudioStream isStreaming]";
    v10 = 2114;
    v11 = name;
    v12 = 1026;
    streaming = [(CSAudioStream *)self streaming];
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
    name = [(CSAudioStream *)self name];
    *buf = 136315394;
    v9 = "[CSAudioStream dealloc]";
    v10 = 2114;
    v11 = name;
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

- (void)audioStreamProvider:(id)provider didHardwareConfigurationChange:(int64_t)change
{
  v18 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    name = [(CSAudioStream *)self name];
    v14 = 136315394;
    v15 = "[CSAudioStream audioStreamProvider:didHardwareConfigurationChange:]";
    v16 = 2114;
    v17 = name;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s AudioStream<%{public}@> has received didHardwareConfigurationChange", &v14, 0x16u);
  }

  delegate = [(CSAudioStream *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CSAudioStream *)self delegate];
    [delegate2 audioStreamProvider:providerCopy didHardwareConfigurationChange:change];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)audioStreamProvider:(id)provider numSamplesAvailableInExclave:(unint64_t)exclave hostTime:(unint64_t)time arrivalHostTimeToAudioRecorder:(unint64_t)recorder exclaveSampleCount:(unint64_t)count
{
  providerCopy = provider;
  delegate = [(CSAudioStream *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CSAudioStream *)self delegate];
    [delegate2 audioStreamProvider:providerCopy numSamplesAvailableInExclave:exclave hostTime:time arrivalHostTimeToAudioRecorder:recorder exclaveSampleCount:count];
  }
}

- (void)audioStreamProvider:(id)provider audioChunkForTVAvailable:(id)available
{
  providerCopy = provider;
  availableCopy = available;
  delegate = [(CSAudioStream *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CSAudioStream *)self delegate];
    [delegate2 audioStreamProvider:providerCopy audioChunkForTVAvailable:availableCopy];
  }
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  providerCopy = provider;
  availableCopy = available;
  delegate = [(CSAudioStream *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CSAudioStream *)self delegate];
    [delegate2 audioStreamProvider:providerCopy audioBufferAvailable:availableCopy];
  }
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
{
  v29 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  [(CSAudioStream *)self setStreamingUUID:0];
  [(CSAudioStream *)self setStreaming:0];
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    name = [(CSAudioStream *)self name];
    *buf = 136315394;
    v26 = "[CSAudioStream audioStreamProvider:didStopStreamUnexpectedly:]";
    v27 = 2114;
    v28 = name;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s AudioStream<%{public}@> has received didStopStreamUnexpectedly", buf, 0x16u);
  }

  delegate = [(CSAudioStream *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CSAudioStream *)self delegate];
    [delegate2 audioStreamProvider:providerCopy didStopStreamUnexpectedly:unexpectedly];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tandemStreams = [(CSAudioStream *)self tandemStreams];
  v14 = [tandemStreams countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(tandemStreams);
        }

        [*(*(&v20 + 1) + 8 * v17++) audioStreamProvider:providerCopy didStopStreamUnexpectedly:unexpectedly];
      }

      while (v15 != v17);
      v15 = [tandemStreams countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  tandemStreams2 = [(CSAudioStream *)self tandemStreams];
  [tandemStreams2 removeAllObjects];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setStartStreamOption:(id)option
{
  v18 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  objc_storeStrong(&self->_startStreamOption, option);
  v6 = [[CSAudioStartStreamOption alloc] initTandemWithOption:optionCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tandemStreams = [(CSAudioStream *)self tandemStreams];
  v8 = [tandemStreams countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(tandemStreams);
        }

        [*(*(&v13 + 1) + 8 * v11++) setStartStreamOption:v6];
      }

      while (v9 != v11);
      v9 = [tandemStreams countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateAudioStreamStartTimeInSampleCount:(unint64_t)count
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    name = [(CSAudioStream *)self name];
    *buf = 136315650;
    v20 = "[CSAudioStream updateAudioStreamStartTimeInSampleCount:]";
    v21 = 2114;
    v22 = name;
    v23 = 2050;
    countCopy = count;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Stream %{public}@ set startTimeInSampleCount : %{public}llu", buf, 0x20u);
  }

  self->_startSampleCount = count;
  self->_lastForwardedSampleCount = count;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  tandemStreams = [(CSAudioStream *)self tandemStreams];
  v9 = [tandemStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(tandemStreams);
        }

        [*(*(&v14 + 1) + 8 * v12++) updateAudioStreamStartTimeInSampleCount:count];
      }

      while (v10 != v12);
      v10 = [tandemStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isNarrowBand
{
  streamProvider = [(CSAudioStream *)self streamProvider];
  isNarrowBand = [streamProvider isNarrowBand];

  return isNarrowBand;
}

- (id)recordSettings
{
  streamProvider = [(CSAudioStream *)self streamProvider];
  recordSettings = [streamProvider recordSettings];

  return recordSettings;
}

- (void)stopAudioStreamWithOption:(id)option completion:(id)completion
{
  optionCopy = option;
  completionCopy = completion;
  streamProvider = [(CSAudioStream *)self streamProvider];

  if (streamProvider)
  {
    [(CSAudioStream *)self setStreamingUUID:0];
    streamProvider2 = [(CSAudioStream *)self streamProvider];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__CSAudioStream_stopAudioStreamWithOption_completion___block_invoke;
    v11[3] = &unk_1E865C238;
    v11[4] = self;
    v12 = completionCopy;
    [streamProvider2 stopAudioStream:self option:optionCopy completion:v11];
  }

  else if (completionCopy)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v10);
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

- (void)startAudioStreamWithOption:(id)option completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  completionCopy = completion;
  streamProvider = [(CSAudioStream *)self streamProvider];

  if (streamProvider)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(CSAudioStream *)self setStreamingUUID:uUID];
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[CSAudioStream startAudioStreamWithOption:completion:]";
      v21 = 2114;
      v22 = uUID;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Creating UUID for start audio stream request : %{public}@", buf, 0x16u);
    }

    streamProvider2 = [(CSAudioStream *)self streamProvider];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CSAudioStream_startAudioStreamWithOption_completion___block_invoke;
    v15[3] = &unk_1E865B128;
    v16 = uUID;
    selfCopy = self;
    v18 = completionCopy;
    v12 = uUID;
    [streamProvider2 startAudioStream:self option:optionCopy completion:v15];
  }

  else if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v13);
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

- (void)prepareAudioStreamWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  streamProvider = [(CSAudioStream *)self streamProvider];
  [streamProvider prepareAudioStream:self request:requestCopy completion:completionCopy];
}

- (BOOL)prepareAudioStreamSyncWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  streamProvider = [(CSAudioStream *)self streamProvider];
  LOBYTE(error) = [streamProvider prepareAudioStreamSync:self request:requestCopy error:error];

  return error;
}

- (void)setName:(id)name
{
  v6 = [name stringByAppendingFormat:@"-%@", self->_UUID];
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;
}

- (CSAudioStream)initWithAudioStreamProvider:(id)provider streamName:(id)name streamRequest:(id)request
{
  v28 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  nameCopy = name;
  requestCopy = request;
  v23.receiver = self;
  v23.super_class = CSAudioStream;
  v11 = [(CSAudioStream *)&v23 init];
  v12 = v11;
  if (v11)
  {
    [(CSAudioStream *)v11 setStreamProvider:providerCopy];
    [(CSAudioStream *)v12 setStreaming:0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    UUID = v12->_UUID;
    v12->_UUID = uUIDString;

    [(CSAudioStream *)v12 setName:nameCopy];
    [(CSAudioStream *)v12 setStreamRequest:requestCopy];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    tandemStreams = v12->_tandemStreams;
    v12->_tandemStreams = weakObjectsHashTable;

    v12->_needsBoost12dB = 0;
    v18 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      name = [(CSAudioStream *)v12 name];
      *buf = 136315394;
      v25 = "[CSAudioStream initWithAudioStreamProvider:streamName:streamRequest:]";
      v26 = 2114;
      v27 = name;
      _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s stream %{public}@ initialized", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

@end