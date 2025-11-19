@interface AXLTAudioTextDumper
+ (AXLTAudioTextDumper)sharedInstance;
- (AXLTAudioTextDumper)init;
- (void)cleanUp;
- (void)init;
- (void)saveAudioBuffer:(id)a3 appName:(id)a4 sessionStartTime:(id)a5;
- (void)saveTranscribedText:(id)a3 appName:(id)a4 sessionStartTime:(id)a5;
@end

@implementation AXLTAudioTextDumper

+ (AXLTAudioTextDumper)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AXLTAudioTextDumper sharedInstance];
  }

  v3 = sharedInstance__shared_0;

  return v3;
}

uint64_t __37__AXLTAudioTextDumper_sharedInstance__block_invoke()
{
  sharedInstance__shared_0 = objc_alloc_init(AXLTAudioTextDumper);

  return MEMORY[0x2821F96F8]();
}

- (AXLTAudioTextDumper)init
{
  v12.receiver = self;
  v12.super_class = AXLTAudioTextDumper;
  v2 = [(AXLTAudioTextDumper *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"saveTranscribedTextAndAudio"];
    if (v4)
    {
      LOBYTE(v4) = isInternalInstall();
    }

    *(v2 + 8) = v4;

    v5 = AXLogLiveTranscription();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(AXLTAudioTextDumper *)v2 + 8 init];
    }

    if (*(v2 + 8) == 1)
    {
      v6 = dispatch_queue_create("com.apple.accessibility.LiveTranscription.audioOutTranscriberSaveQueue", 0);
      v7 = *(v2 + 5);
      *(v2 + 5) = v6;

      v8 = NSTemporaryDirectory();
      v9 = *(v2 + 4);
      *(v2 + 4) = v8;

      v10 = AXLogLiveTranscription();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(AXLTAudioTextDumper *)v2 + 4 init];
      }
    }
  }

  return v2;
}

- (void)saveAudioBuffer:(id)a3 appName:(id)a4 sessionStartTime:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_dumpTestData)
  {
    saveQueue = self->_saveQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__AXLTAudioTextDumper_saveAudioBuffer_appName_sessionStartTime___block_invoke;
    v12[3] = &unk_27981CBD8;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(saveQueue, v12);
  }
}

void __64__AXLTAudioTextDumper_saveAudioBuffer_appName_sessionStartTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioFile];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
    v5 = [*(a1 + 40) format];
    v6 = [v5 settings];
    v7 = [v6 mutableCopy];

    v8 = [MEMORY[0x277CCABB0] numberWithInt:1463899717];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CB8010]];

    v9 = [*(a1 + 32) filePath];
    v10 = MEMORY[0x277CCACA8];
    v11 = *(a1 + 48);
    v12 = [v4 stringFromDate:*(a1 + 56)];
    v13 = [v10 stringWithFormat:@"audio_%@_%@.wav", v11, v12];
    v14 = [v9 stringByAppendingPathComponent:v13];

    v15 = AXLogLiveTranscription();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __64__AXLTAudioTextDumper_saveAudioBuffer_appName_sessionStartTime___block_invoke_cold_1();
    }

    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
    v17 = objc_alloc(MEMORY[0x277CB8398]);
    v18 = [*(a1 + 40) format];
    v19 = [v18 commonFormat];
    v20 = [*(a1 + 40) format];
    v27 = 0;
    v21 = [v17 initForWriting:v16 settings:v7 commonFormat:v19 interleaved:objc_msgSend(v20 error:"isInterleaved"), &v27];
    v3 = v27;
    [*(a1 + 32) setAudioFile:v21];

    if (v3)
    {
      v22 = AXLogLiveTranscription();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __64__AXLTAudioTextDumper_saveAudioBuffer_appName_sessionStartTime___block_invoke_cold_2();
      }
    }
  }

  v23 = [*(a1 + 32) audioFile];
  v24 = *(a1 + 40);
  v26 = v3;
  [v23 writeFromBuffer:v24 error:&v26];
  v25 = v26;
}

- (void)saveTranscribedText:(id)a3 appName:(id)a4 sessionStartTime:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_dumpTestData && [v8 length])
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    saveQueue = self->_saveQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__AXLTAudioTextDumper_saveTranscribedText_appName_sessionStartTime___block_invoke;
    block[3] = &unk_27981CC00;
    block[4] = self;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v8;
    v13 = v11;
    dispatch_async(saveQueue, block);
  }
}

void __68__AXLTAudioTextDumper_saveTranscribedText_appName_sessionStartTime___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) textFileName];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
    v5 = [*(a1 + 32) filePath];
    v6 = MEMORY[0x277CCACA8];
    v7 = *(a1 + 40);
    v8 = [v4 stringFromDate:*(a1 + 48)];
    v9 = [v6 stringWithFormat:@"transcribed_text_%@_%@.txt", v7, v8];
    v10 = [v5 stringByAppendingPathComponent:v9];
    [*(a1 + 32) setTextFileName:v10];

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [*(a1 + 32) textFileName];
    [v11 createFileAtPath:v12 contents:0 attributes:0];

    v13 = AXLogLiveTranscription();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __68__AXLTAudioTextDumper_saveTranscribedText_appName_sessionStartTime___block_invoke_cold_1(v2);
    }
  }

  v14 = MEMORY[0x277CCA9F8];
  v15 = [*(a1 + 32) textFileName];
  v16 = [v14 fileHandleForUpdatingAtPath:v15];

  [v16 seekToEndOfFile];
  v17 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v17 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v18 = [v17 stringFromDate:*(a1 + 56)];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@ %@\n", v18, @"Speech", *(a1 + 40), *(a1 + 64)];
  v20 = [v19 dataUsingEncoding:4];
  [v16 writeData:v20];
  [v16 closeFile];
}

- (void)cleanUp
{
  if (self->_dumpTestData)
  {
    block[5] = v2;
    block[6] = v3;
    saveQueue = self->_saveQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__AXLTAudioTextDumper_cleanUp__block_invoke;
    block[3] = &unk_27981C9A8;
    block[4] = self;
    dispatch_async(saveQueue, block);
  }
}

uint64_t __30__AXLTAudioTextDumper_cleanUp__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTextFileName:0];
  v2 = *(a1 + 32);

  return [v2 setAudioFile:0];
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_256022000, a2, OS_LOG_TYPE_DEBUG, "Dump files path: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __64__AXLTAudioTextDumper_saveAudioBuffer_appName_sessionStartTime___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_256022000, v0, OS_LOG_TYPE_DEBUG, "Audio file path is %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __64__AXLTAudioTextDumper_saveAudioBuffer_appName_sessionStartTime___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_256022000, v0, OS_LOG_TYPE_ERROR, "error %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __68__AXLTAudioTextDumper_saveTranscribedText_appName_sessionStartTime___block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 textFileName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_256022000, v2, v3, "Text log file path is %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end