@interface _GCUIScreenRecorderService
+ (id)sharedInstance;
- (BOOL)isRecording;
- (_GCUIScreenRecorderService)init;
- (void)exportClipToURL:(id)a3 duration:(double)a4 completionHandler:(id)a5;
- (void)previewControllerDidFinish:(id)a3;
- (void)startClipBufferingWithCompletionHandler:(id)a3;
- (void)startRecordingWithHandler:(id)a3;
- (void)stopClipBufferingWithCompletionHandler:(id)a3;
- (void)stopRecordingWithOutputURL:(id)a3 completionHandler:(id)a4;
- (void)stopRecordingWithPreviewIn:(id)a3 completionHandler:(id)a4;
@end

@implementation _GCUIScreenRecorderService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_GCUIScreenRecorderService sharedInstance];
  }

  v3 = sharedInstance_Shared;

  return v3;
}

- (_GCUIScreenRecorderService)init
{
  v3.receiver = self;
  v3.super_class = _GCUIScreenRecorderService;
  return [(_GCUIScreenRecorderService *)&v3 init];
}

- (BOOL)isRecording
{
  v2 = [MEMORY[0x277CDB6A8] sharedRecorder];
  v3 = [v2 isRecording];

  return v3;
}

- (void)startRecordingWithHandler:(id)a3
{
  v3 = MEMORY[0x277CDB6A8];
  v4 = a3;
  v5 = [v3 sharedRecorder];
  [v5 startRecordingWithHandler:v4];
}

- (void)stopRecordingWithOutputURL:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x277CDB6A8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedRecorder];
  [v8 stopRecordingWithOutputURL:v7 completionHandler:v6];
}

- (void)stopRecordingWithPreviewIn:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CDB6A8] sharedRecorder];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75___GCUIScreenRecorderService_stopRecordingWithPreviewIn_completionHandler___block_invoke;
  v11[3] = &unk_277E1DC18;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  [v8 stopRecordingWithHandler:v11];
}

- (void)startClipBufferingWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277CDB6A8];
  v4 = a3;
  v5 = [v3 sharedRecorder];
  [v5 startClipBufferingWithCompletionHandler:v4];
}

- (void)stopClipBufferingWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x277CDB6A8];
  v4 = a3;
  v5 = [v3 sharedRecorder];
  [v5 stopClipBufferingWithCompletionHandler:v4];
}

- (void)exportClipToURL:(id)a3 duration:(double)a4 completionHandler:(id)a5
{
  v7 = MEMORY[0x277CDB6A8];
  v8 = a5;
  v9 = a3;
  v10 = [v7 sharedRecorder];
  [v10 exportClipToURL:v9 duration:v8 completionHandler:a4];
}

- (void)previewControllerDidFinish:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___GCUIScreenRecorderService_previewControllerDidFinish___block_invoke;
  block[3] = &unk_277E1DC40;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end