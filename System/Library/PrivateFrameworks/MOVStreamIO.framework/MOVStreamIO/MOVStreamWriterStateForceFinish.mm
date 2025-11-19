@interface MOVStreamWriterStateForceFinish
- (id)cancelRecording:(id)a3;
- (id)criticalErrorOccurred:(id)a3 context:(id)a4;
- (id)nextFinishStep:(id)a3;
@end

@implementation MOVStreamWriterStateForceFinish

- (id)cancelRecording:(id)a3
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

- (id)nextFinishStep:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

@end