@interface CSLanguageDetector
- (CSLanguageDetector)init;
- (CSLanguageDetector)initWithModelURL:(id)a3;
- (CSLanguageDetectorDelegate)delegate;
- (id)_constructLangPriors;
- (id)_getDefaultValues;
- (id)_readJsonDictionaryAt:(id)a3;
- (void)_initializeStartOfSpeechDetector:(id)a3 samplingRate:(float)a4;
- (void)_logLanguageDetectorMetricsForLoggingInfo:(id)a3;
- (void)_logSoSResult:(id)a3 toPath:(id)a4;
- (void)_recordRecognitionLanguage:(id)a3;
- (void)_resetStartOfSpeechDetector;
- (void)_setNumLatestLangFromConfigFile:(id)a3;
- (void)_setupLanguageDetectorWithOption:(id)a3;
- (void)_startMonitorLanguageDetectorAssetDownload;
- (void)addSamples:(id)a3 numSamples:(unint64_t)a4;
- (void)cancelCurrentRequest;
- (void)dealloc;
- (void)endAudio;
- (void)languageDetector:(id)a3 result:(id)a4;
- (void)languageDetectorDidCompleteProcessing:(id)a3 loggingInfo:(id)a4;
- (void)recordRecognitionLanguage:(id)a3;
- (void)resetForNewRequest:(id)a3;
- (void)setInteractionIDforCurrentRequest:(id)a3;
- (void)setMostRecentRecognitionLanguage:(id)a3;
- (void)startOfSpeechDetector:(id)a3 foundStartSampleAt:(unint64_t)a4;
@end

@implementation CSLanguageDetector

- (CSLanguageDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startOfSpeechDetector:(id)a3 foundStartSampleAt:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__CSLanguageDetector_startOfSpeechDetector_foundStartSampleAt___block_invoke;
  v5[3] = &unk_2784C6EC0;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

void __63__CSLanguageDetector_startOfSpeechDetector_foundStartSampleAt___block_invoke(uint64_t a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = 1;
  v2 = [*(*(a1 + 32) + 48) sampleCount];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 104);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63__CSLanguageDetector_startOfSpeechDetector_foundStartSampleAt___block_invoke_2;
  v25[3] = &unk_2784C6EC0;
  v25[4] = v3;
  v25[5] = v4;
  dispatch_async(v5, v25);
  v6 = v2 - *(a1 + 40);
  if (v6 > [*(*(a1 + 32) + 48) bufferLength])
  {
    v4 = v2 - [*(*(a1 + 32) + 48) bufferLength];
  }

  v7 = [*(*(a1 + 32) + 48) copySamplesFrom:v4 to:v2];
  v8 = *(*(a1 + 32) + 32);
  v9 = [v7 data];
  [v8 addAudioSamples:objc_msgSend(v9 count:{"bytes"), objc_msgSend(v7, "numSamples")}];

  v10 = [MEMORY[0x277D01788] sharedPreferences];
  LODWORD(v9) = [v10 startOfSpeechAudioLoggingEnabled];

  if (v9)
  {
    v11 = [MEMORY[0x277D01788] sharedPreferences];
    v12 = [v11 getStartOfSpeechAudioLogFilePath];

    v32[0] = @"SpgRegportedStartSampleId";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    v33[0] = v13;
    v32[1] = @"EffectiveStartSampleId";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v33[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v16 = *(a1 + 32);
    v17 = [v12 stringByAppendingString:@"-result.json"];
    [v16 _logSoSResult:v15 toPath:v17];

    v18 = [*(*(a1 + 32) + 48) copySamplesFrom:v4 to:v2];
    if (v18)
    {
      v19 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v27 = "[CSLanguageDetector startOfSpeechDetector:foundStartSampleAt:]_block_invoke";
        v28 = 2050;
        v29 = v4;
        v30 = 2050;
        v31 = v2;
        _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s Saving circular buffer from %{public}lu to %{public}lu", buf, 0x20u);
      }

      v20 = MEMORY[0x277D01830];
      v21 = MEMORY[0x277CBEBC0];
      v22 = [v12 stringByAppendingString:@"-result.wav"];
      v23 = [v21 URLWithString:v22];
      [v20 saveAudioChunck:v18 toURL:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __63__CSLanguageDetector_startOfSpeechDetector_foundStartSampleAt___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 56) != 3)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v5 startOfSpeechDetectedAtFrame:*(a1 + 40)];
    }
  }
}

