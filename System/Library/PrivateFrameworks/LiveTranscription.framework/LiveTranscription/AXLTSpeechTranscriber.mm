@interface AXLTSpeechTranscriber
- (AXLTSpeechTranscriber)initWithDelegate:(id)delegate;
- (AXLTTranscriberDelegateProtocol)delegate;
- (BOOL)startTranscriptionWithLocale:(id)locale error:(id *)error;
- (BOOL)stopTranscription:(id *)transcription;
- (void)audioEngineConfigurationDidChange:(id)change;
- (void)calcHistogramForBuffer:(id)buffer;
- (void)cleanUp;
- (void)mediaServicesWereReset:(id)reset;
- (void)resetTranscription;
- (void)setupAudioEngineTap;
- (void)setupAudioSession;
- (void)setupTranscriberIfNeeded;
@end

@implementation AXLTSpeechTranscriber

- (AXLTSpeechTranscriber)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = AXLTSpeechTranscriber;
  v5 = [(AXLTSpeechTranscriber *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(AXLTSpeechTranscriber *)v5 setDelegate:delegateCopy];
    v6->_pid = -4;
    v7 = AXLCLocString(@"liveCaptions.microphone");
    appName = v6->_appName;
    v6->_appName = v7;

    *&v6->_isTranscribing = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_audioEngineConfigurationDidChange_ name:*MEMORY[0x277CB8008] object:0];
  }

  return v6;
}

- (BOOL)startTranscriptionWithLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  v7 = AXLogLiveTranscription();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AXLTSpeechTranscriber startTranscriptionWithLocale:? error:?];
  }

  if ([(AXLTSpeechTranscriber *)self isTranscribing])
  {
    v8 = 1;
  }

  else
  {
    if ([(AXLTSpeechTranscriber *)self transcriberVersion])
    {
      v9 = +[_TtC17LiveTranscription15AXLCTranscriber shared];
      [(AXLTSpeechTranscriber *)self setTranscriberV2:v9];

      transcriberV2 = [(AXLTSpeechTranscriber *)self transcriberV2];
      [transcriberV2 resetErrorStates];
    }

    v11 = [_TtC17LiveTranscription23AXLiveCaptionSourceInfo alloc];
    appName = [(AXLTSpeechTranscriber *)self appName];
    v13 = [(AXLiveCaptionSourceInfo *)v11 initWithSourceType:0 pid:4294967292 appID:@"Mic" appName:appName locale:localeCopy];
    source = self->_source;
    self->_source = v13;

    if (![(AXLTSpeechTranscriber *)self transcriberVersion])
    {
      v15 = +[AXLTTranscriber sharedInstance];
      [(AXLTSpeechTranscriber *)self setTranscriber:v15];

      transcriber = [(AXLTSpeechTranscriber *)self transcriber];
      downloadState = [transcriber downloadState];

      if (downloadState == -1)
      {
        transcriber2 = [(AXLTSpeechTranscriber *)self transcriber];
        [transcriber2 setDownloadState:-2];
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    sessionStartTime = self->_sessionStartTime;
    self->_sessionStartTime = date;

    [(AXLTSpeechTranscriber *)self setupAudioSession];
    [(AXLTSpeechTranscriber *)self setupAudioEngineTap];
    audioEngine = [(AXLTSpeechTranscriber *)self audioEngine];
    [audioEngine prepare];

    audioEngine2 = [(AXLTSpeechTranscriber *)self audioEngine];
    v28 = 0;
    [audioEngine2 startAndReturnError:&v28];
    v23 = v28;

    if (!v23)
    {
      goto LABEL_14;
    }

    v24 = AXLogLiveTranscription();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [AXLTSpeechTranscriber startTranscriptionWithLocale:v23 error:v24];
    }

    if ([v23 code] != -10868)
    {
      code = [v23 code];
      if (error)
      {
        if (code == 561017449)
        {
          v26 = 13;
        }

        else
        {
          v26 = 12;
        }

        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.accessibility.LiveTranscription" code:v26 userInfo:0];
      }

      [(AXLTSpeechTranscriber *)self cleanUp];
      v8 = 0;
    }

    else
    {
LABEL_14:
      v8 = 1;
      self->_isTranscribing = 1;
    }
  }

  return v8;
}

