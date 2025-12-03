@interface MOVStreamWriterStateCancelling
- (id)criticalErrorOccurred:(id)occurred context:(id)context;
- (id)finishRecording:(id)recording;
- (id)finishedCancelRecording:(id)recording;
- (id)nextFinishStep:(id)step;
- (id)prepareFinished:(id)finished;
- (id)prepareRecording:(id)recording;
@end

@implementation MOVStreamWriterStateCancelling

- (id)finishRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)nextFinishStep:(id)step
{
  v3 = objc_opt_new();

  return v3;
}

- (id)prepareFinished:(id)finished
{
  v3 = objc_opt_new();

  return v3;
}

- (id)prepareRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)finishedCancelRecording:(id)recording
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