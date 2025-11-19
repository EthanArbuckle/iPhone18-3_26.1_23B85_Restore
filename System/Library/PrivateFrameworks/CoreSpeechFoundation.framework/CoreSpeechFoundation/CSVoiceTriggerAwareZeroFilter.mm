@interface CSVoiceTriggerAwareZeroFilter
- (CSVoiceTriggerAwareZeroFilter)init;
- (CSVoiceTriggerAwareZeroFilterDelegate)delegate;
- (void)flush;
- (void)processBuffer:(id)a3 atTime:(unint64_t)a4;
- (void)resetWithSampleRate:(float)a3 containsVoiceTrigger:(BOOL)a4 voiceTriggerInfo:(id)a5;
@end

@implementation CSVoiceTriggerAwareZeroFilter

- (CSVoiceTriggerAwareZeroFilterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)flush
{
  zeroFilter = self->_zeroFilter;
  v7 = 0;
  v4 = [(CSAudioZeroFilter *)zeroFilter endAudioAndFetchAnyTrailingZerosPacket:&v7];
  v5 = v7;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained zeroFilter:self zeroFilteredBufferAvailable:v5 atHostTime:v4];
  }
}

- (void)processBuffer:(id)a3 atTime:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 length];
  v8 = v7 >> 1;
  vtEndInSampleCount = self->_vtEndInSampleCount;
  numSamplesProcessed = self->_numSamplesProcessed;
  v11 = vtEndInSampleCount - numSamplesProcessed;
  if (vtEndInSampleCount < numSamplesProcessed)
  {
    v12 = v6;
    self->_numSamplesProcessed += v8;
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v8 >= v11)
  {
    v13 = vtEndInSampleCount - numSamplesProcessed;
  }

  else
  {
    v13 = v7 >> 1;
  }

  if (v13)
  {
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v6 length:{"bytes"), 2 * v13}];
  }

  else
  {
    v14 = 0;
  }

  if (v8 <= v11)
  {
    v16 = 0;
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v6 length:{"bytes") + 2 * v13, 2 * (v8 - v13)}];
    +[CSFTimeUtils getHostClockFrequency];
    v16 = (a4 + v13 * (v15 / self->_sampleRate));
  }

  self->_numSamplesProcessed += v8;
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained zeroFilter:self zeroFilteredBufferAvailable:v14 atHostTime:a4];
  }

  a4 = v16;
  if (v12)
  {
LABEL_16:
    zeroFilter = self->_zeroFilter;
    if (zeroFilter)
    {
      v24 = 0;
      v19 = [(CSAudioZeroFilter *)zeroFilter filterZerosInAudioPacket:v12 atBufferHostTime:a4 filteredPacket:&v24];
      v20 = v24;
      v21 = v20;
      if (v20 && [v20 length])
      {
        v22 = objc_loadWeakRetained(&self->_delegate);
        [v22 zeroFilter:self zeroFilteredBufferAvailable:v21 atHostTime:v19];
      }
    }

    else
    {
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 zeroFilter:self zeroFilteredBufferAvailable:v12 atHostTime:a4];
    }
  }

LABEL_22:
}

- (void)resetWithSampleRate:(float)a3 containsVoiceTrigger:(BOOL)a4 voiceTriggerInfo:(id)a5
{
  v5 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v8 = a5;
  self->_vtEndInSampleCount = 0;
  self->_sampleRate = a3;
  self->_numSamplesProcessed = 0;
  v9 = ((+[CSConfig zeroFilterWindowSizeInMs]/ 1000.0) * a3);
  +[CSFTimeUtils getHostClockFrequency];
  v10 = a3;
  v11 = CSLogContextFacilityCoreSpeech;
  v13 = v12 / a3;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v22 = 136315650;
    v23 = "[CSVoiceTriggerAwareZeroFilter resetWithSampleRate:containsVoiceTrigger:voiceTriggerInfo:]";
    v24 = 2050;
    v25 = v9;
    v26 = 2050;
    v27 = v13;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_INFO, "%s zeroFilterWinSz: %{public}tu, numHostTicksPerAudioSample: %{public}f", &v22, 0x20u);
  }

  v14 = [[CSAudioZeroFilter alloc] initWithZeroWindowSize:v9 approxAbsSpeechThreshold:+[CSConfig numHostTicksPerAudioSample:"zeroFilterApproxAbsSpeechThreshold"], v13];
  zeroFilter = self->_zeroFilter;
  self->_zeroFilter = v14;

  if (v8)
  {
    if (v5)
    {
      v16 = [v8 objectForKeyedSubscript:@"triggerEndSeconds"];
      [v16 floatValue];
      v18 = v17;

      self->_vtEndInSampleCount = (v10 * v18);
      v19 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        numSamplesProcessed = self->_numSamplesProcessed;
        v22 = 136315906;
        v23 = "[CSVoiceTriggerAwareZeroFilter resetWithSampleRate:containsVoiceTrigger:voiceTriggerInfo:]";
        v24 = 2050;
        v25 = (v10 * v18);
        v26 = 2050;
        v27 = *&numSamplesProcessed;
        v28 = 2114;
        v29 = v8;
        _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_INFO, "%s _vtEndInSampleCount:%{public}ld, _numSamplesProcessed: %{public}ld, voiceTriggerInfo: %{public}@", &v22, 0x2Au);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (CSVoiceTriggerAwareZeroFilter)init
{
  v3.receiver = self;
  v3.super_class = CSVoiceTriggerAwareZeroFilter;
  return [(CSVoiceTriggerAwareZeroFilter *)&v3 init];
}

@end