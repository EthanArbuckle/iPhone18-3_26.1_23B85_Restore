@interface MOVStreamWriterStatePreparing
- (id)cancelRecording:(id)a3;
- (id)criticalErrorOccurred:(id)a3 context:(id)a4;
- (id)finishRecording:(id)a3;
- (id)forceFinishRecording:(id)a3;
- (id)prepareFinished:(id)a3;
- (void)activateWithContext:(id)a3;
@end

@implementation MOVStreamWriterStatePreparing

- (id)cancelRecording:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)forceFinishRecording:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)finishRecording:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)prepareFinished:(id)a3
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

- (void)activateWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 movMetadataItems];
  [v3 executePrepareToRecordWithMovieMetadata:v4];
}

@end