- (void)languageDetectorDidCompleteProcessing:(id)a3 loggingInfo:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__CSLanguageDetector_languageDetectorDidCompleteProcessing_loggingInfo___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void *__72__CSLanguageDetector_languageDetectorDidCompleteProcessing_loggingInfo___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 56);
    v14 = 136315394;
    v15 = "[CSLanguageDetector languageDetectorDidCompleteProcessing:loggingInfo:]_block_invoke";
    v16 = 2048;
    v17 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s LanguageDetector State: %ld", &v14, 0x16u);
  }

  result = *(a1 + 32);
  v5 = result[7];
  if ((v5 - 1) < 2)
  {
    [result _logLanguageDetectorMetricsForLoggingInfo:*(a1 + 40)];
    [*(*(a1 + 32) + 40) endAudio];
    [*(*(a1 + 32) + 32) endAudio];
    result = *(a1 + 32);
LABEL_6:
    v6 = result[6];
    result[6] = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;

    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *(v9 + 24) = 0;

    v11 = *(a1 + 32);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    result = *(a1 + 32);
    goto LABEL_7;
  }

  if (v5 == 3)
  {
    goto LABEL_6;
  }

LABEL_7:
  result[7] = 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)languageDetector:(id)a3 result:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 confidences];
  v9 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 136315650;
    v40 = "[CSLanguageDetector languageDetector:result:]";
    v41 = 2114;
    v42 = v8;
    v43 = 1026;
    v44 = [v7 isConfident];
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@ isConfident %{public}d", buf, 0x1Cu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v35;
    v16 = -1.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v19 = [v11 objectForKeyedSubscript:v18];
        [v19 floatValue];
        v21 = v20;

        if (v21 >= v16)
        {
          v22 = [v11 objectForKeyedSubscript:v18];
          [v22 floatValue];
          v16 = v23;

          v24 = v18;
          v14 = v24;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  queue = self->_queue;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__CSLanguageDetector_languageDetector_result___block_invoke;
  v30[3] = &unk_2784C5EA0;
  v30[4] = self;
  v31 = v14;
  v32 = v11;
  v33 = v7;
  v26 = v7;
  v27 = v11;
  v28 = v14;
  dispatch_async(queue, v30);

  v29 = *MEMORY[0x277D85DE8];
}

void __46__CSLanguageDetector_languageDetector_result___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 56) != 3)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = *(a1 + 32);
      if (*(v5 + 8) == 1)
      {
        [v5 _recordRecognitionLanguage:*(a1 + 40)];
        v5 = *(a1 + 32);
      }

      v6 = objc_loadWeakRetained((v5 + 16));
      [v6 languageDetectorDidDetectLanguageWithConfidence:*(a1 + 40) confidence:*(a1 + 48) isConfident:{objc_msgSend(*(a1 + 56), "isConfident")}];
    }
  }
}

- (void)_logLanguageDetectorMetricsForLoggingInfo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D015D8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 loggingDict];
    v18 = 136315394;
    v19 = "[CSLanguageDetector _logLanguageDetectorMetricsForLoggingInfo:]";
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s _EARLanguageDetectorLoggingInfo = %{public}@", &v18, 0x16u);
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [(CSLanguageDetector *)self _constructLangPriors];
  [v9 setObject:v10 forKey:@"dictationPriors"];

  v11 = [v4 loggingDict];

  if (v11)
  {
    v12 = [v4 loggingDict];
    [v9 setObject:v12 forKey:@"earLoggingInfo"];
  }

  languageDetectorAssetHash = self->_languageDetectorAssetHash;
  if (languageDetectorAssetHash)
  {
    [v9 setObject:languageDetectorAssetHash forKey:@"modelHash"];
  }

  interactionID = self->_interactionID;
  if (interactionID)
  {
    [v9 setObject:interactionID forKey:@"interactionId"];
  }

  v15 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[CSLanguageDetector _logLanguageDetectorMetricsForLoggingInfo:]";
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s _EARLanguageDetectorLoggingInfo analytics context %{public}@", &v18, 0x16u);
  }

  v16 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v16 logEventWithType:4703 context:v9 contextNoCopy:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_logSoSResult:(id)a3 toPath:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v12 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:3 error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 localizedDescription];
      *buf = 136315394;
      v14 = "[CSLanguageDetector _logSoSResult:toPath:]";
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Error writing out SoS info meta: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [v6 writeToFile:v5 atomically:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getDefaultValues
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:&unk_283668128 forKey:@"HistBufferSizeinSecs"];
  [v2 setObject:&unk_283667238 forKey:@"NumLeadingFrames"];
  [v2 setObject:&unk_283667250 forKey:@"MinSpeechFrames"];

  return v2;
}

