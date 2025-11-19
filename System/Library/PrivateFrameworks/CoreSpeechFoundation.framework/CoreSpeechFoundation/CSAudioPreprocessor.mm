@interface CSAudioPreprocessor
- (CSAudioPreprocessorDelegate)delegate;
- (id)_fetchCurrentMetrics;
- (void)_reportMetrics;
- (void)beepCancellerDidCancelSamples:(id)a3 buffer:(id)a4 timestamp:(unint64_t)a5;
- (void)flush;
- (void)processBuffer:(id)a3 atTime:(unint64_t)a4 arrivalTimestampToAudioRecorder:(unint64_t)a5;
- (void)reportMetricsForSiriRequestWithUUID:(id)a3;
- (void)willBeepWithRecordRoute:(id)a3 playbackRoute:(id)a4;
- (void)zeroFilter:(id)a3 zeroFilteredBufferAvailable:(id)a4 atHostTime:(unint64_t)a5;
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

  v4 = [(CSAudioPreprocessor *)self zeroFilter];
  [v4 flush];

  v5 = [(CSAudioPreprocessor *)self beepCanceller];
  [v5 flush];

  zeroCounter = self->_zeroCounter;
  v7 = +[CSVoiceTriggerStatAggregator sharedAggregator];
  [(CSAudioZeroCounter *)zeroCounter stopCountingZeroStatisticsWithReporter:v7];

  [(CSAudioPreprocessor *)self _reportMetrics];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_reportMetrics
{
  v2 = [(CSAudioPreprocessor *)self _fetchCurrentMetrics];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x1E698D0C0] sharedAnalytics];
    [v3 logEventWithType:241 context:v4];

    v2 = v4;
  }
}

- (id)_fetchCurrentMetrics
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CSVoiceTriggerAwareZeroFilter *)self->_zeroFilter metrics];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"ZeroFilterMetrics"];
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSAudioPreprocessor _fetchCurrentMetrics]";
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Zero Filter Metrics: %{public}@", &v11, 0x16u);
    }
  }

  v6 = [(CSBeepCanceller *)self->_beepCanceller metrics];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"BeepCancellerMetrics"];
    v7 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSAudioPreprocessor _fetchCurrentMetrics]";
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Beep Canceller Metrics : %{public}@", &v11, 0x16u);
    }
  }

  v8 = [v3 mutableCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)beepCancellerDidCancelSamples:(id)a3 buffer:(id)a4 timestamp:(unint64_t)a5
{
  v7 = a4;
  v8 = [(CSAudioPreprocessor *)self delegate];
  [v8 audioPreprocessor:self hasAvailableBuffer:v7 atTime:a5 arrivalTimestampToAudioRecorder:0 numberOfChannels:self->_numChannels];
}

- (void)zeroFilter:(id)a3 zeroFilteredBufferAvailable:(id)a4 atHostTime:(unint64_t)a5
{
  v7 = a4;
  v8 = [(CSAudioPreprocessor *)self beepCanceller];

  if (v8)
  {
    v9 = [(CSAudioPreprocessor *)self beepCanceller];
    [v9 cancelBeepFromSamples:v7 timestamp:a5];
  }

  else
  {
    v9 = [(CSAudioPreprocessor *)self delegate];
    [v9 audioPreprocessor:self hasAvailableBuffer:v7 atTime:a5 arrivalTimestampToAudioRecorder:0 numberOfChannels:self->_numChannels];
  }
}

- (void)reportMetricsForSiriRequestWithUUID:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v8 = [[v4 alloc] initWithUUIDString:v5];

  if (v8)
  {
    v6 = [(CSAudioPreprocessor *)self _fetchCurrentMetrics];
    if (v6)
    {
      v7 = +[CSFAudioMetricsSelfLogger sharedLogger];
      [v7 logCoreSpeechPreprocessorCompletedWithMHUUID:v8 withMetricsDictionary:v6];
    }
  }
}

- (void)willBeepWithRecordRoute:(id)a3 playbackRoute:(id)a4
{
  if (![CSUtils isHeadphoneDeviceWithRecordRoute:a3 playbackRoute:a4])
  {
    v5 = [(CSAudioPreprocessor *)self beepCanceller];
    [v5 willBeep];
  }
}

- (void)processBuffer:(id)a3 atTime:(unint64_t)a4 arrivalTimestampToAudioRecorder:(unint64_t)a5
{
  v8 = a3;
  v14 = v8;
  if (self->_numChannels > 1)
  {
    v12 = [(CSAudioPreprocessor *)self delegate];
    [v12 audioPreprocessor:self hasAvailableBuffer:v14 atTime:a4 arrivalTimestampToAudioRecorder:a5 numberOfChannels:self->_numChannels];
    v10 = v14;
  }

  else
  {
    -[CSAudioZeroCounter getZeroStatisticsFromBuffer:entireSamples:](self->_zeroCounter, "getZeroStatisticsFromBuffer:entireSamples:", v8, ([v8 length] >> 1) / +[CSConfig inputRecordingNumberOfChannels](CSConfig, "inputRecordingNumberOfChannels"));
    v9 = [(CSAudioPreprocessor *)self upsampler];

    v10 = v14;
    if (v9)
    {
      v10 = [(CSAudioSampleRateConverter *)self->_upsampler convertSampleRateOfBuffer:v14];
    }

    v11 = [(CSAudioPreprocessor *)self zeroFilter];

    if (v11)
    {
      v12 = [(CSAudioPreprocessor *)self zeroFilter];
      [v12 processBuffer:v10 atTime:a4];
    }

    else
    {
      v13 = [(CSAudioPreprocessor *)self beepCanceller];

      if (v13)
      {
        v12 = [(CSAudioPreprocessor *)self beepCanceller];
        [v12 cancelBeepFromSamples:v10 timestamp:a4];
      }

      else
      {
        v12 = [(CSAudioPreprocessor *)self delegate];
        [v12 audioPreprocessor:self hasAvailableBuffer:v10 atTime:a4 arrivalTimestampToAudioRecorder:a5 numberOfChannels:self->_numChannels];
      }
    }
  }
}

@end