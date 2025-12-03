@interface MOVStreamWriterStateFinished
- (id)cancelRecording:(id)recording;
- (id)criticalErrorOccurred:(id)occurred context:(id)context;
@end

@implementation MOVStreamWriterStateFinished

- (id)cancelRecording:(id)recording
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