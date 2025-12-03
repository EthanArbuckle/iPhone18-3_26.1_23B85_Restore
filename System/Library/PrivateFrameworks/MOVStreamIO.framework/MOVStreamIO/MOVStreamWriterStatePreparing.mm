@interface MOVStreamWriterStatePreparing
- (id)cancelRecording:(id)recording;
- (id)criticalErrorOccurred:(id)occurred context:(id)context;
- (id)finishRecording:(id)recording;
- (id)forceFinishRecording:(id)recording;
- (id)prepareFinished:(id)finished;
- (void)activateWithContext:(id)context;
@end

@implementation MOVStreamWriterStatePreparing

- (id)cancelRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)forceFinishRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)finishRecording:(id)recording
{
  v3 = objc_opt_new();

  return v3;
}

- (id)prepareFinished:(id)finished
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

- (void)activateWithContext:(id)context
{
  contextCopy = context;
  movMetadataItems = [contextCopy movMetadataItems];
  [contextCopy executePrepareToRecordWithMovieMetadata:movMetadataItems];
}

@end