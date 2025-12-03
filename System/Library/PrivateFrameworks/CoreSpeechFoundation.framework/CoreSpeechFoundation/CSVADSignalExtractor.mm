@interface CSVADSignalExtractor
- (BOOL)hasSpeechDetectedFromStartSampleCount:(unint64_t)count toEndSampleCount:(unint64_t)sampleCount;
- (CSVADSignalExtractor)initWithToken:(id)token delegate:(id)delegate;
- (CSVADSignalExtractorDelegate)delegate;
- (void)processBufferSampleWithIndex:(unint64_t)index startSampleCount:(unint64_t)count isSampleRepresentSpeech:(BOOL)speech vadToSpeechRatio:(unint64_t)ratio;
- (void)reset;
@end

@implementation CSVADSignalExtractor

- (CSVADSignalExtractorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processBufferSampleWithIndex:(unint64_t)index startSampleCount:(unint64_t)count isSampleRepresentSpeech:(BOOL)speech vadToSpeechRatio:(unint64_t)ratio
{
  v26 = *MEMORY[0x1E69E9840];
  if (!speech || self->_isSpeechDetected)
  {
    if (self->_isSpeechDetected && !speech)
    {
      self->_isSpeechDetected = 0;
      v13 = count + ratio * index;
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315650;
        v21 = "[CSVADSignalExtractor processBufferSampleWithIndex:startSampleCount:isSampleRepresentSpeech:vadToSpeechRatio:]";
        v22 = 2050;
        v23 = v13;
        v24 = 2050;
        countCopy2 = count;
        _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Detected speech end at %{public}llu (startSampleCount = %{public}llu)", &v20, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&self->_delegate);
        [v17 vadSignalExtractor:self didDetectedSpeechEndAtSampleCount:v13];
      }

      v18 = [[CSFRangeUtils alloc] initWithStartPoint:self->_lastSpeechStartSampleCount endPoint:v13];
      [(NSMutableArray *)self->_speechDetectedRanges addObject:v18];
      self->_lastSpeechStartSampleCount = 0;
    }
  }

  else
  {
    *&self->_hasSpeechEverDetected = 257;
    v8 = count + ratio * index;
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[CSVADSignalExtractor processBufferSampleWithIndex:startSampleCount:isSampleRepresentSpeech:vadToSpeechRatio:]";
      v22 = 2050;
      v23 = v8;
      v24 = 2050;
      countCopy2 = count;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Detected speech start at %{public}llu (startSampleCount = %{public}llu)", &v20, 0x20u);
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 vadSignalExtractor:self didDetectedSpeechStartAtSampleCount:v8];
    }

    self->_lastSpeechStartSampleCount = v8;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasSpeechDetectedFromStartSampleCount:(unint64_t)count toEndSampleCount:(unint64_t)sampleCount
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = [[CSFRangeUtils alloc] initWithStartPoint:count endPoint:sampleCount];
  if (!v6)
  {
    goto LABEL_14;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_speechDetectedRanges;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 hasIntersectionWithRange:{v6, v21}])
        {
          v15 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            v17 = [v12 description];
            v18 = [(CSFRangeUtils *)v6 description];
            *buf = 136315650;
            v26 = "[CSVADSignalExtractor hasSpeechDetectedFromStartSampleCount:toEndSampleCount:]";
            v27 = 2114;
            v28 = v17;
            v29 = 2114;
            v30 = v18;
            _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Intersection detected : cached(%{public}@) vs. input(%{public}@)", buf, 0x20u);
          }

          goto LABEL_18;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  lastSpeechStartSampleCount = self->_lastSpeechStartSampleCount;
  if (lastSpeechStartSampleCount - 1 < sampleCount || !lastSpeechStartSampleCount && ![(NSMutableArray *)self->_speechDetectedRanges count]&& self->_hasSpeechEverDetected)
  {
LABEL_18:
    v14 = 1;
  }

  else
  {
LABEL_14:
    v14 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)reset
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVADSignalExtractor reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  *&self->_hasSpeechEverDetected = 0;
  self->_lastSpeechStartSampleCount = 0;
  [(NSMutableArray *)self->_speechDetectedRanges removeAllObjects];
  v4 = *MEMORY[0x1E69E9840];
}

- (CSVADSignalExtractor)initWithToken:(id)token delegate:(id)delegate
{
  v20 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = CSVADSignalExtractor;
  v8 = [(CSVADSignalExtractor *)&v15 init];
  v9 = v8;
  if (v8)
  {
    *&v8->_hasSpeechEverDetected = 0;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    array = [MEMORY[0x1E695DF70] array];
    speechDetectedRanges = v9->_speechDetectedRanges;
    v9->_speechDetectedRanges = array;

    v9->_lastSpeechStartSampleCount = 0;
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[CSVADSignalExtractor initWithToken:delegate:]";
      v18 = 2114;
      v19 = tokenCopy;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Token : %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

@end