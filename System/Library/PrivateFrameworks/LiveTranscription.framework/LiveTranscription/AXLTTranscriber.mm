@interface AXLTTranscriber
+ (AXLTTranscriber)sharedInstance;
- (AXLTTranscriber)init;
- (BOOL)isAssetPending;
- (BOOL)isTranscribingForPID:(int)a3;
- (float)_coalsecingTime;
- (int64_t)defaultTaskHint;
- (int64_t)mapUserTaskHint;
- (int64_t)recognitionTaskHint;
- (void)_downloadAndInstallSpeechRecognizer;
- (void)_handleAssetDownloadError:(id)a3;
- (void)_restartTranscription;
- (void)dealloc;
- (void)speechRecognitionDidDetectSpeech:(id)a3;
- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4;
- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)speechRecognitionTask:(id)a3 didHypothesizeTranscription:(id)a4;
- (void)speechRecognitionTaskFinishedReadingAudio:(id)a3;
- (void)speechRecognitionTaskWasCancelled:(id)a3;
@end

@implementation AXLTTranscriber

+ (AXLTTranscriber)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AXLTTranscriber_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __33__AXLTTranscriber_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXLTTranscriber)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = AXLTTranscriber;
  v2 = [(AXLTTranscriber *)&v13 init];
  if (v2)
  {
    v3 = +[AXLTLanguageAssetManager sharedInstance];
    languageAssetManager = v2->_languageAssetManager;
    v2->_languageAssetManager = v3;

    v5 = [(AXLTTranscriber *)v2 languageAssetManager];
    v6 = [v5 locale];

    v7 = AXLogLiveTranscription();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 localeIdentifier];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_256022000, v7, OS_LOG_TYPE_DEFAULT, "Transcriber: Using locale: %@", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CDCF00]) initWithLocale:v6];
    [(AXLTTranscriber *)v2 setRecognizer:v9];

    v10 = [(AXLTTranscriber *)v2 recognizer];
    [v10 setDelegate:v2];

    v2->_downloadState = -2;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber dealloc];
  }

  v4.receiver = self;
  v4.super_class = AXLTTranscriber;
  [(AXLTTranscriber *)&v4 dealloc];
}

- (int64_t)recognitionTaskHint
{
  if (self->_taskHint)
  {
    return [(AXLTTranscriber *)self mapUserTaskHint];
  }

  else
  {
    return [(AXLTTranscriber *)self defaultTaskHint];
  }
}

- (int64_t)mapUserTaskHint
{
  result = [(AXLTTranscriber *)self taskHint]- 1;
  if (result >= 4)
  {

    return [(AXLTTranscriber *)self defaultTaskHint];
  }

  return result;
}

- (int64_t)defaultTaskHint
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 localeIdentifier];
  v4 = [v3 isEqualToString:@"en_US"];

  if (v4)
  {
    return 1004;
  }

  else
  {
    return 1;
  }
}

void __80__AXLTTranscriber_startTranscriptionForPID_appName_callback_completionCallback___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_256022000, v4, OS_LOG_TYPE_DEFAULT, "Transcriber: Language asset is available: %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__AXLTTranscriber_startTranscriptionForPID_appName_callback_completionCallback___block_invoke_289;
  v7[3] = &unk_27981CAE8;
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __80__AXLTTranscriber_startTranscriptionForPID_appName_callback_completionCallback___block_invoke_289(uint64_t a1)
{
  v2 = *(a1 + 44);
  v3 = *(a1 + 32);
  if (v2)
  {
    return [v3 resumeTranscriptionForPID:*(a1 + 40)];
  }

  else
  {
    return [v3 _downloadAndInstallSpeechRecognizer];
  }
}

- (BOOL)isTranscribingForPID:(int)a3
{
  v5 = [(AXLTTranscriber *)self isTranscribing];
  if (v5)
  {
    LOBYTE(v5) = [(AXLTTranscriber *)self pid]== a3;
  }

  return v5;
}

- (void)_restartTranscription
{
  v3 = [(AXLTTranscriber *)self pid];
  v6 = [(AXLTTranscriber *)self appName];
  v4 = [(AXLTTranscriber *)self transcriptionCallback];
  v5 = [(AXLTTranscriber *)self completionCallback];
  [(AXLTTranscriber *)self startTranscriptionForPID:v3 appName:v6 callback:v4 completionCallback:v5];
}

- (BOOL)isAssetPending
{
  if ([(AXLTTranscriber *)self downloadState]== -2 || [(AXLTTranscriber *)self downloadState]== 100)
  {
    return 0;
  }

  v4 = [(AXLTTranscriber *)self downloadState];
  v5 = AXLogLiveTranscription();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == -1)
  {
    if (v6)
    {
      [AXLTTranscriber isAssetPending];
    }
  }

  else if (v6)
  {
    [AXLTTranscriber isAssetPending];
  }

  return 1;
}

