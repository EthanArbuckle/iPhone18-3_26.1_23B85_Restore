@interface CSKeywordDetector
- (CSKeywordDetector)initWithManager:(id)manager asset:(id)asset;
- (CSSpeechManager)speechManager;
- (CSVoiceTriggerDelegate)delegate;
- (void)_reset;
- (void)_setAsset:(id)asset;
- (void)keywordAnalyzerQuasar:(id)quasar hasResultAvailable:(id)available forChannel:(unint64_t)channel;
- (void)reset;
- (void)setAsset:(id)asset;
- (void)speechManagerDidStartForwarding:(id)forwarding successfully:(BOOL)successfully error:(id)error;
- (void)speechManagerDidStopForwarding:(id)forwarding forReason:(int64_t)reason;
- (void)speechManagerLPCMRecordBufferAvailable:(id)available chunk:(id)chunk;
- (void)startDetectKeyword:(id)keyword;
@end

@implementation CSKeywordDetector

- (CSSpeechManager)speechManager
{
  WeakRetained = objc_loadWeakRetained(&self->_speechManager);

  return WeakRetained;
}

- (CSVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)keywordAnalyzerQuasar:(id)quasar hasResultAvailable:(id)available forChannel:(unint64_t)channel
{
  v22 = *MEMORY[0x277D85DE8];
  [quasar triggerConfidence];
  v7 = v6;
  keywordThreshold = self->_keywordThreshold;
  v9 = *MEMORY[0x277D015D8];
  v10 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT);
  if (keywordThreshold >= v7)
  {
    if (v10)
    {
      analyzedSampleCount = self->_analyzedSampleCount;
      *buf = 136315650;
      v17 = "[CSKeywordDetector keywordAnalyzerQuasar:hasResultAvailable:forChannel:]";
      v18 = 2048;
      v19 = analyzedSampleCount;
      v20 = 2050;
      v21 = v7;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Keyword NOT detected at %tu with %{public}.3f confidence", buf, 0x20u);
    }
  }

  else
  {
    if (v10)
    {
      v11 = self->_analyzedSampleCount;
      *buf = 136315650;
      v17 = "[CSKeywordDetector keywordAnalyzerQuasar:hasResultAvailable:forChannel:]";
      v18 = 2050;
      v19 = v11;
      v20 = 2050;
      v21 = v7;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Keyword detected at %{public}tu with %{public}.3f confidence", buf, 0x20u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__CSKeywordDetector_keywordAnalyzerQuasar_hasResultAvailable_forChannel___block_invoke;
    block[3] = &unk_2784C6FD0;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __73__CSKeywordDetector_keywordAnalyzerQuasar_hasResultAvailable_forChannel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v4 keywordDetectorDidDetectKeyword];
  }
}

- (void)speechManagerDidStopForwarding:(id)forwarding forReason:(int64_t)reason
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSKeywordDetector speechManagerDidStopForwarding:forReason:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CSKeywordDetector_speechManagerDidStopForwarding_forReason___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __62__CSKeywordDetector_speechManagerDidStopForwarding_forReason___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == 1)
  {
    v2 = result;
    result = [*(v1 + 48) endAudio];
    *(*(v2 + 32) + 8) = 0;
  }

  return result;
}

- (void)speechManagerDidStartForwarding:(id)forwarding successfully:(BOOL)successfully error:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[CSKeywordDetector speechManagerDidStartForwarding:successfully:error:]";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CSKeywordDetector_speechManagerDidStartForwarding_successfully_error___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __72__CSKeywordDetector_speechManagerDidStartForwarding_successfully_error___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) runRecognition];
  *(*(a1 + 32) + 8) = 1;
  return result;
}

- (void)speechManagerLPCMRecordBufferAvailable:(id)available chunk:(id)chunk
{
  chunkCopy = chunk;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__CSKeywordDetector_speechManagerLPCMRecordBufferAvailable_chunk___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = chunkCopy;
  v7 = chunkCopy;
  dispatch_async(queue, v8);
}

