@interface CSVoiceTriggerAwareZeroFilter
- (CSVoiceTriggerAwareZeroFilter)init;
- (CSVoiceTriggerAwareZeroFilterDelegate)delegate;
- (void)flush;
- (void)processBuffer:(id)buffer atTime:(unint64_t)time;
- (void)resetWithSampleRate:(float)rate containsVoiceTrigger:(BOOL)trigger voiceTriggerInfo:(id)info;
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

- (void)processBuffer:(id)buffer atTime:(unint64_t)time
{
  bufferCopy = buffer;
  v7 = [bufferCopy length];
  v8 = v7 >> 1;
  vtEndInSampleCount = self->_vtEndInSampleCount;
  numSamplesProcessed = self->_numSamplesProcessed;
  v11 = vtEndInSampleCount - numSamplesProcessed;
  if (vtEndInSampleCount < numSamplesProcessed)
  {
    v12 = bufferCopy;
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
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(bufferCopy length:{"bytes"), 2 * v13}];
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
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(bufferCopy length:{"bytes") + 2 * v13, 2 * (v8 - v13)}];
    +[CSFTimeUtils getHostClockFrequency];
    v16 = (time + v13 * (v15 / self->_sampleRate));
  }

  self->_numSamplesProcessed += v8;
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained zeroFilter:self zeroFilteredBufferAvailable:v14 atHostTime:time];
  }

  time = v16;
  if (v12)
  {
LABEL_16:
    zeroFilter = self->_zeroFilter;
    if (zeroFilter)
    {
      v24 = 0;
      v19 = [(CSAudioZeroFilter *)zeroFilter filterZerosInAudioPacket:v12 atBufferHostTime:time filteredPacket:&v24];
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
      [v23 zeroFilter:self zeroFilteredBufferAvailable:v12 atHostTime:time];
    }
  }

LABEL_22:
}

- (void)resetWithSampleRate:(float)rate containsVoiceTrigger:(BOOL)trigger voiceTriggerInfo:(id)info
{
  triggerCopy = trigger;
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  self->_vtEndInSampleCount = 0;
  self->_sampleRate = rate;
  self->_numSamplesProcessed = 0;
  v9 = ((+[CSConfig zeroFilterWindowSizeInMs]/ 1000.0) * rate);
  +[CSFTimeUtils getHostClockFrequency];
  rateCopy = rate;
  v11 = CSLogContextFacilityCoreSpeech;
  v13 = v12 / rate;
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

  if (infoCopy)
  {
    if (triggerCopy)
    {
      v16 = [infoCopy objectForKeyedSubscript:@"triggerEndSeconds"];
      [v16 floatValue];
      v18 = v17;

      self->_vtEndInSampleCount = (rateCopy * v18);
      v19 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        numSamplesProcessed = self->_numSamplesProcessed;
        v22 = 136315906;
        v23 = "[CSVoiceTriggerAwareZeroFilter resetWithSampleRate:containsVoiceTrigger:voiceTriggerInfo:]";
        v24 = 2050;
        v25 = (rateCopy * v18);
        v26 = 2050;
        v27 = *&numSamplesProcessed;
        v28 = 2114;
        v29 = infoCopy;
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