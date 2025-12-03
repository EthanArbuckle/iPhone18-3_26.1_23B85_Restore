@interface _GCUIScreenRecorderService
+ (id)sharedInstance;
- (BOOL)isRecording;
- (_GCUIScreenRecorderService)init;
- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler;
- (void)previewControllerDidFinish:(id)finish;
- (void)startClipBufferingWithCompletionHandler:(id)handler;
- (void)startRecordingWithHandler:(id)handler;
- (void)stopClipBufferingWithCompletionHandler:(id)handler;
- (void)stopRecordingWithOutputURL:(id)l completionHandler:(id)handler;
- (void)stopRecordingWithPreviewIn:(id)in completionHandler:(id)handler;
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
  mEMORY[0x277CDB6A8] = [MEMORY[0x277CDB6A8] sharedRecorder];
  isRecording = [mEMORY[0x277CDB6A8] isRecording];

  return isRecording;
}

- (void)startRecordingWithHandler:(id)handler
{
  v3 = MEMORY[0x277CDB6A8];
  handlerCopy = handler;
  sharedRecorder = [v3 sharedRecorder];
  [sharedRecorder startRecordingWithHandler:handlerCopy];
}

- (void)stopRecordingWithOutputURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x277CDB6A8];
  handlerCopy = handler;
  lCopy = l;
  sharedRecorder = [v5 sharedRecorder];
  [sharedRecorder stopRecordingWithOutputURL:lCopy completionHandler:handlerCopy];
}

- (void)stopRecordingWithPreviewIn:(id)in completionHandler:(id)handler
{
  inCopy = in;
  handlerCopy = handler;
  mEMORY[0x277CDB6A8] = [MEMORY[0x277CDB6A8] sharedRecorder];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75___GCUIScreenRecorderService_stopRecordingWithPreviewIn_completionHandler___block_invoke;
  v11[3] = &unk_277E1DC18;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = inCopy;
  v9 = inCopy;
  v10 = handlerCopy;
  [mEMORY[0x277CDB6A8] stopRecordingWithHandler:v11];
}

- (void)startClipBufferingWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277CDB6A8];
  handlerCopy = handler;
  sharedRecorder = [v3 sharedRecorder];
  [sharedRecorder startClipBufferingWithCompletionHandler:handlerCopy];
}

- (void)stopClipBufferingWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x277CDB6A8];
  handlerCopy = handler;
  sharedRecorder = [v3 sharedRecorder];
  [sharedRecorder stopClipBufferingWithCompletionHandler:handlerCopy];
}

- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler
{
  v7 = MEMORY[0x277CDB6A8];
  handlerCopy = handler;
  lCopy = l;
  sharedRecorder = [v7 sharedRecorder];
  [sharedRecorder exportClipToURL:lCopy duration:handlerCopy completionHandler:duration];
}

- (void)previewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___GCUIScreenRecorderService_previewControllerDidFinish___block_invoke;
  block[3] = &unk_277E1DC40;
  v6 = finishCopy;
  v4 = finishCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end