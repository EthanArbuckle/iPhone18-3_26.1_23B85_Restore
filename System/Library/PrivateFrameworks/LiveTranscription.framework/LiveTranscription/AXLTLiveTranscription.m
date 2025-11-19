@interface AXLTLiveTranscription
+ (AXLTLiveTranscription)sharedInstance;
- (AXLTLiveTranscription)init;
- (AXLTLiveTranscriptionDelegate)delegate;
- (void)audioInfoData:(id)a3;
- (void)resetTranscribing:(int64_t)a3;
- (void)transcriberOutputData:(id)a3;
@end

@implementation AXLTLiveTranscription

+ (AXLTLiveTranscription)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[AXLTLiveTranscription sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

uint64_t __39__AXLTLiveTranscription_sharedInstance__block_invoke()
{
  sharedInstance__shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXLTLiveTranscription)init
{
  v9.receiver = self;
  v9.super_class = AXLTLiveTranscription;
  v2 = [(AXLTLiveTranscription *)&v9 init];
  if (v2)
  {
    v3 = [[AXLTSpeechTranscriber alloc] initWithDelegate:v2];
    speechTranscriber = v2->_speechTranscriber;
    v2->_speechTranscriber = v3;

    v5 = +[AXLTAudioOutManager sharedInstance];
    [v5 setDelegate:v2];

    v6 = objc_opt_new();
    dataReceivers = v2->_dataReceivers;
    v2->_dataReceivers = v6;
  }

  return v2;
}

- (void)resetTranscribing:(int64_t)a3
{
  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AXLTLiveTranscription *)a3 resetTranscribing:v5];
  }

  if (a3 == 1)
  {
    v6 = +[AXLTAudioOutManager sharedInstance];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v6 = [(AXLTLiveTranscription *)self speechTranscriber];
  }

  v7 = v6;
  [v6 resetTranscription];
}

- (void)transcriberOutputData:(id)a3
{
  v4 = a3;
  v5 = -[AXLTLiveTranscription _receiverKeyForRequestType:targetPID:](self, "_receiverKeyForRequestType:targetPID:", [v4 requestType], objc_msgSend(v4, "pid"));
  v6 = AXLogLiveTranscription();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXLTLiveTranscription transcriberOutputData:];
  }

  v7 = [(AXLTLiveTranscription *)self dataReceivers];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 callbackBlock];
    (v9)[2](v9, v4);
  }
}

- (void)audioInfoData:(id)a3
{
  v4 = a3;
  v5 = -[AXLTLiveTranscription _receiverKeyForRequestType:targetPID:](self, "_receiverKeyForRequestType:targetPID:", [v4 requestType], objc_msgSend(v4, "pid"));
  v6 = AXLogLiveTranscription();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXLTLiveTranscription audioInfoData:];
  }

  v7 = [(AXLTLiveTranscription *)self dataReceivers];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 audioInfoBlock];

    if (v9)
    {
      v10 = [v8 audioInfoBlock];
      (v10)[2](v10, v4);
    }
  }

  v11 = [(AXLTLiveTranscription *)self delegate];

  if (v11)
  {
    v12 = [(AXLTLiveTranscription *)self delegate];
    [v12 liveTranscriptionAudioInfoDataArrived:v4];
  }
}

- (AXLTLiveTranscriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetTranscribing:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_256022000, a2, OS_LOG_TYPE_DEBUG, "API resetTranscribing for type: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)transcriberOutputData:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_256022000, v0, v1, "receiver: %@, data: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)audioInfoData:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_256022000, v0, v1, "receiver: %@, audio data: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end