- (BOOL)stopTranscription:(id *)transcription
{
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXLTSpeechTranscriber stopTranscription:?];
  }

  if ([(AXLTSpeechTranscriber *)self isTranscribing])
  {
    [(AXLTSpeechTranscriber *)self cleanUp];
    self->_isTranscribing = 0;
    source = self->_source;
    self->_source = 0;
  }

  return 1;
}

- (void)resetTranscription
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_256022000, v0, v1, "MicTranscriber: Reset transcription failed error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setupAudioEngineTap
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_256022000, v0, v1, "MicTranscriber: error initializing audio engine: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__AXLTSpeechTranscriber_setupAudioEngineTap__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __44__AXLTSpeechTranscriber_setupAudioEngineTap__block_invoke_cold_1(v3);
  }

  [*(a1 + 32) setupTranscriberIfNeeded];
  [*(a1 + 32) calcHistogramForBuffer:v3];
  if ([*(a1 + 32) transcriberVersion])
  {
    v5 = [*(a1 + 32) transcriberV2];
    v6 = [*(a1 + 32) source];
    [v5 addAudioPCMBuffer:v3 for:v6];
  }

  if (![*(a1 + 32) transcriberVersion])
  {
    v7 = [*(a1 + 32) transcriber];
    [v7 appendAudioPCMBuffer:v3 forPID:{objc_msgSend(*(a1 + 32), "pid")}];
  }

  v8 = +[AXLTAudioTextDumper sharedInstance];
  v9 = [*(a1 + 32) sessionStartTime];
  [v8 saveAudioBuffer:v3 appName:@"Mic" sessionStartTime:v9];

  v10 = [*(a1 + 32) bufferLogTime];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = [*(a1 + 32) bufferLogTime];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v15 > 5.0)
  {
LABEL_9:
    v16 = AXLogLiveTranscription();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "frameCapacity")}];
      v20 = 138412290;
      v21 = v17;
      _os_log_impl(&dword_256022000, v16, OS_LOG_TYPE_DEFAULT, "MicTranscriber: Sent audio buffer with size: %@ for Mic", &v20, 0xCu);
    }

    v18 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setBufferLogTime:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)audioEngineConfigurationDidChange:(id)change
{
  if ([(AXLTSpeechTranscriber *)self isTranscribing])
  {

    [(AXLTSpeechTranscriber *)self resetTranscription];
  }
}

- (void)setupAudioSession
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_256022000, v0, v1, "Error setting kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl on audio session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)mediaServicesWereReset:(id)reset
{
  resetCopy = reset;
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [AXLTSpeechTranscriber mediaServicesWereReset:];
  }
}

- (void)setupTranscriberIfNeeded
{
  if ([(AXLTSpeechTranscriber *)self transcriberVersion])
  {
    transcriberV2 = [(AXLTSpeechTranscriber *)self transcriberV2];
    source = self->_source;
    audioFormat = self->_audioFormat;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke;
    v9[3] = &unk_27981C958;
    v9[4] = self;
    [transcriberV2 startTranscriptionFor:source audioFormat:audioFormat transcriberResult:v9];
  }

  else
  {
    transcriber = [(AXLTSpeechTranscriber *)self transcriber];
    v7 = [transcriber isTranscribingForPID:{-[AXLTSpeechTranscriber pid](self, "pid")}];

    if ((v7 & 1) == 0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_307;
      v8[3] = &unk_27981C9A8;
      v8[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }
}

void __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_cold_1(v3);
  }

  v5 = [*(a1 + 32) textLogTime];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [*(a1 + 32) textLogTime];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 > 5.0)
  {
LABEL_5:
    v11 = AXLogLiveTranscription();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = [v3 text];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_256022000, v11, OS_LOG_TYPE_DEFAULT, "MicTranscriber: caption %@", &v18, 0xCu);
    }

    v15 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setTextLogTime:v15];
  }

  v16 = [*(a1 + 32) delegate];
  [v16 liveCaptionsResult:v3];

  v17 = *MEMORY[0x277D85DE8];
}

