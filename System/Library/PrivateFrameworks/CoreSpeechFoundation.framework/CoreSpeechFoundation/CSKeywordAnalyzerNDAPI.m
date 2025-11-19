@interface CSKeywordAnalyzerNDAPI
- (CSKeywordAnalyzerNDAPI)initWithConfigPath:(id)a3 resourcePath:(id)a4;
- (float)getLoggingThreshold;
- (float)getRejectLoggingThreshold;
- (float)getThreshold;
- (id)_keywordAnalyzerNDAPIResultFromNovDetectorResult:(id)a3 phId:(unint64_t)a4;
- (id)getAnalyzedResults;
- (id)getAnalyzedResultsFromAudioChunk:(id)a3;
- (id)getBestAnalyzedResults;
- (id)getBestAnalyzedResultsFromAudioChunk:(id)a3;
- (void)_processAudioChunk:(id)a3;
- (void)_setStartAnalyzeTime:(unint64_t)a3;
- (void)reset;
@end

@implementation CSKeywordAnalyzerNDAPI

- (void)reset
{
  self->_lastSampleFed = 0;
  self->_sampleFedWrapAroundOffset = 0;
  [(CSNovDetector *)self->_novDetector reset];

  [(CSKeywordAnalyzerNDAPI *)self _resetStartAnalyzeTime];
}

- (id)getAnalyzedResults
{
  v3 = [(CSNovDetector *)self->_novDetector numResultsAvailable];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = [(CSNovDetector *)self->_novDetector getAnalyzedResultForPhId:v6];
      v9 = [(CSKeywordAnalyzerNDAPI *)self _keywordAnalyzerNDAPIResultFromNovDetectorResult:v8 phId:v6];
      [v5 addObject:v9];

      ++v6;
    }

    while (v7 != v6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (float)getRejectLoggingThreshold
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(CSNovDetector *)self->_novDetector getOptionValue:@"threshold_reject_logging"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSKeywordAnalyzerNDAPI getRejectLoggingThreshold]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s NDAPI config doesn't contain threshold_reject_logging", &v9, 0xCu);
    }

    v5 = INFINITY;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (float)getLoggingThreshold
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(CSNovDetector *)self->_novDetector getOptionValue:@"threshold_logging"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSKeywordAnalyzerNDAPI getLoggingThreshold]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s NDAPI config doesn't contain threshold_logging", &v9, 0xCu);
    }

    v5 = INFINITY;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (float)getThreshold
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(CSNovDetector *)self->_novDetector getOptionValue:@"threshold_normal"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[CSKeywordAnalyzerNDAPI getThreshold]";
      _os_log_fault_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_FAULT, "%s NDAPI config doesn't contain threshold_normal", &v9, 0xCu);
    }

    v5 = INFINITY;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)getBestAnalyzedResults
{
  v3 = [(CSNovDetector *)self->_novDetector getBestAnalyzedResult];
  v4 = -[CSKeywordAnalyzerNDAPI _keywordAnalyzerNDAPIResultFromNovDetectorResult:phId:](self, "_keywordAnalyzerNDAPIResultFromNovDetectorResult:phId:", v3, [v3 bestPhrase]);

  return v4;
}

- (id)_keywordAnalyzerNDAPIResultFromNovDetectorResult:(id)a3 phId:(unint64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = objc_alloc_init(CSKeywordAnalyzerNDAPIResult);
    [(CSKeywordAnalyzerNDAPIResult *)v7 setPhId:a4];
    -[CSKeywordAnalyzerNDAPIResult setSamplesFed:](v7, "setSamplesFed:", [v6 sampleFed]);
    -[CSKeywordAnalyzerNDAPIResult setBestPhrase:](v7, "setBestPhrase:", [v6 bestPhrase]);
    -[CSKeywordAnalyzerNDAPIResult setBestStart:](v7, "setBestStart:", self->_startAnalyzeSampleCount + [v6 bestStart] + self->_sampleFedWrapAroundOffset);
    -[CSKeywordAnalyzerNDAPIResult setBestEnd:](v7, "setBestEnd:", self->_startAnalyzeSampleCount + [v6 bestEnd] + self->_sampleFedWrapAroundOffset);
    [v6 bestScore];
    [(CSKeywordAnalyzerNDAPIResult *)v7 setBestScore:?];
    -[CSKeywordAnalyzerNDAPIResult setIsEarlyWarning:](v7, "setIsEarlyWarning:", [v6 earlyWarning]);
    v8 = [v6 sampleFed];

    [(CSKeywordAnalyzerNDAPIResult *)v7 setSamplesAtFire:self->_startAnalyzeSampleCount + v8 + self->_sampleFedWrapAroundOffset];
    [(CSKeywordAnalyzerNDAPIResult *)v7 setStartSampleCount:self->_startAnalyzeSampleCount];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_processAudioChunk:(id)a3
{
  v4 = a3;
  -[CSKeywordAnalyzerNDAPI _setStartAnalyzeTime:](self, "_setStartAnalyzeTime:", [v4 startSampleCount]);
  v5 = [v4 numSamples];
  v6 = [v4 isFloat];
  v7 = [v4 dataForChannel:self->_activeChannel];

  if (v6)
  {
    [(CSKeywordAnalyzerNDAPI *)self analyzeWavFloatData:v7 numSamples:v5];
  }

  else
  {
    [(CSKeywordAnalyzerNDAPI *)self analyzeWavData:v7 numSamples:v5];
  }

  v8 = [(CSNovDetector *)self->_novDetector getAnalyzedResultForPhId:self->_activePhId];
  if (v8)
  {
    v9 = v8;
    if ([v8 sampleFed] < self->_lastSampleFed)
    {
      self->_sampleFedWrapAroundOffset += 0xFFFFFFFFLL;
    }

    self->_lastSampleFed = [v9 sampleFed];
    v8 = v9;
  }
}

- (id)getBestAnalyzedResultsFromAudioChunk:(id)a3
{
  [(CSKeywordAnalyzerNDAPI *)self _processAudioChunk:a3];

  return [(CSKeywordAnalyzerNDAPI *)self getBestAnalyzedResults];
}

- (id)getAnalyzedResultsFromAudioChunk:(id)a3
{
  [(CSKeywordAnalyzerNDAPI *)self _processAudioChunk:a3];

  return [(CSKeywordAnalyzerNDAPI *)self getAnalyzedResults];
}

- (void)_setStartAnalyzeTime:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_isStartSampleCountMarked)
  {
    self->_isStartSampleCountMarked = 1;
    self->_startAnalyzeSampleCount = a3;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[CSKeywordAnalyzerNDAPI _setStartAnalyzeTime:]";
      v8 = 2050;
      v9 = a3;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s set StartAnalyzeSampleCount = %{public}lld", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (CSKeywordAnalyzerNDAPI)initWithConfigPath:(id)a3 resourcePath:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CSKeywordAnalyzerNDAPI;
  v8 = [(CSKeywordAnalyzerNDAPI *)&v15 init];
  if (v8 && (v9 = [[CSNovDetector alloc] initWithConfigPath:v6 resourcePath:v7], novDetector = v8->_novDetector, v8->_novDetector = v9, novDetector, !v8->_novDetector))
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[CSKeywordAnalyzerNDAPI initWithConfigPath:resourcePath:]";
      _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s NDAPI initialization failed", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

@end