- (id)_readJsonDictionaryAt:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5 isDirectory:&v20];

  if (v20)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"CSLanguageDetector.m" lineNumber:269 description:{@"Unexpected!! Received dir for: %@", v5}];

    if (v7)
    {
LABEL_3:
      v19 = 0;
      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5 options:0 error:&v19];
      v9 = v19;
      if (v9 || !v8)
      {
        v12 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v22 = "[CSLanguageDetector _readJsonDictionaryAt:]";
          v23 = 2114;
          v24 = v5;
          v25 = 2114;
          v26 = v9;
          _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s Could not read Json file at: %{public}@, err: %{public}@", buf, 0x20u);
        }

        v11 = 0;
      }

      else
      {
        v18 = 0;
        v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v18];
        v9 = v18;
        if (v9 || !v10)
        {
          v13 = *MEMORY[0x277D015D8];
          if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v22 = "[CSLanguageDetector _readJsonDictionaryAt:]";
            v23 = 2114;
            v24 = v5;
            v25 = 2114;
            v26 = v9;
            _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed to parse json at: %{public}@, err: %{public}@", buf, 0x20u);
          }

          v11 = 0;
        }

        else
        {
          v11 = v10;
        }
      }

      goto LABEL_20;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  v15 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[CSLanguageDetector _readJsonDictionaryAt:]";
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Json file doesnt exist at: %{public}@", buf, 0x16u);
  }

  v11 = 0;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_setNumLatestLangFromConfigFile:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(CSLanguageDetector *)self _readJsonDictionaryAt:a3];
  v5 = [v4 objectForKeyedSubscript:@"NumLatestLanguages"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"NumLatestLanguages"];
    self->_numLatestLanguages = [v6 integerValue];
  }

  else
  {
    self->_numLatestLanguages = 10;
  }

  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    numLatestLanguages = self->_numLatestLanguages;
    v10 = 136315394;
    v11 = "[CSLanguageDetector _setNumLatestLangFromConfigFile:]";
    v12 = 2050;
    v13 = numLatestLanguages;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Setting NumLatestLanguages to %{public}lu ", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_constructLangPriors
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = self->_latestDetectedLanguages;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v4 objectForKey:{v11, v19}];

        if (v12)
        {
          [v12 floatValue];
          v14 = (v13 * [(NSMutableArray *)self->_latestDetectedLanguages count]) + 1.0;
        }

        else
        {
          v14 = 1.0;
        }

        *&v15 = v14 / [(NSMutableArray *)self->_latestDetectedLanguages count];
        v8 = [MEMORY[0x277CCABB0] numberWithFloat:v15];

        [v4 setObject:v8 forKey:v11];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[CSLanguageDetector _constructLangPriors]";
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s Recoreded language array: %@ Language Prior Dictionary: %@", buf, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setMostRecentRecognitionLanguage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CSLanguageDetector_setMostRecentRecognitionLanguage___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __55__CSLanguageDetector_setMostRecentRecognitionLanguage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 count] - 1;

  return [v2 setObject:v1 atIndexedSubscript:v3];
}

- (void)_recordRecognitionLanguage:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_latestDetectedLanguages count]>= self->_numLatestLanguages)
  {
    [(NSMutableArray *)self->_latestDetectedLanguages removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_latestDetectedLanguages addObject:v4];
}

