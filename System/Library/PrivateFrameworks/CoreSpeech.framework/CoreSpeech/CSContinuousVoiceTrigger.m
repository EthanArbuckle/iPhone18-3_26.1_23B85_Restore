@interface CSContinuousVoiceTrigger
- (CSContinuousVoiceTrigger)init;
- (CSContinuousVoiceTriggerDelegate)delegate;
- (void)_keywordAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5 lastVoiceTriggerScore:(float)a6 phId:(unint64_t)a7;
- (void)_reset;
- (void)_setAsset:(id)a3;
- (void)_shotAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5;
- (void)_startDetectTwoShot:(id)a3;
- (void)processAudioSamples:(id)a3;
- (void)resetWithAudioRecordContext:(id)a3;
- (void)setAsset:(id)a3;
- (void)startDetectTwoShot:(id)a3;
@end

@implementation CSContinuousVoiceTrigger

- (void)_reset
{
  v17 = *MEMORY[0x277D85DE8];
  self->_pendingTwoShotDetection = 0;
  *&self->_mode = 0u;
  *&self->_triggerEndSampleCount = 0u;
  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer reset];
  v3 = [MEMORY[0x277D016E0] channelForProcessedInput];
  self->_activeChannel = v3;
  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer setActiveChannel:v3];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  lastVoiceTriggerScores = self->_lastVoiceTriggerScores;
  self->_lastVoiceTriggerScores = v4;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CSContinuousVoiceTriggerConfig *)self->_cvtConfig voiceTriggerPhIds];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableDictionary *)self->_lastVoiceTriggerScores setObject:&unk_283668118 forKey:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (CSContinuousVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_keywordAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5 lastVoiceTriggerScore:(float)a6 phId:(unint64_t)a7
{
  v58 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  [v13 bestScore];
  v15 = v14;
  v16 = _keywordAnalyzerNDAPI_hasResultAvailable_forChannel_lastVoiceTriggerScore_phId__heartbeat;
  if (!(_keywordAnalyzerNDAPI_hasResultAvailable_forChannel_lastVoiceTriggerScore_phId__heartbeat % self->_heartbeatFactor))
  {
    v17 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v49 = "[CSContinuousVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:lastVoiceTriggerScore:phId:]";
      v50 = 2050;
      *&v51 = v15;
      v52 = 2050;
      v53 = *&a5;
      v54 = 2050;
      v55 = a7;
      v56 = 2050;
      v57 = v16;
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s NDAPI continuous voicetrigger best score = %{public}f for channel = %{public}tu,  phId: %{public}tu, heartbeat = %{public}lld", buf, 0x34u);
      v16 = _keywordAnalyzerNDAPI_hasResultAvailable_forChannel_lastVoiceTriggerScore_phId__heartbeat;
    }
  }

  _keywordAnalyzerNDAPI_hasResultAvailable_forChannel_lastVoiceTriggerScore_phId__heartbeat = v16 + 1;
  if (v15 <= a6 && v15 >= self->_keywordThreshold)
  {
    v43 = v12;
    v18 = MEMORY[0x277D015D8];
    v19 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v49 = "[CSContinuousVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:lastVoiceTriggerScore:phId:]";
      v50 = 2048;
      v51 = a7;
      v52 = 2050;
      v53 = v15;
      _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s Continuous VoiceTrigger detected with %tu! (score = %{public}f)", buf, 0x20u);
    }

    v20 = [v13 bestStart];
    v21 = [v13 bestEnd];
    v22 = [(CSAudioTimeConverter *)self->_audioTimeConverter hostTimeFromSampleCount:v20];
    v23 = [(CSAudioTimeConverter *)self->_audioTimeConverter hostTimeFromSampleCount:v21];
    if (!self->_audioTimeConverter)
    {
      v24 = *v18;
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v49 = "[CSContinuousVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:lastVoiceTriggerScore:phId:]";
        _os_log_error_impl(&dword_222E4D000, v24, OS_LOG_TYPE_ERROR, "%s Warning: audioTimeConverter not existing, override triggerEndMachTime as NOW", buf, 0xCu);
      }

      v23 = mach_absolute_time();
    }

    v25 = v23;
    v46[0] = *MEMORY[0x277D01F00];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "bestStart")}];
    v47[0] = v26;
    v46[1] = *MEMORY[0x277D01EA8];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "bestEnd")}];
    v47[1] = v27;
    v46[2] = *MEMORY[0x277D01EF0];
    *&v28 = v15;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    v30 = *MEMORY[0x277D01DD8];
    v47[2] = v29;
    v47[3] = MEMORY[0x277CBEC38];
    v31 = *MEMORY[0x277D01D10];
    v46[3] = v30;
    v46[4] = v31;
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D016E0], "channelForProcessedInput")}];
    v47[4] = v32;
    v46[5] = *MEMORY[0x277D01EF8];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
    v47[5] = v33;
    v46[6] = *MEMORY[0x277D01EA0];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25];
    v47[6] = v34;
    v46[7] = *MEMORY[0x277D01ED0];
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    v47[7] = v35;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:8];
    v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v37 = MEMORY[0x277D015D8];
    v38 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = "[CSContinuousVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:lastVoiceTriggerScore:phId:]";
      v50 = 2114;
      *&v51 = v36;
      _os_log_impl(&dword_222E4D000, v38, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
    }

    v12 = v43;
    if (!self->_pendingTwoShotDetection || v36 == 0.0)
    {
      [v43 reset];
    }

    else
    {
      v39 = *v37;
      if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v49 = "[CSContinuousVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:lastVoiceTriggerScore:phId:]";
        _os_log_impl(&dword_222E4D000, v39, OS_LOG_TYPE_DEFAULT, "%s Starting pending two shot detection", buf, 0xCu);
      }

      [v43 resetBest];
      self->_pendingTwoShotDetection = 0;
      [(CSContinuousVoiceTrigger *)self _startDetectTwoShot:*&v36];
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__CSContinuousVoiceTrigger__keywordAnalyzerNDAPI_hasResultAvailable_forChannel_lastVoiceTriggerScore_phId___block_invoke;
    block[3] = &unk_2784C6FA8;
    block[4] = self;
    v45 = v36;
    v41 = *&v36;
    dispatch_async(queue, block);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __107__CSContinuousVoiceTrigger__keywordAnalyzerNDAPI_hasResultAvailable_forChannel_lastVoiceTriggerScore_phId___block_invoke(uint64_t a1)
{
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v4 continuousVoiceTrigger:*(a1 + 32) detectedVoiceTriggerResult:*(a1 + 40)];
  }
}

