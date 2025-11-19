@interface CSStartOfSpeechDetector
- (CSStartOfSpeechDetector)initWithConfig:(id)a3 samplingRate:(unint64_t)a4 minSpeechFrames:(unint64_t)a5 numLeadingFrames:(unint64_t)a6 delegate:(id)a7;
- (CSStartOfSpeechDetectorDelegate)delegate;
- (void)addAudio:(id)a3 numSamples:(unint64_t)a4;
- (void)clientSilenceFeaturesAvailable:(id)a3;
- (void)endAudio;
- (void)resetForNewRequest;
@end

@implementation CSStartOfSpeechDetector

- (CSStartOfSpeechDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)clientSilenceFeaturesAvailable:(id)a3
{
  v4 = a3;
  sosQueue = self->_sosQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CSStartOfSpeechDetector_clientSilenceFeaturesAvailable___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sosQueue, v7);
}

void __58__CSStartOfSpeechDetector_clientSilenceFeaturesAvailable___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = MEMORY[0x277D015D8];
  v4 = *MEMORY[0x277D015D8];
  v5 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v5)
    {
      v36 = 136315138;
      v37 = "[CSStartOfSpeechDetector clientSilenceFeaturesAvailable:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Start of speech already reported, ignoring !", &v36, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = v4;
      [v6 silencePosterior];
      v9 = v8;
      [*(a1 + 40) silenceFramesCountMs];
      v11 = v10;
      [*(a1 + 40) processedAudioMs];
      v12 = *(*(a1 + 32) + 48);
      v36 = 136316162;
      v37 = "[CSStartOfSpeechDetector clientSilenceFeaturesAvailable:]_block_invoke";
      v38 = 2050;
      v39 = v9;
      v40 = 2050;
      v41 = v11;
      v42 = 2050;
      v43 = v13;
      v44 = 2050;
      v45 = v12;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s silProb= %{public}f, silnfcnt=%{public}f, clientProcessedAudioMs=%{public}f curSpeechFrmCnt=%{public}lu", &v36, 0x34u);
    }

    [*(a1 + 40) silenceFramesCountMs];
    if (v14 == 0.0)
    {
      [*(a1 + 40) processedAudioMs];
      v15 = *(a1 + 32);
      v17 = v16 - *(v15 + 12);
      *(v15 + 48) = ((v17 / [*(v15 + 24) getFrameDurationMs]) + *(v15 + 48));
    }

    else
    {
      *(*(a1 + 32) + 48) = 0;
    }

    [*(a1 + 40) processedAudioMs];
    *&v18 = v18;
    *(*(a1 + 32) + 12) = LODWORD(v18);
    if (*(*(a1 + 32) + 48) >= *(*(a1 + 32) + 40))
    {
      [*(a1 + 40) processedAudioMs];
      v20 = *(a1 + 32);
      v21 = v19 / 1000.0 * *(v20 + 64);
      v22 = *(v20 + 48);
      v23 = [*(v20 + 24) getFrameDurationMs] * v22;
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      v26 = (v21 - (v23 * *(v24 + 64)) / 1000.0);
      v27 = [*(v24 + 24) getFrameDurationMs];
      v28 = *(a1 + 32);
      v29 = *(v28 + 64);
      v30 = ((v27 * v25) / 1000.0 * v29);
      if (v26 <= v30)
      {
        v30 = 0;
      }

      v31 = v26 - v30;
      v32 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136316162;
        v37 = "[CSStartOfSpeechDetector clientSilenceFeaturesAvailable:]_block_invoke";
        v38 = 2050;
        v39 = v21;
        v40 = 2050;
        v41 = v31;
        v42 = 2048;
        v43 = v21 - v31;
        v44 = 2050;
        v45 = (v43 / v29);
        _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEFAULT, "%s Speech prob target reached at %{public}lu from %{public}lu, #samples=%lu, secs=%{public}f", &v36, 0x34u);
        v28 = *(a1 + 32);
      }

      *(v28 + 8) = 1;
      [*(*(a1 + 32) + 24) endAudio];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));

      if (WeakRetained)
      {
        v34 = objc_loadWeakRetained((*(a1 + 32) + 16));
        [v34 startOfSpeechDetector:*(a1 + 32) foundStartSampleAt:v31];
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)endAudio
{
  sosQueue = self->_sosQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CSStartOfSpeechDetector_endAudio__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(sosQueue, block);
}

uint64_t __35__CSStartOfSpeechDetector_endAudio__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(*(a1 + 32) + 24);

  return [v4 endAudio];
}

- (void)addAudio:(id)a3 numSamples:(unint64_t)a4
{
  v6 = a3;
  sosQueue = self->_sosQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSStartOfSpeechDetector_addAudio_numSamples___block_invoke;
  block[3] = &unk_2784C6998;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(sosQueue, block);
}

- (void)resetForNewRequest
{
  sosQueue = self->_sosQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CSStartOfSpeechDetector_resetForNewRequest__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(sosQueue, block);
}

void __45__CSStartOfSpeechDetector_resetForNewRequest__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D071E0]) initWithConfigFile:*(*(a1 + 32) + 32) samplingRate:*(*(a1 + 32) + 64) queue:*(*(a1 + 32) + 72)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(*(a1 + 32) + 24) setDelegate:?];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 24);
    v8 = 136315394;
    v9 = "[CSStartOfSpeechDetector resetForNewRequest]_block_invoke";
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Reset: Created EARCaesuraSilencePosteriorGenerator: %{public}@", &v8, 0x16u);
  }

  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 8) = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (CSStartOfSpeechDetector)initWithConfig:(id)a3 samplingRate:(unint64_t)a4 minSpeechFrames:(unint64_t)a5 numLeadingFrames:(unint64_t)a6 delegate:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = CSStartOfSpeechDetector;
  v15 = [(CSStartOfSpeechDetector *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, v14);
    v16->_samplingRate = a4;
    objc_storeStrong(&v16->_configFile, a3);
    v16->_minSpeechFrames = a5;
    v16->_numLeadingFrames = a6;
    v17 = dispatch_queue_create("StartOfSpeech SPG queue", 0);
    spgQueue = v16->_spgQueue;
    v16->_spgQueue = v17;

    v19 = dispatch_queue_create("StartOfSpeech queue", 0);
    sosQueue = v16->_sosQueue;
    v16->_sosQueue = v19;

    v21 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[CSStartOfSpeechDetector initWithConfig:samplingRate:minSpeechFrames:numLeadingFrames:delegate:]";
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_DEFAULT, "%s Created CSStartOfSpeechDetector: %{public}@ ", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

@end