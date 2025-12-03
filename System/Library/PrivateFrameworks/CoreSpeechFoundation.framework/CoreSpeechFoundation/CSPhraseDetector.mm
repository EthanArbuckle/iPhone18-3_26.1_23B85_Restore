@interface CSPhraseDetector
- (BOOL)_isSecondChanceCandidateWithScore:(float)score effectiveThreshold:(float)threshold secondChanceThreshold:(float)chanceThreshold;
- (CSPhraseDetector)init;
- (id)_getResultWithPhId:(unint64_t)id phraseDetectorInfo:(id)info ndapiResult:(id)result quasarResult:(id)quasarResult forceMaximized:(BOOL)maximized;
- (id)_resultCopyWithKeywordDetectorDecision:(unint64_t)decision bestPhId:(unint64_t)id phraseResult:(id)result;
- (id)getAnalyzedResultFromAudioChunk:(id)chunk;
- (id)getAnalyzedResultFromFlushedAudio;
- (id)getLosingPhraseResultsWithDetectedPhId:(unint64_t)id;
- (id)phraseDetectorInfoFromPhId:(unint64_t)id;
- (void)dealloc;
- (void)reset;
- (void)setActiveChannel:(unint64_t)channel;
- (void)setConfig:(id)config;
- (void)setRunAsSecondChance:(BOOL)chance;
@end

@implementation CSPhraseDetector

- (id)_resultCopyWithKeywordDetectorDecision:(unint64_t)decision bestPhId:(unint64_t)id phraseResult:(id)result
{
  v34 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v8 = [resultCopy objectAtIndexedSubscript:id];
  decision = [v8 decision];

  if (decision == decision)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "[CSPhraseDetector _resultCopyWithKeywordDetectorDecision:bestPhId:phraseResult:]";
      v30 = 2048;
      decisionCopy2 = decision;
      v32 = 2048;
      idCopy = id;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Reporting decision (%tu) from (%tu)", buf, 0x20u);
    }

    v11 = [resultCopy objectAtIndexedSubscript:id];
    v12 = v11;
LABEL_16:
    v17 = [v11 copy];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = resultCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([v11 decision] == decision)
          {
            v18 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              phId = [v11 phId];
              *buf = 136315650;
              v29 = "[CSPhraseDetector _resultCopyWithKeywordDetectorDecision:bestPhId:phraseResult:]";
              v30 = 2048;
              decisionCopy2 = decision;
              v32 = 2048;
              idCopy = phId;
              _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s Reporting decision (%tu) from (%tu)", buf, 0x20u);
            }

            goto LABEL_16;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)_isSecondChanceCandidateWithScore:(float)score effectiveThreshold:(float)threshold secondChanceThreshold:(float)chanceThreshold
{
  if (self->_isSecondChance)
  {
    return 0;
  }

  return score >= chanceThreshold && score < threshold;
}