void __66__CSKeywordDetector_speechManagerLPCMRecordBufferAvailable_chunk___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 40))
  {
    if (*(v1 + 8) == 1)
    {
      v3 = *(v1 + 48);
      if (*(v1 + 56) >= *(v1 + 64))
      {
        [v3 endAudio];
        *(*(a1 + 32) + 8) = 0;
      }

      else
      {
        [v3 processAudioChunk:*(a1 + 40)];
        *(*(a1 + 32) + 56) += [*(a1 + 40) numSamples];
      }
    }
  }

  else
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CSKeywordDetector speechManagerLPCMRecordBufferAvailable:chunk:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Could not find Assets. Cannot process Audio", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setAsset:(id)asset
{
  v14 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (assetCopy)
  {
    objc_storeStrong(&self->_currentAsset, asset);
    keywordDetectorConfigPathRecognizer = [(CSAsset *)self->_currentAsset keywordDetectorConfigPathRecognizer];
    v7 = [objc_alloc(MEMORY[0x277D017D0]) initWithConfigPath:keywordDetectorConfigPathRecognizer triggerTokens:0 useKeywordSpotting:1];
    keywordAnalyzer = self->_keywordAnalyzer;
    self->_keywordAnalyzer = v7;

    [(CSKeywordAnalyzerQuasar *)self->_keywordAnalyzer setDelegate:self];
    [(CSAsset *)self->_currentAsset keywordDetectorThreshold];
    self->_keywordThreshold = v9;
    [(CSKeywordDetector *)self _reset];
  }

  else
  {
    v10 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[CSKeywordDetector _setAsset:]";
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s asset is nil, stop initialization", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__CSKeywordDetector_setAsset___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (void)_reset
{
  self->_analyzedSampleCount = 0;
  self->_decisionWaitSampleCount = 0;
  [(CSKeywordAnalyzerQuasar *)self->_keywordAnalyzer reset];
  self->_isRunningRecognizer = 0;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__CSKeywordDetector_reset__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startDetectKeyword:(id)keyword
{
  v13 = *MEMORY[0x277D85DE8];
  keywordCopy = keyword;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSKeywordDetector startDetectKeyword:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CSKeywordDetector_startDetectKeyword___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = keywordCopy;
  v7 = keywordCopy;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __40__CSKeywordDetector_startDetectKeyword___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D01D10]];
  [v2 setActiveChannel:{objc_msgSend(v3, "unsignedIntegerValue")}];

  v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D01EB0]];
  [v4 doubleValue];
  v6 = v5;

  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v8 = (v6 * v7);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v10 = v9;
  [*(*(a1 + 32) + 40) keywordDetectorWaitTimeSinceVT];
  *(*(a1 + 32) + 64) = (v8 + (v10 * v11));
  v12 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 32) + 64);
    v14 = MEMORY[0x277D016E0];
    v15 = v12;
    [v14 inputRecordingSampleRate];
    v18 = 136316162;
    v19 = "[CSKeywordDetector startDetectKeyword:]_block_invoke";
    v20 = 2050;
    v21 = v13;
    v22 = 2050;
    v23 = (v13 / v16);
    v24 = 2050;
    v25 = v8;
    v26 = 2050;
    v27 = v6;
    _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Setting decisionWaitSampleCount at %{public}tu (%{public}.3f) given vtEndSampleCount at %{public}tu (%{public}.3f)", &v18, 0x34u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (CSKeywordDetector)initWithManager:(id)manager asset:(id)asset
{
  managerCopy = manager;
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = CSKeywordDetector;
  v8 = [(CSKeywordDetector *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_create("CSKeywordDetector Queue", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = v8->_queue;
    v12 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v11, v12);

    objc_storeWeak(&v8->_speechManager, managerCopy);
    [(CSKeywordDetector *)v8 _setAsset:assetCopy];
  }

  return v8;
}

@end