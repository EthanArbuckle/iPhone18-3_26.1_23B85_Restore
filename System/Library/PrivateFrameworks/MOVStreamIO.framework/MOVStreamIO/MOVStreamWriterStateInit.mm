@interface MOVStreamWriterStateInit
- (id)cancelRecording:(id)recording;
- (id)criticalErrorOccurred:(id)occurred context:(id)context;
- (id)finishRecording:(id)recording;
- (id)forceFinishRecording:(id)recording;
- (id)prepareRecording:(id)recording;
@end

@implementation MOVStreamWriterStateInit

- (id)cancelRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)finishRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)forceFinishRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)prepareRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)criticalErrorOccurred:(id)occurred context:(id)context
{
  [context setCriticalError:occurred];
  v4 = objc_opt_new();

  return v4;
}

@end