- (id)_getResultWithPhId:(unint64_t)id phraseDetectorInfo:(id)info ndapiResult:(id)result quasarResult:(id)quasarResult forceMaximized:(BOOL)maximized
{
  maximizedCopy = maximized;
  v88 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  resultCopy = result;
  quasarResultCopy = quasarResult;
  if ([(NSMutableArray *)self->_phraseResult count]<= id)
  {
    v19 = 0;
    goto LABEL_28;
  }

  idCopy = id;
  v15 = [(NSMutableArray *)self->_phraseResult objectAtIndex:id];
  phraseConfig = [infoCopy phraseConfig];
  if (v15)
  {
    [v15 ndapiScore];
    v18 = v17;
  }

  else
  {
    v18 = -INFINITY;
  }

  hasPendingNearMiss = [infoCopy hasPendingNearMiss];
  [infoCopy effectiveKeywordThreshold];
  v21 = v20;
  [phraseConfig loggingThreshold];
  v23 = v22;
  [phraseConfig ndapiScaleFactor];
  v25 = v24;
  v26 = phraseConfig;
  [phraseConfig recognizerScoreScaleFactor];
  v28 = v27;
  v29 = v15;
  if (quasarResultCopy)
  {
    [quasarResultCopy triggerConfidence];
    v31 = v30;
  }

  else
  {
    v31 = -1000.0;
  }

  v72 = quasarResultCopy;
  [resultCopy bestScore];
  v33 = v32;
  samplesFed = [resultCopy samplesFed];
  v35 = _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat;
  if (0xCCCCCCCCCCCCCCCDLL * _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat <= 0x3333333333333333)
  {
    v36 = CSLogContextFacilityCoreSpeech;
    v37 = *&samplesFed;
    v38 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO);
    samplesFed = *&v37;
    if (v38)
    {
      *buf = 136316674;
      v75 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
      v76 = 2048;
      v77 = idCopy;
      v78 = 2050;
      v79 = v33;
      v80 = 2050;
      v81 = v37;
      v82 = 2050;
      v83 = v31;
      v84 = 2050;
      v85 = v25;
      v86 = 2050;
      v87 = v28;
      _os_log_impl(&dword_1DDA4B000, v36, OS_LOG_TYPE_INFO, "%s [(%lu)] : NDAPI second pass best score = %{public}f with analyzed samples:                   %{public}tu with quasar score = %{public}f, ndapi scale factor = %{public}f, quasar scale factor = %{public}f", buf, 0x48u);
      samplesFed = *&v37;
      v35 = _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat;
    }
  }

  v39 = v35 + 1;
  _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat = v35 + 1;
  v40 = v33;
  if (self->_syncKeywordAnalyzerQuasar)
  {
    v40 = (v25 * v33) + v31 * v28;
  }

  v41 = v29;
  if (v18 >= v33 || maximizedCopy)
  {
    if (v40 >= v21)
    {
      v47 = CSLogContextFacilityCoreSpeech;
      v43 = v26;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        *&v49 = COERCE_DOUBLE([resultCopy samplesFed]);
        *buf = 136316162;
        v75 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
        v76 = 2048;
        v77 = idCopy;
        v78 = 2050;
        v79 = *&v49;
        v80 = 2050;
        v81 = v40;
        v82 = 2050;
        v83 = v21;
        _os_log_impl(&dword_1DDA4B000, v48, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Trigger detected with %{public}tu analyzed samples in NDAPI,                   combined score = %{public}lf, effective threshold = %{public}f", buf, 0x34u);
      }

      v42 = 1;
      goto LABEL_26;
    }

    v43 = v26;
    if (v40 < v23)
    {
      v44 = hasPendingNearMiss;
      if (maximizedCopy)
      {
        v45 = *&samplesFed;
        v46 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v75 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
          v76 = 2048;
          v77 = idCopy;
          v78 = 2050;
          v79 = v45;
          v80 = 2050;
          v81 = v40;
          _os_log_impl(&dword_1DDA4B000, v46, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Notify second pass reject at: %{public}tu                   with best score up to: %{public}.3f", buf, 0x2Au);
        }

        v42 = 3;
        goto LABEL_27;
      }

      goto LABEL_40;
    }

    v44 = hasPendingNearMiss;
    if (maximizedCopy)
    {
LABEL_32:
      v62 = *&samplesFed;
      v63 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v75 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
        v76 = 2048;
        v77 = idCopy;
        v78 = 2050;
        v79 = v62;
        v80 = 2050;
        v81 = v40;
        _os_log_impl(&dword_1DDA4B000, v63, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Detected near miss at %{public}lu samples                       with best score up to: %{public}.3f", buf, 0x2Au);
      }

      v42 = 2;
      goto LABEL_27;
    }

    if (hasPendingNearMiss)
    {
      nearMissDelayTimeout = self->_nearMissDelayTimeout;
      nearMissCandidateDetectedSamples = self->_nearMissCandidateDetectedSamples;
      if (nearMissDelayTimeout + nearMissCandidateDetectedSamples < samplesFed)
      {
        goto LABEL_32;
      }

      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v39, 1) <= 0x1999999999999999uLL)
      {
        v66 = samplesFed;
        v67 = CSLogContextFacilityCoreSpeech;
        v44 = 1;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v75 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
          v76 = 2048;
          v77 = idCopy;
          v78 = 2050;
          *&v79 = v66 - nearMissCandidateDetectedSamples + nearMissDelayTimeout;
          _os_log_impl(&dword_1DDA4B000, v67, OS_LOG_TYPE_INFO, "%s [phId = %tu] : Waiting for logging near miss                               until timeout %{public}lu samples", buf, 0x20u);
        }

