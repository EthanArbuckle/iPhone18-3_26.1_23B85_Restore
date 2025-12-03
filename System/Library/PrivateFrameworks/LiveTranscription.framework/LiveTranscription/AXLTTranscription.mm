@interface AXLTTranscription
- (AXLTTranscription)initWithRecognitionTask:(id)task transcription:(id)transcription previousTranscription:(id)previousTranscription;
- (BOOL)_shouldUseNonUpdatingSegments;
- (NSArray)segments;
- (NSString)formattedString;
- (NSString)taskIdentifier;
@end

@implementation AXLTTranscription

- (BOOL)_shouldUseNonUpdatingSegments
{
  if (_shouldUseNonUpdatingSegments_onceToken != -1)
  {
    [AXLTTranscription _shouldUseNonUpdatingSegments];
  }

  v3 = _shouldUseNonUpdatingSegments_s_userDefaults;

  return [v3 BOOLForKey:@"DoNotUpdatePastCaptionsKey"];
}

uint64_t __50__AXLTTranscription__shouldUseNonUpdatingSegments__block_invoke()
{
  _shouldUseNonUpdatingSegments_s_userDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.accessibility.LiveCaptions"];

  return MEMORY[0x2821F96F8]();
}

- (AXLTTranscription)initWithRecognitionTask:(id)task transcription:(id)transcription previousTranscription:(id)previousTranscription
{
  taskCopy = task;
  transcriptionCopy = transcription;
  previousTranscriptionCopy = previousTranscription;
  v20.receiver = self;
  v20.super_class = AXLTTranscription;
  v12 = [(AXLTTranscription *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_task, task);
    objc_storeStrong(&v13->_transcription, transcription);
    if ([(AXLTTranscription *)v13 _shouldUseNonUpdatingSegments])
    {
      nonUpdatingSegments = [previousTranscriptionCopy nonUpdatingSegments];
      segments = [transcriptionCopy segments];
      v16 = [AXLTSegmentUtilities mergeOldSegments:nonUpdatingSegments withNewSegments:segments];
      nonUpdatingSegments = v13->_nonUpdatingSegments;
      v13->_nonUpdatingSegments = v16;
    }

    else
    {
      segments2 = [transcriptionCopy segments];
      nonUpdatingSegments = v13->_nonUpdatingSegments;
      v13->_nonUpdatingSegments = segments2;
    }
  }

  return v13;
}

- (NSString)formattedString
{
  transcription = [(AXLTTranscription *)self transcription];
  formattedString = [transcription formattedString];

  return formattedString;
}

- (NSArray)segments
{
  transcription = [(AXLTTranscription *)self transcription];
  segments = [transcription segments];

  return segments;
}

- (NSString)taskIdentifier
{
  task = [(AXLTTranscription *)self task];
  requestIdentifier = [task requestIdentifier];

  return requestIdentifier;
}

@end