- (void)recordRecognitionLanguage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CSLanguageDetector_recordRecognitionLanguage___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_initializeStartOfSpeechDetector:(id)a3 samplingRate:(float)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 startOfSpeechDetectorConfigFile];
  v8 = [(CSLanguageDetector *)self _readJsonDictionaryAt:v7];

  if (!v8)
  {
    v8 = [(CSLanguageDetector *)self _getDefaultValues];
  }

  if (!self->_circBuffer)
  {
    v9 = objc_alloc(MEMORY[0x277D01610]);
    v10 = [v8 objectForKeyedSubscript:@"HistBufferSizeinSecs"];
    [v10 floatValue];
    v11 = [v9 initWithNumChannels:1 recordingDuration:? samplingRate:?];
    circBuffer = self->_circBuffer;
    self->_circBuffer = v11;
  }

  v13 = [CSStartOfSpeechDetector alloc];
  v14 = [v6 spgConfigFile];

  v15 = [v8 objectForKeyedSubscript:@"MinSpeechFrames"];
  v16 = [v15 integerValue];
  v17 = [v8 objectForKeyedSubscript:@"NumLeadingFrames"];
  v18 = -[CSStartOfSpeechDetector initWithConfig:samplingRate:minSpeechFrames:numLeadingFrames:delegate:](v13, "initWithConfig:samplingRate:minSpeechFrames:numLeadingFrames:delegate:", v14, a4, v16, [v17 integerValue], self);
  startOfSpeechDetector = self->_startOfSpeechDetector;
  self->_startOfSpeechDetector = v18;

  if (!self->_circBuffer || !self->_startOfSpeechDetector)
  {
    v20 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[CSLanguageDetector _initializeStartOfSpeechDetector:samplingRate:]";
      _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_DEFAULT, "%s Failed to initialize StartOfSpeechDetector !", &v22, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setInteractionIDforCurrentRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CSLanguageDetector_setInteractionIDforCurrentRequest___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __56__CSLanguageDetector_setInteractionIDforCurrentRequest___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[CSLanguageDetector setInteractionIDforCurrentRequest:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Setting interaction ID for current request: %@", &v8, 0x16u);
  }

  v4 = [*(a1 + 32) copy];
  v5 = *(a1 + 40);
  v6 = *(v5 + 96);
  *(v5 + 96) = v4;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelCurrentRequest
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CSLanguageDetector_cancelCurrentRequest__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__CSLanguageDetector_cancelCurrentRequest__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 56) = 3;
  [*(*(a1 + 32) + 40) endAudio];
  [*(*(a1 + 32) + 32) endAudio];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSLanguageDetector cancelCurrentRequest]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Current LanguageDetector request cancelled", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_resetStartOfSpeechDetector
{
  [(CSStartOfSpeechDetector *)self->_startOfSpeechDetector resetForNewRequest];
  [(CSAudioCircularBuffer *)self->_circBuffer reset];
  self->_startOfSpeechDetected = 0;
}

- (void)endAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CSLanguageDetector_endAudio__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __30__CSLanguageDetector_endAudio__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 2;
  [*(*(a1 + 32) + 40) endAudio];
  v2 = *(*(a1 + 32) + 32);

  return [v2 endAudio];
}

- (void)addSamples:(id)a3 numSamples:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CSLanguageDetector_addSamples_numSamples___block_invoke;
  block[3] = &unk_2784C6998;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

uint64_t __44__CSLanguageDetector_addSamples_numSamples___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (*(v3 + 8) == 1)
  {
    v4 = *(v3 + 32);
    v5 = [v2 bytes];
    v6 = a1[6];

    return [v4 addAudioSamples:v5 count:v6];
  }

  else
  {
    [*(v3 + 48) addSamples:objc_msgSend(v2 numSamples:{"bytes"), a1[6]}];
    v8 = a1[5];
    v9 = *(a1[4] + 40);
    v10 = a1[6];

    return [v9 addAudio:v8 numSamples:v10];
  }
}

- (void)resetForNewRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CSLanguageDetector_resetForNewRequest___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __41__CSLanguageDetector_resetForNewRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  *(v10 + 96) = 0;

  v12 = *(a1 + 32);
  if (v12[9] == 1)
  {
    v13 = +[CSAssetControllerFactory defaultController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__CSLanguageDetector_resetForNewRequest___block_invoke_2;
    v16[3] = &unk_2784C5168;
    v14 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v14;
    [v13 assetOfType:2 language:@"en-US" completion:v16];

    *(*(a1 + 32) + 9) = 0;
  }

  else
  {
    v15 = *(a1 + 40);

    [v12 _setupLanguageDetectorWithOption:v15];
  }
}