LABEL_40:
        v42 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      self->_nearMissCandidateDetectedSamples = samplesFed;
      v68 = CSLogContextFacilityCoreSpeech;
      v69 = *&samplesFed;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v70 = self->_nearMissDelayTimeout;
        *buf = 136315906;
        v75 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
        v76 = 2048;
        v77 = idCopy;
        v78 = 2050;
        v79 = v69;
        v80 = 2050;
        v81 = *&v70;
        _os_log_impl(&dword_1DDA4B000, v68, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Detected near miss candidate at %{public}tu,                       let's wait %{public}tu samples to log", buf, 0x2Au);
      }
    }

    v42 = 0;
    v44 = 1;
    goto LABEL_27;
  }

  v42 = 0;
  v43 = v26;
LABEL_26:
  v44 = hasPendingNearMiss;
LABEL_27:
  [infoCopy setHasPendingNearMiss:v44];
  phraseConfig2 = [infoCopy phraseConfig];
  [phraseConfig2 secondChanceThreshold];
  LODWORD(v52) = v51;
  *&v53 = v40;
  *&v54 = v21;
  v55 = [(CSPhraseDetector *)self _isSecondChanceCandidateWithScore:v53 effectiveThreshold:v54 secondChanceThreshold:v52];

  v56 = [CSSinglePhraseResult alloc];
  *&v57 = v31;
  *&v58 = v40;
  *&v59 = v33;
  v19 = [(CSSinglePhraseResult *)v56 initWithPhId:idCopy keywordDetectorDecision:v42 combinedScore:resultCopy ndapiScore:self->_isSecondChance ndapiResult:v55 recognizerScore:self->_syncKeywordAnalyzerQuasar != 0 isSecondChance:v58 isSecondChanceCandidate:v59 isRunningQuasar:v57];

  quasarResultCopy = v72;
LABEL_28:

  v60 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)getLosingPhraseResultsWithDetectedPhId:(unint64_t)id
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_phraseResult;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 phId] != id)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)phraseDetectorInfoFromPhId:(unint64_t)id
{
  if ([(NSMutableArray *)self->_phraseDetectorInfos count]<= id)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_phraseDetectorInfos objectAtIndex:id];
  }

  return v5;
}

- (id)getAnalyzedResultFromFlushedAudio
{
  getAnalyzedResults = [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getAnalyzedResults];
  quasarCheckerResultAtCutOff = self->_quasarCheckerResultAtCutOff;
  if (quasarCheckerResultAtCutOff)
  {
    getResultsFromFlushedAudio = quasarCheckerResultAtCutOff;
  }

  else
  {
    getResultsFromFlushedAudio = [(CSSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar getResultsFromFlushedAudio];
  }

  v6 = getResultsFromFlushedAudio;
  v7 = [(CSPhraseDetector *)self _phraseDetectorResultFromNDAPIResults:getAnalyzedResults quasarResult:getResultsFromFlushedAudio forceMaximized:1];

  return v7;
}

- (id)getAnalyzedResultFromAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  if (!chunkCopy)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v5 = [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getAnalyzedResultsFromAudioChunk:chunkCopy];
  quasarCheckerResultAtCutOff = self->_quasarCheckerResultAtCutOff;
  if (quasarCheckerResultAtCutOff)
  {
    v7 = quasarCheckerResultAtCutOff;
  }

  else
  {
    syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;
    if (self->_processedSampleCount >= self->_quasarCheckerCutOffSamplesCount)
    {
      getResultsFromFlushedAudio = [(CSSyncKeywordAnalyzerQuasar *)syncKeywordAnalyzerQuasar getResultsFromFlushedAudio];
      objc_storeStrong(&self->_quasarCheckerResultAtCutOff, getResultsFromFlushedAudio);
      goto LABEL_8;
    }

    v7 = [(CSSyncKeywordAnalyzerQuasar *)syncKeywordAnalyzerQuasar getAnalyzedResultsFromAudioChunk:chunkCopy];
  }

  getResultsFromFlushedAudio = v7;
LABEL_8:
  self->_processedSampleCount += [chunkCopy numSamples];
  v8 = [(CSPhraseDetector *)self _phraseDetectorResultFromNDAPIResults:v5 quasarResult:getResultsFromFlushedAudio forceMaximized:0];

LABEL_9:

  return v8;
}