- (void)_shotAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  [a4 bestScore];
  v10 = v9;
  v11 = MEMORY[0x277D015D8];
  v12 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "[CSContinuousVoiceTrigger _shotAnalyzerNDAPI:hasResultAvailable:forChannel:]";
    v29 = 2050;
    v30 = v10;
    v31 = 2050;
    v32 = *&a5;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s Shot: best score = %{public}f for channel = %{public}tu", buf, 0x20u);
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    analyzedSampleCount = self->_analyzedSampleCount;
    v14 = self->_twoShotDecisionWaitSamples + self->_triggerEndSampleCount;
    *buf = 136315650;
    v28 = "[CSContinuousVoiceTrigger _shotAnalyzerNDAPI:hasResultAvailable:forChannel:]";
    v29 = 2050;
    v30 = *&analyzedSampleCount;
    v31 = 2050;
    v32 = *&v14;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s analyzedSampleCount: %{public}tu, checkTime: %{public}lu", buf, 0x20u);
  }

  if (CSIsWatch())
  {
    v15 = [(CSAudioRecordContext *)self->_audioRecordContext isRTSTriggered];
  }

  else
  {
    v15 = 0;
  }

  if (!self->_hasResetShotAnalyzerBestScore && (v15 & 1) == 0)
  {
    v16 = self->_analyzedSampleCount;
    if (v16 >= self->_triggerEndSampleCount)
    {
      v17 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v28 = "[CSContinuousVoiceTrigger _shotAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v29 = 2050;
        v30 = *&v16;
        _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_INFO, "%s Reset bestScore at analyzedSampleCount: %{public}tu", buf, 0x16u);
      }

      self->_hasResetShotAnalyzerBestScore = 1;
      [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer resetBest];
    }
  }

  v18 = self->_analyzedSampleCount;
  if (v18 >= self->_twoShotDecisionWaitSamples + self->_triggerEndSampleCount)
  {
    twoShotThreshold = self->_twoShotThreshold;
    if (v10 >= twoShotThreshold)
    {
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      v22 = v21;
      if ((v15 & 1) != 0 || [MEMORY[0x277D018F8] supportCSTwoShotDecision] && (CSIsOSX() & 1) == 0)
      {
        queue = self->_queue;
        block[1] = 3221225472;
        block[0] = MEMORY[0x277D85DD0];
        block[2] = __77__CSContinuousVoiceTrigger__shotAnalyzerNDAPI_hasResultAvailable_forChannel___block_invoke;
        block[3] = &unk_2784C5F40;
        block[4] = self;
        *&block[5] = v18 / v22;
        v26 = v10;
        dispatch_async(queue, block);
      }
    }

    else
    {
      v20 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v28 = "[CSContinuousVoiceTrigger _shotAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v29 = 2050;
        v30 = v10;
        v31 = 2050;
        v32 = twoShotThreshold;
        _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_DEFAULT, "%s Not entering two shot: [score: %{public}.3f < threshold: %{public}.3f]", buf, 0x20u);
      }
    }

    self->_mode = 0;
    [v8 reset];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __77__CSContinuousVoiceTrigger__shotAnalyzerNDAPI_hasResultAvailable_forChannel___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    kdebug_trace();
    v4 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v4 continuousVoiceTrigger:*(a1 + 32) detectedSilenceAfterVoiceTriggerAt:*(a1 + 40)];

    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 16);
      v10 = 136315906;
      v11 = "[CSContinuousVoiceTrigger _shotAnalyzerNDAPI:hasResultAvailable:forChannel:]_block_invoke";
      v12 = 2050;
      v13 = v7;
      v14 = 2050;
      v15 = v6;
      v16 = 2050;
      v17 = v8;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Entering two shot at %{public}.2f with [score: %{public}.3f > threshold: %{public}.3f]", &v10, 0x2Au);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)processAudioSamples:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CSContinuousVoiceTrigger_processAudioSamples___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __48__CSContinuousVoiceTrigger_processAudioSamples___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 48))
  {
    v2 = [*(a1 + 40) numSamples];
    if (v2 >= 1)
    {
      v3 = v2;
      v4 = 0;
      do
      {
        context = objc_autoreleasePoolPush();
        v40 = v4;
        v41 = v3;
        if (v3 >= 0x280)
        {
          v5 = 640;
        }

        else
        {
          v5 = v3;
        }

        v6 = [*(a1 + 40) subChunkFrom:v4 numSamples:v5];
        v37 = [v6 numSamples];
        v36 = [v6 numSamples];
        *(*(a1 + 32) + 72) += [v6 numSamples];
        v38 = v6;
        v7 = [*(*(a1 + 32) + 56) getAnalyzedResultsFromAudioChunk:v6];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v8 = 0x277CCA000uLL;
        v43 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v43)
        {
          v9 = 0;
          v10 = *v45;
          v42 = *v45;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v45 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v44 + 1) + 8 * i);
              v13 = *(a1 + 32);
              v14 = *(v13 + 112);
              if (*(v13 + 64) == 1)
              {
                v15 = [v14 silencePhIds];
                v16 = [*(v8 + 2992) numberWithUnsignedInteger:v9];
                v17 = [v15 containsObject:v16];

                if (v17)
                {
                  [*(a1 + 32) _shotAnalyzerNDAPI:*(*(a1 + 32) + 56) hasResultAvailable:v12 forChannel:{objc_msgSend(*(*(a1 + 32) + 56), "activeChannel")}];
                }
              }

              else
              {
                v18 = [v14 voiceTriggerPhIds];
                v19 = [*(v8 + 2992) numberWithUnsignedInteger:v9];
                v20 = [v18 containsObject:v19];

                if (v20)
                {
                  v21 = *(a1 + 32);
                  v22 = v21[7];
                  v23 = [v22 activeChannel];
                  v24 = v7;
                  v25 = *(*(a1 + 32) + 120);
                  v26 = [*(v8 + 2992) numberWithUnsignedInteger:v9];
                  v27 = [v25 objectForKeyedSubscript:v26];
                  [v27 floatValue];
                  [v21 _keywordAnalyzerNDAPI:v22 hasResultAvailable:v12 forChannel:v23 lastVoiceTriggerScore:v9 phId:?];

                  v28 = *(*(a1 + 32) + 120);
                  v29 = MEMORY[0x277CCABB0];
                  [v12 bestScore];
                  v30 = [v29 numberWithFloat:?];
                  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
                  v32 = v28;
                  v8 = 0x277CCA000;
                  [v32 setObject:v30 forKey:v31];

                  v7 = v24;
                  v10 = v42;
                }
              }

              ++v9;
            }

            v43 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v43);
        }

        v3 = v41 - v37;
        v33 = v7;
        v4 = v36 + v40;

        objc_autoreleasePoolPop(context);
      }

      while ((v41 - v37) > 0);
    }
  }

  else
  {
    v34 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v50 = "[CSContinuousVoiceTrigger processAudioSamples:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v34, OS_LOG_TYPE_ERROR, "%s Could not find Assets. Cannot process Audio", buf, 0xCu);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_startDetectTwoShot:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSAudioRecordContext *)self->_audioRecordContext isRTSTriggered];
  if (v4 || !v5)
  {
    self->_mode = 1;
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D01EA8]];
    v8 = [v7 unsignedIntegerValue];
    v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D01D30]];
    self->_triggerEndSampleCount = v8 - [v9 unsignedIntegerValue];

    self->_hasResetShotAnalyzerBestScore = 0;
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v11 = v10;
    [(CSContinuousVoiceTriggerConfig *)self->_cvtConfig twoShotDecisionWaitTime];
    self->_twoShotDecisionWaitSamples = (v11 * v12);
    v13 = MEMORY[0x277D015D8];
    v14 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      triggerEndSampleCount = self->_triggerEndSampleCount;
      v16 = MEMORY[0x277D016E0];
      v17 = v14;
      [v16 inputRecordingSampleRate];
      v19 = (triggerEndSampleCount / v18);
      twoShotThreshold = self->_twoShotThreshold;
      twoShotDecisionWaitSamples = self->_twoShotDecisionWaitSamples;
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      v26 = 136316418;
      v27 = "[CSContinuousVoiceTrigger _startDetectTwoShot:]";
      v28 = 2050;
      v29 = triggerEndSampleCount;
      v30 = 2050;
      v31 = v19;
      v32 = 2050;
      v33 = twoShotThreshold;
      v34 = 2050;
      v35 = twoShotDecisionWaitSamples;
      v36 = 2050;
      v37 = (twoShotDecisionWaitSamples / v22);
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s Setting two shot decision mode triggerEndSampleCount = %{public}tu (%{public}.3f), twoShotThreshold = %{public}.3f, twoShotDecisionWaitSamples = %{public}tu (%{public}.3f)", &v26, 0x3Eu);

      v14 = *v13;
    }

    self->_activeChannel = 0;
    v23 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    activeChannel = 0;
    if (v23)
    {
      v26 = 136315394;
      v27 = "[CSContinuousVoiceTrigger _startDetectTwoShot:]";
      v28 = 2050;
      v29 = 0;
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s Setting active channel of continuous voice trigger to %{public}tu according to VTEI", &v26, 0x16u);
      activeChannel = self->_activeChannel;
    }

    [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer setActiveChannel:activeChannel];
  }

  else
  {
    v6 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315138;
      v27 = "[CSContinuousVoiceTrigger _startDetectTwoShot:]";
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s RTS triggered with nil voicetrigger info. Falling back to CVT pending two shot detection", &v26, 0xCu);
    }

    self->_mode = 0;
    self->_pendingTwoShotDetection = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)startDetectTwoShot:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSContinuousVoiceTrigger startDetectTwoShot:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__CSContinuousVoiceTrigger_startDetectTwoShot___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setAsset:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_currentAsset, a3);
    v6 = [MEMORY[0x277D016E8] decodeConfigFrom:self->_currentAsset];
    cvtConfig = self->_cvtConfig;
    self->_cvtConfig = v6;

    v8 = [(CSAsset *)self->_currentAsset resourcePath];
    v9 = [(CSContinuousVoiceTriggerConfig *)self->_cvtConfig configPathNDAPI];
    v10 = [objc_alloc(MEMORY[0x277D017B8]) initWithConfigPath:v9 resourcePath:v8];
    keywordAnalyzer = self->_keywordAnalyzer;
    self->_keywordAnalyzer = v10;

    [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzer setActiveChannel:self->_activeChannel];
    [(CSContinuousVoiceTriggerConfig *)self->_cvtConfig threshold];
    self->_keywordThreshold = v12;
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v14 = v13;
    [(CSContinuousVoiceTriggerConfig *)self->_cvtConfig twoShotDecisionWaitTime];
    self->_twoShotDecisionWaitSamples = (v14 * v15);
    [(CSContinuousVoiceTriggerConfig *)self->_cvtConfig twoShotThreshold];
    self->_twoShotThreshold = v16;
  }

  else
  {
    v17 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[CSContinuousVoiceTrigger _setAsset:]";
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s asset is nil, stop initialization", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__CSContinuousVoiceTrigger_setAsset___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)resetWithAudioRecordContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CSContinuousVoiceTrigger_resetWithAudioRecordContext___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __56__CSContinuousVoiceTrigger_resetWithAudioRecordContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAudioRecordContext:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _reset];
}

- (CSContinuousVoiceTrigger)init
{
  v9.receiver = self;
  v9.super_class = CSContinuousVoiceTrigger;
  v2 = [(CSContinuousVoiceTrigger *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSContinuousVoiceTrigger Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    v6 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v5, v6);

    [MEMORY[0x277D016E0] inputRecordingBufferDuration];
    v2->_heartbeatFactor = (2.0 / v7);
    [(CSContinuousVoiceTrigger *)v2 _reset];
  }

  return v2;
}

@end