void __41__CSLanguageDetector_resetForNewRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 104);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__CSLanguageDetector_resetForNewRequest___block_invoke_3;
  v12[3] = &unk_2784C5EA0;
  v13 = v5;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void __41__CSLanguageDetector_resetForNewRequest___block_invoke_3(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((a1[6] + 88), v2);
    v3 = a1[6];
    v4 = a1[7];
    v5 = *MEMORY[0x277D85DE8];

    [v3 _setupLanguageDetectorWithOption:v4];
  }

  else
  {
    v6 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v9 = v6;
      v10 = [v8 localizedDescription];
      v11 = 136315394;
      v12 = "[CSLanguageDetector resetForNewRequest:]_block_invoke_3";
      v13 = 2114;
      v14 = v10;
      _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s Cannot access asset : %{public}@", &v11, 0x16u);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)_setupLanguageDetectorWithOption:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSAsset *)self->_currentAsset hashFromResourcePath];
  v6 = [v5 copy];
  languageDetectorAssetHash = self->_languageDetectorAssetHash;
  self->_languageDetectorAssetHash = v6;

  v8 = [(CSAsset *)self->_currentAsset languageDetectorConfigFile];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    [(CSLanguageDetector *)self _setNumLatestLangFromConfigFile:v8];
    v11 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[CSLanguageDetector _setupLanguageDetectorWithOption:]";
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s Creating LanguageDetector with config: %{public}@", &v24, 0x16u);
    }

    v12 = [objc_alloc(MEMORY[0x277D07258]) initWithConfigFile:v8];
    languageDetector = self->_languageDetector;
    self->_languageDetector = v12;

    v14 = [(CSLanguageDetector *)self _constructLangPriors];
    [v4 setDictationLanguagePriors:v14];

    v15 = self->_languageDetector;
    [v4 samplingRate];
    v17 = v16;
    v18 = [v4 languageDetectorRequestContext];
    v19 = [(_EARLanguageDetector *)v15 startRequestWith:v17 context:v18 delegate:self];
    audioBuffer = self->_audioBuffer;
    self->_audioBuffer = v19;

    currentAsset = self->_currentAsset;
    [v4 samplingRate];
    [(CSLanguageDetector *)self _initializeStartOfSpeechDetector:currentAsset samplingRate:?];
    [(CSLanguageDetector *)self _resetStartOfSpeechDetector];
    self->_currentState = 1;
  }

  else
  {
    v22 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = "[CSLanguageDetector _setupLanguageDetectorWithOption:]";
      _os_log_error_impl(&dword_222E4D000, v22, OS_LOG_TYPE_ERROR, "%s Cannot initialize language detector since model file is not exits", &v24, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitorLanguageDetectorAssetDownload
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_notifyToken == -1)
  {
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __64__CSLanguageDetector__startMonitorLanguageDetectorAssetDownload__block_invoke;
    handler[3] = &unk_2784C6BA0;
    handler[4] = self;
    notify_register_dispatch("com.apple.MobileAsset.LanguageDetectorAssets.ma.new-asset-installed", &self->_notifyToken, queue, handler);
  }

  else
  {
    v2 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSLanguageDetector _startMonitorLanguageDetectorAssetDownload]";
      _os_log_error_impl(&dword_222E4D000, v2, OS_LOG_TYPE_ERROR, "%s Cannot start monitoring language detector asset, since we already registered", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CSLanguageDetector;
  [(CSLanguageDetector *)&v2 dealloc];
}

- (CSLanguageDetector)initWithModelURL:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CSLanguageDetector;
  v5 = [(CSLanguageDetector *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277D015F8];
    v7 = [v4 path];
    v8 = [v6 assetForAssetType:2 resourcePath:v7 configVersion:@"dummy-version"];
    currentAsset = v5->_currentAsset;
    v5->_currentAsset = v8;

    v10 = dispatch_queue_create("CSLanguageDetector", 0);
    queue = v5->_queue;
    v5->_queue = v10;

    v5->_needsToUpdateModel = 0;
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    latestDetectedLanguages = v5->_latestDetectedLanguages;
    v5->_latestDetectedLanguages = v12;
  }

  return v5;
}

- (CSLanguageDetector)init
{
  v9.receiver = self;
  v9.super_class = CSLanguageDetector;
  v2 = [(CSLanguageDetector *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    v4 = dispatch_queue_create("CSLanguageDetector", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v3->_needsToUpdateModel = 1;
    [(CSLanguageDetector *)v3 _startMonitorLanguageDetectorAssetDownload];
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    latestDetectedLanguages = v3->_latestDetectedLanguages;
    v3->_latestDetectedLanguages = v6;
  }

  return v3;
}

@end