- (void)setConfig:(id)config
{
  v97 = *MEMORY[0x1E69E9840];
  configCopy = config;
  phraseConfigs = [configCopy phraseConfigs];
  v6 = [phraseConfigs count];

  if (v6)
  {
    [(NSMutableArray *)self->_phraseDetectorInfos removeAllObjects];
    quasarCheckerResultCutOffCount = [configCopy quasarCheckerResultCutOffCount];
    self->_quasarCheckerCutOffSamplesCount = [quasarCheckerResultCutOffCount unsignedIntegerValue];

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&self->_quasarCheckerCutOffSamplesCount;
      *buf = 136315394;
      v89 = "[CSPhraseDetector setConfig:]";
      v90 = 2048;
      v91 = v9;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s setting quasar checker model processed sample count cut off: %lu", buf, 0x16u);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    phraseConfigs2 = [configCopy phraseConfigs];
    v11 = [phraseConfigs2 countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v85;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v85 != v13)
          {
            objc_enumerationMutation(phraseConfigs2);
          }

          v15 = [[CSPhraseDetectorInfo alloc] initWithPhraseConfig:*(*(&v84 + 1) + 8 * i)];
          if (v15)
          {
            [(NSMutableArray *)self->_phraseDetectorInfos addObject:v15];
          }
        }

        v12 = [phraseConfigs2 countByEnumeratingWithState:&v84 objects:v96 count:16];
      }

      while (v12);
    }

    v16 = [CSKeywordAnalyzerNDAPI alloc];
    configPathNDAPI = [configCopy configPathNDAPI];
    resourcePath = [configCopy resourcePath];
    v19 = [(CSKeywordAnalyzerNDAPI *)v16 initWithConfigPath:configPathNDAPI resourcePath:resourcePath];
    syncKeywordAnalyzerNDAPI = self->_syncKeywordAnalyzerNDAPI;
    self->_syncKeywordAnalyzerNDAPI = v19;

    v75 = configCopy;
    if (self->_syncKeywordAnalyzerNDAPI && +[CSUtils supportPremiumModel](CSUtils, "supportPremiumModel") && [configCopy useRecognizerCombination])
    {
      array = [MEMORY[0x1E695DF70] array];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v22 = self->_phraseDetectorInfos;
      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v80 objects:v95 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v81;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v81 != v25)
            {
              objc_enumerationMutation(v22);
            }

            phraseConfig = [*(*(&v80 + 1) + 8 * j) phraseConfig];
            recognizerToken = [phraseConfig recognizerToken];
            [array addObject:recognizerToken];
          }

          v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v80 objects:v95 count:16];
        }

        while (v24);
      }

      overwritingVoiceTriggerMLock = +[CSUtils horsemanDeviceType]== 3;
      v30 = +[CSFPreferences sharedPreferences];
      shouldOverwriteVoiceTriggerMLock = [v30 shouldOverwriteVoiceTriggerMLock];

      if (shouldOverwriteVoiceTriggerMLock)
      {
        v32 = +[CSFPreferences sharedPreferences];
        overwritingVoiceTriggerMLock = [v32 overwritingVoiceTriggerMLock];
      }

      v33 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *&v34 = COERCE_DOUBLE(@"disabled");
        if (overwritingVoiceTriggerMLock)
        {
          *&v34 = COERCE_DOUBLE(@"enabled");
        }

        *buf = 136315394;
        v89 = "[CSPhraseDetector setConfig:]";
        v90 = 2112;
        v91 = *&v34;
        _os_log_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger memory lock %@", buf, 0x16u);
      }

      v35 = [CSSyncKeywordAnalyzerQuasar alloc];
      configPathRecognizer = [v75 configPathRecognizer];
      if (CSIsHorseman_onceToken != -1)
      {
        dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
      }

      v37 = [(CSSyncKeywordAnalyzerQuasar *)v35 initWithConfigPath:configPathRecognizer triggerTokensArray:array preventDuplicatedReset:CSIsHorseman_isHorseman memoryLock:overwritingVoiceTriggerMLock];
      syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;
      self->_syncKeywordAnalyzerQuasar = v37;
    }

    else
    {
      array = self->_syncKeywordAnalyzerQuasar;
      self->_syncKeywordAnalyzerQuasar = 0;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v39 = self->_phraseDetectorInfos;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v76 objects:v94 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v77;
      v74 = 136315650;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v77 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v76 + 1) + 8 * k);
          phraseConfig2 = [v44 phraseConfig];
          [phraseConfig2 threshold];
          v47 = v46;
          [phraseConfig2 secondChanceThreshold];
          v49 = v48;
          [phraseConfig2 loggingThreshold];
          v51 = v50;
          [phraseConfig2 ndapiScaleFactor];
          v59 = LODWORD(v52);
          if (!self->_syncKeywordAnalyzerNDAPI)
          {
            v60 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v89 = "[CSPhraseDetector setConfig:]";
              _os_log_impl(&dword_1DDA4B000, v60, OS_LOG_TYPE_DEFAULT, "%s Reset all thresholds to HUGE_VALF since NDAPI is nil", buf, 0xCu);
            }

            v51 = INFINITY;
            v49 = INFINITY;
            v47 = INFINITY;
          }

          if (self->_syncKeywordAnalyzerQuasar)
          {
            [phraseConfig2 recognizerScoreOffset];
            v62 = v61;
            v47 = v47 + v61;
            v49 = v49 + v61;
            [phraseConfig2 recognizerScoreScaleFactor];
            v64 = v63;
            [phraseConfig2 keywordRejectLoggingThreshold];
            v65 = LODWORD(v52);
          }

          else
          {
            v62 = 0.0;
            v65 = 2139095040;
            v64 = 0;
          }

          if (self->_syncKeywordAnalyzerNDAPI)
          {
            if (!self->_syncKeywordAnalyzerQuasar)
            {
              if ([v75 useRecognizerCombination])
              {
                [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getThreshold];
                v47 = v66;
                [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getLoggingThreshold];
                v51 = v67;
                [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getRejectLoggingThreshold];
                v65 = v68;
                v69 = CSLogContextFacilityCoreSpeech;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v74;
                  v89 = "[CSPhraseDetector setConfig:]";
                  v90 = 2050;
                  v91 = v47;
                  v92 = 2050;
                  v93 = v51;
                  _os_log_impl(&dword_1DDA4B000, v69, OS_LOG_TYPE_DEFAULT, "%s Using threshold from NDAPI since we are not able to use Quasar, threshold = %{public}f, logging threshold = %{public}f", buf, 0x20u);
                }
              }
            }
          }

          *&v52 = v47;
          *&v53 = v49;
          *&v54 = v51;
          LODWORD(v55) = v59;
          *&v56 = v62;
          LODWORD(v57) = v64;
          LODWORD(v58) = v65;
          v70 = [phraseConfig2 copyWithThreshold:v52 secondChanceThreshold:v53 loggingThreshold:v54 ndapiScaleFactor:v55 recognizerScoreOffset:v56 recognizerScoreScaleFactor:v57 keywordRejectLoggingThreshold:v58];
          [v44 setPhraseConfig:v70];
          *&v71 = v47;
          [v44 setEffectiveKeywordThreshold:v71];
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v76 objects:v94 count:16];
      }

      while (v41);
    }

    [(CSPhraseDetector *)self reset];
    configCopy = v75;
  }

  else
  {
    v72 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v89 = "[CSPhraseDetector setConfig:]";
      _os_log_error_impl(&dword_1DDA4B000, v72, OS_LOG_TYPE_ERROR, "%s Invalid assets config!", buf, 0xCu);
    }
  }

  v73 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CSPhraseDetector reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
  }

  [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI reset];
  [(CSSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar reset];
  [(NSMutableArray *)self->_phraseResult removeAllObjects];
  if ([(NSMutableArray *)self->_phraseDetectorInfos count])
  {
    v4 = 0;
    do
    {
      v5 = [CSSinglePhraseResult alloc];
      LODWORD(v6) = -8388608;
      LODWORD(v7) = -8388608;
      LODWORD(v8) = -998637568;
      v9 = [(CSSinglePhraseResult *)v5 initWithPhId:v4 keywordDetectorDecision:0 combinedScore:0 ndapiScore:0 ndapiResult:0 recognizerScore:self->_syncKeywordAnalyzerQuasar != 0 isSecondChance:v6 isSecondChanceCandidate:v7 isRunningQuasar:v8];
      [(NSMutableArray *)self->_phraseResult addObject:v9];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_phraseDetectorInfos count]);
  }

  quasarCheckerResultAtCutOff = self->_quasarCheckerResultAtCutOff;
  self->_quasarCheckerResultAtCutOff = 0;

  self->_processedSampleCount = 0;
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setRunAsSecondChance:(BOOL)chance
{
  chanceCopy = chance;
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_phraseDetectorInfos;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        phraseConfig = [v9 phraseConfig];
        v11 = phraseConfig;
        if (phraseConfig)
        {
          [phraseConfig secondChanceThreshold];
          v13 = v12;
          [v11 threshold];
          if (chanceCopy)
          {
            *&v14 = v13;
            [v9 setEffectiveKeywordThreshold:v14];
            v15 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v24 = "[CSPhraseDetector setRunAsSecondChance:]";
              v25 = 2050;
              v26 = v13;
              _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Using second chance threshold for voice trigger second pass: %{public}f", buf, 0x16u);
            }
          }

          else
          {
            [v9 setEffectiveKeywordThreshold:?];
          }
        }

        else
        {
          v16 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v24 = "[CSPhraseDetector setRunAsSecondChance:]";
            _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s Failed to fetch config", buf, 0xCu);
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v6);
  }

  self->_isSecondChance = chanceCopy;
  v17 = *MEMORY[0x1E69E9840];
}

- (void)setActiveChannel:(unint64_t)channel
{
  [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI setActiveChannel:?];
  syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;

  [(CSSyncKeywordAnalyzerQuasar *)syncKeywordAnalyzerQuasar setActiveChannel:channel];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSPhraseDetector dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSPhraseDetector Deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CSPhraseDetector;
  [(CSPhraseDetector *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (CSPhraseDetector)init
{
  v10.receiver = self;
  v10.super_class = CSPhraseDetector;
  v2 = [(CSPhraseDetector *)&v10 init];
  if (v2)
  {
    +[CSConfig inputRecordingSampleRate];
    *(v2 + 5) = (v3 * 0.5);
    array = [MEMORY[0x1E695DF70] array];
    v5 = *(v2 + 4);
    *(v2 + 4) = array;

    array2 = [MEMORY[0x1E695DF70] array];
    v7 = *(v2 + 7);
    *(v2 + 7) = array2;

    v8 = *(v2 + 8);
    *(v2 + 8) = 0;

    *(v2 + 72) = xmmword_1DDB1F800;
  }

  return v2;
}

@end