@interface CSAudioPreprocessor
- (CSAudioPreprocessorDelegate)delegate;
- (id)_fetchCurrentMetrics;
- (void)_reportMetrics;
- (void)beepCancellerDidCancelSamples:(id)samples buffer:(id)buffer timestamp:(unint64_t)timestamp;
- (void)flush;
- (void)processBuffer:(id)buffer atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder;
- (void)reportMetricsForSiriRequestWithUUID:(id)d;
- (void)willBeepWithRecordRoute:(id)route playbackRoute:(id)playbackRoute;
- (void)zeroFilter:(id)filter zeroFilteredBufferAvailable:(id)available atHostTime:(unint64_t)time;
@end

@implementation CSAudioPreprocessor

- (CSAudioPreprocessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)flush
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAudioPreprocessor flush]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Flushing audio preprocessor", &v9, 0xCu);
  }

  zeroFilter = [(CSAudioPreprocessor *)self zeroFilter];
  [zeroFilter flush];

  beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];
  [beepCanceller flush];

  zeroCounter = self->_zeroCounter;
  v7 = +[CSVoiceTriggerStatAggregator sharedAggregator];
  [(CSAudioZeroCounter *)zeroCounter stopCountingZeroStatisticsWithReporter:v7];

  [(CSAudioPreprocessor *)self _reportMetrics];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_reportMetrics
{
  _fetchCurrentMetrics = [(CSAudioPreprocessor *)self _fetchCurrentMetrics];
  if (_fetchCurrentMetrics)
  {
    v4 = _fetchCurrentMetrics;
    mEMORY[0x1E698D0C0] = [MEMORY[0x1E698D0C0] sharedAnalytics];
    [mEMORY[0x1E698D0C0] logEventWithType:241 context:v4];

    _fetchCurrentMetrics = v4;
  }
}

- (id)_fetchCurrentMetrics
{
  v15 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  metrics = [(CSVoiceTriggerAwareZeroFilter *)self->_zeroFilter metrics];
  if (metrics)
  {
    [dictionary setObject:metrics forKey:@"ZeroFilterMetrics"];
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSAudioPreprocessor _fetchCurrentMetrics]";
      v13 = 2114;
      v14 = metrics;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Zero Filter Metrics: %{public}@", &v11, 0x16u);
    }
  }

  metrics2 = [(CSBeepCanceller *)self->_beepCanceller metrics];
  if (metrics2)
  {
    [dictionary setObject:metrics2 forKey:@"BeepCancellerMetrics"];
    v7 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSAudioPreprocessor _fetchCurrentMetrics]";
      v13 = 2114;
      v14 = metrics2;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Beep Canceller Metrics : %{public}@", &v11, 0x16u);
    }
  }

  v8 = [dictionary mutableCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)beepCancellerDidCancelSamples:(id)samples buffer:(id)buffer timestamp:(unint64_t)timestamp
{
  bufferCopy = buffer;
  delegate = [(CSAudioPreprocessor *)self delegate];
  [delegate audioPreprocessor:self hasAvailableBuffer:bufferCopy atTime:timestamp arrivalTimestampToAudioRecorder:0 numberOfChannels:self->_numChannels];
}

- (void)zeroFilter:(id)filter zeroFilteredBufferAvailable:(id)available atHostTime:(unint64_t)time
{
  availableCopy = available;
  beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];

  if (beepCanceller)
  {
    beepCanceller2 = [(CSAudioPreprocessor *)self beepCanceller];
    [beepCanceller2 cancelBeepFromSamples:availableCopy timestamp:time];
  }

  else
  {
    beepCanceller2 = [(CSAudioPreprocessor *)self delegate];
    [beepCanceller2 audioPreprocessor:self hasAvailableBuffer:availableCopy atTime:time arrivalTimestampToAudioRecorder:0 numberOfChannels:self->_numChannels];
  }
}

- (void)reportMetricsForSiriRequestWithUUID:(id)d
{
  v4 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v8 = [[v4 alloc] initWithUUIDString:dCopy];

  if (v8)
  {
    _fetchCurrentMetrics = [(CSAudioPreprocessor *)self _fetchCurrentMetrics];
    if (_fetchCurrentMetrics)
    {
      v7 = +[CSFAudioMetricsSelfLogger sharedLogger];
      [v7 logCoreSpeechPreprocessorCompletedWithMHUUID:v8 withMetricsDictionary:_fetchCurrentMetrics];
    }
  }
}

- (void)willBeepWithRecordRoute:(id)route playbackRoute:(id)playbackRoute
{
  if (![CSUtils isHeadphoneDeviceWithRecordRoute:route playbackRoute:playbackRoute])
  {
    beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];
    [beepCanceller willBeep];
  }
}

- (void)processBuffer:(id)buffer atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder
{
  bufferCopy = buffer;
  v14 = bufferCopy;
  if (self->_numChannels > 1)
  {
    delegate = [(CSAudioPreprocessor *)self delegate];
    [delegate audioPreprocessor:self hasAvailableBuffer:v14 atTime:time arrivalTimestampToAudioRecorder:recorder numberOfChannels:self->_numChannels];
    v10 = v14;
  }

  else
  {
    -[CSAudioZeroCounter getZeroStatisticsFromBuffer:entireSamples:](self->_zeroCounter, "getZeroStatisticsFromBuffer:entireSamples:", bufferCopy, ([bufferCopy length] >> 1) / +[CSConfig inputRecordingNumberOfChannels](CSConfig, "inputRecordingNumberOfChannels"));
    upsampler = [(CSAudioPreprocessor *)self upsampler];

    v10 = v14;
    if (upsampler)
    {
      v10 = [(CSAudioSampleRateConverter *)self->_upsampler convertSampleRateOfBuffer:v14];
    }

    zeroFilter = [(CSAudioPreprocessor *)self zeroFilter];

    if (zeroFilter)
    {
      delegate = [(CSAudioPreprocessor *)self zeroFilter];
      [delegate processBuffer:v10 atTime:time];
    }

    else
    {
      beepCanceller = [(CSAudioPreprocessor *)self beepCanceller];

      if (beepCanceller)
      {
        delegate = [(CSAudioPreprocessor *)self beepCanceller];
        [delegate cancelBeepFromSamples:v10 timestamp:time];
      }

      else
      {
        delegate = [(CSAudioPreprocessor *)self delegate];
        [delegate audioPreprocessor:self hasAvailableBuffer:v10 atTime:time arrivalTimestampToAudioRecorder:recorder numberOfChannels:self->_numChannels];
      }
    }
  }
}

@end