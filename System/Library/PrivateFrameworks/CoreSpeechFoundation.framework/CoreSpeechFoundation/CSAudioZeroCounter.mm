@interface CSAudioZeroCounter
- (CSAudioZeroCounter)initWithToken:(id)token sampleRate:(float)rate numChannels:(unsigned int)channels;
- (void)getZeroStatisticsFromBuffer:(id)buffer entireSamples:(unsigned int)samples;
- (void)resetWithSampleRate:(float)rate;
- (void)stopCountingZeroStatisticsWithReporter:(id)reporter;
@end

@implementation CSAudioZeroCounter

- (void)stopCountingZeroStatisticsWithReporter:(id)reporter
{
  v17 = *MEMORY[0x1E69E9840];
  reporterCopy = reporter;
  continuousZeroCounter = self->_continuousZeroCounter;
  if (continuousZeroCounter > self->_zeroCounterWinSzForCSLogging)
  {
    v7 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      methodToken = self->_methodToken;
      v11 = 136315650;
      v12 = "[CSAudioZeroCounter stopCountingZeroStatisticsWithReporter:]";
      v13 = 2112;
      v14 = methodToken;
      v15 = 1026;
      v16 = continuousZeroCounter;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s In %@: Continuous digital zero detected, lasting %{public}u samples per channel", &v11, 0x1Cu);
    }
  }

  maxContinuousZeroCount = self->_maxContinuousZeroCount;
  if (maxContinuousZeroCount > self->_zeroCounterWinSzForReport)
  {
    *&v5 = maxContinuousZeroCount;
    [reporterCopy reportDigitalZerosWithAudioZeroRun:v5];
  }

  self->_continuousZeroCounter = 0;
  self->_maxContinuousZeroCount = 0;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getZeroStatisticsFromBuffer:(id)buffer entireSamples:(unsigned int)samples
{
  v30 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  bytes = [bufferCopy bytes];
  if (!self->_shouldDeinterleaveAudio)
  {
    samples /= self->_numChannels;
  }

  if (samples)
  {
    v8 = 0;
    while (!*(bytes + 2 * v8))
    {
      zeroCounterWinSzForCSLogging = self->_zeroCounterWinSzForCSLogging;
      v16 = self->_continuousZeroCounter + 1;
      self->_continuousZeroCounter = v16;
      if (v16 > zeroCounterWinSzForCSLogging)
      {
        loggingSampleHeartBeat = self->_loggingSampleHeartBeat;
        if (!(loggingSampleHeartBeat % self->_zeroCounterHeartBeatThreshold))
        {
          v18 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
          {
            methodToken = self->_methodToken;
            *buf = 136315650;
            v25 = "[CSAudioZeroCounter getZeroStatisticsFromBuffer:entireSamples:]";
            v26 = 2112;
            v27 = methodToken;
            v28 = 1026;
            v29 = v16;
            _os_log_error_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_ERROR, "%s In %@: Continuous digital zero in this audio chunk detected, lasting %{public}u samples per channel", buf, 0x1Cu);
            loggingSampleHeartBeat = self->_loggingSampleHeartBeat;
          }
        }

        v14 = loggingSampleHeartBeat + 1;
        goto LABEL_18;
      }

LABEL_19:
      v8 += self->_analyzeStep;
      if (v8 >= samples)
      {
        goto LABEL_20;
      }
    }

    maxContinuousZeroCount = self->_maxContinuousZeroCount;
    continuousZeroCounter = self->_continuousZeroCounter;
    v11 = self->_zeroCounterWinSzForCSLogging;
    if (maxContinuousZeroCount <= continuousZeroCounter)
    {
      maxContinuousZeroCount = self->_continuousZeroCounter;
    }

    self->_maxContinuousZeroCount = maxContinuousZeroCount;
    if (continuousZeroCounter > v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v19 = self->_methodToken;
        v20 = self->_continuousZeroCounter;
        *buf = 136315650;
        v25 = "[CSAudioZeroCounter getZeroStatisticsFromBuffer:entireSamples:]";
        v26 = 2112;
        v27 = v19;
        v28 = 1026;
        v29 = v20;
        _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s In %@: Continuous digital zero ended, lasting %{public}u samples per channel", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v12);
    }

    v14 = 0;
    self->_continuousZeroCounter = 0;
LABEL_18:
    self->_loggingSampleHeartBeat = v14;
    goto LABEL_19;
  }

LABEL_20:
  v22 = self->_continuousZeroCounter;
  if (v22)
  {
    if (self->_maxContinuousZeroCount > v22)
    {
      v22 = self->_maxContinuousZeroCount;
    }

    self->_maxContinuousZeroCount = v22;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)resetWithSampleRate:(float)rate
{
  self->_sampleRate = rate;
  self->_zeroCounterWinSzForCSLogging = ((+[CSConfig zeroFilterWindowSizeInMsForCSLogging]/ 1000.0) * rate);
  self->_zeroCounterWinSzForReport = ((+[CSConfig zeroFilterWindowSizeInMsForReport]/ 1000.0) * rate);
  v5 = +[CSConfig zeroFilterCSLoggingHeartBeatThresholdInMS];
  self->_maxContinuousZeroCount = 0;
  *&self->_zeroCounterHeartBeatThreshold = ((v5 / 1000.0) * rate);
}

- (CSAudioZeroCounter)initWithToken:(id)token sampleRate:(float)rate numChannels:(unsigned int)channels
{
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = CSAudioZeroCounter;
  v10 = [(CSAudioZeroCounter *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_continuousZeroCounter = 0;
    objc_storeStrong(&v10->_methodToken, token);
    v11->_sampleRate = rate;
    v11->_numChannels = channels;
    v11->_zeroCounterWinSzForCSLogging = ((+[CSConfig zeroFilterWindowSizeInMsForCSLogging]/ 1000.0) * rate);
    v11->_zeroCounterHeartBeatThreshold = ((+[CSConfig zeroFilterCSLoggingHeartBeatThresholdInMS]/ 1000.0) * rate);
    v11->_zeroCounterWinSzForReport = ((+[CSConfig zeroFilterWindowSizeInMsForReport]/ 1000.0) * rate);
    v12 = +[CSUtils shouldDeinterleaveAudioOnCS];
    v11->_shouldDeinterleaveAudio = v12;
    if (v12)
    {
      numChannels = v11->_numChannels;
    }

    else
    {
      numChannels = 1;
    }

    v11->_analyzeStep = numChannels;
    v11->_maxContinuousZeroCount = 0;
    v11->_loggingSampleHeartBeat = 0;
  }

  return v11;
}

@end