- (void)_downloadAndInstallSpeechRecognizer
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "downloadState")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_2;
  v2[3] = &unk_27981CB38;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = AXLogLiveTranscription();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_256022000, v2, OS_LOG_TYPE_DEFAULT, "Transcriber: Language asset download fractionCompleted %lu", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) transcriptionCallback];

  if (v4)
  {
    v5 = [*(a1 + 32) transcriptionCallback];
    v5[2](v5, 0, *(a1 + 40));
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_2_299;
  v6[3] = &unk_27981C9D0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_2_299(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = AXLogLiveTranscription();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_256022000, v2, OS_LOG_TYPE_DEFAULT, "Transcriber: Language asset finished, error: %@", &v11, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) transcriptionCallback];

  if (v4)
  {
    if (v5)
    {
      v6 = [*(a1 + 40) transcriptionCallback];
      v7 = -1;
      v6[2](v6, 0, -1);
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 40) transcriptionCallback];
      v8[2](v8, 0, 100);
    }

    [*(a1 + 40) resumeTranscriptionForPID:{objc_msgSend(*(a1 + 40), "pid")}];
    v7 = 100;
  }

  result = [*(a1 + 40) setDownloadState:v7];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleAssetDownloadError:(id)a3
{
  v4 = [(AXLTTranscriber *)self transcriptionCallback];
  v4[2](v4, 0, -1);

  [(AXLTTranscriber *)self setDownloadState:-1];
}

- (void)speechRecognitionDidDetectSpeech:(id)a3
{
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionDidDetectSpeech:];
  }
}

- (void)speechRecognitionTaskFinishedReadingAudio:(id)a3
{
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTaskFinishedReadingAudio:];
  }
}

- (void)speechRecognitionTaskWasCancelled:(id)a3
{
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTaskWasCancelled:];
  }
}

- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v6 = AXLogLiveTranscription();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTask:didFinishSuccessfully:];
  }

  if (!a4)
  {
    v7 = AXLogLiveTranscription();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_256022000, v7, OS_LOG_TYPE_DEFAULT, "Transcriber: Task was unsuccessful", v10, 2u);
    }
  }

  [(AXLTTranscriber *)self setCurrentTranscription:0];
  v8 = [(AXLTTranscriber *)self transcriptionCallback];

  if (v8)
  {
    v9 = [(AXLTTranscriber *)self transcriptionCallback];
    v9[2](v9, 0, -2);
  }
}

- (void)speechRecognitionTask:(id)a3 didHypothesizeTranscription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AXLogLiveTranscription();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTask:v7 didHypothesizeTranscription:?];
  }

  v9 = [(AXLTTranscriber *)self transcriptionCallback];

  if (v9)
  {
    v10 = [AXLTTranscription alloc];
    v11 = [(AXLTTranscriber *)self currentTranscription];
    v12 = [(AXLTTranscription *)v10 initWithRecognitionTask:v6 transcription:v7 previousTranscription:v11];

    [(AXLTTranscriber *)self setCurrentTranscription:v12];
    v13 = [(AXLTTranscriber *)self transcriptionCallback];
    v14 = [(AXLTTranscriber *)self currentTranscription];
    (v13)[2](v13, v14, -2);
  }
}

- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AXLogLiveTranscription();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTask:didFinishRecognition:];
  }

  [(AXLTTranscriber *)self setCurrentTranscription:0];
  v9 = [(AXLTTranscriber *)self transcriptionCallback];

  if (v9)
  {
    v10 = [AXLTTranscription alloc];
    v11 = [v7 bestTranscription];
    v12 = [(AXLTTranscriber *)self currentTranscription];
    v13 = [(AXLTTranscription *)v10 initWithRecognitionTask:v6 transcription:v11 previousTranscription:v12];

    v14 = [(AXLTTranscriber *)self transcriptionCallback];
    (v14)[2](v14, v13, -2);
  }

  v15 = [(AXLTTranscriber *)self completionCallback];

  if (v15)
  {
    v16 = [(AXLTTranscriber *)self completionCallback];
    v16[2]();
  }
}

- (float)_coalsecingTime
{
  if (_coalsecingTime_onceToken != -1)
  {
    [AXLTTranscriber _coalsecingTime];
  }

  [_coalsecingTime_s_userDefaults floatForKey:@"CoalesceCaptionsTimeKey"];
  if (result == 0.0)
  {
    return 0.5;
  }

  return result;
}

uint64_t __34__AXLTTranscriber__coalsecingTime__block_invoke()
{
  _coalsecingTime_s_userDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.accessibility.LiveCaptions"];

  return MEMORY[0x2821F96F8]();
}

- (void)startTranscriptionForPID:(uint64_t)a1 appName:(void *)a2 callback:completionCallback:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 appName];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "pid")}];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startTranscriptionForPID:appName:callback:completionCallback:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_256022000, v0, OS_LOG_TYPE_DEBUG, "Transcriber: Can't start transcription for app, asset is not ready: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)stopTranscriptionForPID:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v4 = [a2 appName];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "pid")}];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5(&dword_256022000, v6, v7, "Transcriber: Can't stop transcription for pid: %@, active app: %@, pid %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resumeTranscriptionForPID:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v4 = [a2 appName];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "pid")}];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5(&dword_256022000, v6, v7, "Transcriber: Can't resume transcription for pid: %@, active app: %@, pid: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resumeTranscriptionForPID:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 recognitionRequest];
  v3 = [v1 numberWithBool:{objc_msgSend(v2, "addsPunctuation")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)appendAudioPCMBuffer:(void *)a1 forPID:(void *)a2 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "frameCapacity")}];
  v10 = [a2 appName];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)speechRecognitionTask:(void *)a1 didHypothesizeTranscription:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 formattedString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end