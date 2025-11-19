@interface MOVStreamWriterStateCancelling
- (id)criticalErrorOccurred:(id)a3 context:(id)a4;
- (id)finishRecording:(id)a3;
- (id)finishedCancelRecording:(id)a3;
- (id)nextFinishStep:(id)a3;
- (id)prepareFinished:(id)a3;
- (id)prepareRecording:(id)a3;
@end

@implementation MOVStreamWriterStateCancelling

- (id)finishRecording:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)nextFinishStep:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)prepareFinished:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)prepareRecording:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)finishedCancelRecording:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)criticalErrorOccurred:(id)a3 context:(id)a4
{
  [a4 setCriticalError:a3];
  v4 = objc_opt_new();

  return v4;
}

@end