void __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_307(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriber];
  v3 = [*(a1 + 32) pid];
  v4 = [*(a1 + 32) appName];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_2;
  v6[3] = &unk_27981C980;
  v7 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_310;
  v5[3] = &unk_27981C9A8;
  v5[4] = v7;
  [v2 startTranscriptionForPID:v3 appName:v4 callback:v6 completionCallback:v5];
}

void __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = AXLogLiveTranscription();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_2_cold_1();
  }

  v7 = [*(a1 + 32) textLogTime];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [*(a1 + 32) textLogTime];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  if (v12 > 5.0)
  {
LABEL_5:
    v13 = AXLogLiveTranscription();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = [v5 formattedString];
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "length")}];
      *buf = 138412290;
      v30 = v16;
      _os_log_impl(&dword_256022000, v13, OS_LOG_TYPE_DEFAULT, "MicTranscriber: Transcribed text: %@ for Mic", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setTextLogTime:v17];
  }

  v18 = [AXLTTranscribedData alloc];
  v19 = [MEMORY[0x277CBEAA8] date];
  v20 = [*(a1 + 32) pid];
  v21 = [*(a1 + 32) appName];
  LOBYTE(v28) = 0;
  v22 = [(AXLTTranscribedData *)v18 initWithTranscription:v5 requestType:0 timestamp:v19 pid:v20 appID:@"Mic" appName:v21 assetState:a3 silence:v28];

  v23 = [*(a1 + 32) delegate];
  [v23 transcriberOutputData:v22];

  v24 = +[AXLTAudioTextDumper sharedInstance];
  v25 = [v5 formattedString];
  v26 = [*(a1 + 32) sessionStartTime];
  [v24 saveTranscribedText:v25 appName:@"Mic" sessionStartTime:v26];

  v27 = *MEMORY[0x277D85DE8];
}

void __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_310(uint64_t a1)
{
  v2 = [AXLTTranscribedData alloc];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [*(a1 + 32) pid];
  v5 = [*(a1 + 32) appName];
  LOBYTE(v7) = 0;
  v8 = [(AXLTTranscribedData *)v2 initWithTranscription:0 requestType:0 timestamp:v3 pid:v4 appID:@"Mic" appName:v5 assetState:-2 silence:v7];

  v6 = [*(a1 + 32) delegate];
  [v6 transcriberOutputData:v8];
}

- (void)calcHistogramForBuffer:(id)buffer
{
  bufferCopy = buffer;
  transcriber = [(AXLTSpeechTranscriber *)self transcriber];
  v6 = [transcriber isTranscribingForPID:{-[AXLTSpeechTranscriber pid](self, "pid")}];

  if (v6)
  {
    v7 = [AXLTHistogramCalculator histogramForAudioPCMBuffer:bufferCopy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__AXLTSpeechTranscriber_calcHistogramForBuffer___block_invoke;
    v9[3] = &unk_27981C9D0;
    v10 = v7;
    selfCopy = self;
    v8 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __48__AXLTSpeechTranscriber_calcHistogramForBuffer___block_invoke(uint64_t a1)
{
  v3 = [[AXLTAudioInfo alloc] initWithAudioInfo:*(a1 + 32) requestType:0 pid:getpid()];
  v2 = [*(a1 + 40) delegate];
  [v2 audioInfoData:v3];
}

- (void)cleanUp
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_256022000, v0, v1, "MicTranscriber: AudioSession stop error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (AXLTTranscriberDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)startTranscriptionWithLocale:(void *)a1 error:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 isTranscribing];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startTranscriptionWithLocale:(void *)a1 error:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_256022000, a2, OS_LOG_TYPE_ERROR, "MicTranscriber: Error starting audio engine: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)stopTranscription:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 isTranscribing];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__AXLTSpeechTranscriber_setupAudioEngineTap__block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 frameLength];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)mediaServicesWereReset:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_256022000, v0, v1, "MicTranscriber: Media Services reset notification: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 text];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __49__AXLTSpeechTranscriber_setupTranscriberIfNeeded__block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_256022000, v0, OS_LOG_TYPE_DEBUG, "MicTranscriber: Asset download state: %ld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end