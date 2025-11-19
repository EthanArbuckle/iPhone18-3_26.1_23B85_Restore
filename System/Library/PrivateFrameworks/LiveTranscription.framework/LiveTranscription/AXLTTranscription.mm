@interface AXLTTranscription
- (AXLTTranscription)initWithRecognitionTask:(id)a3 transcription:(id)a4 previousTranscription:(id)a5;
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

- (AXLTTranscription)initWithRecognitionTask:(id)a3 transcription:(id)a4 previousTranscription:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = AXLTTranscription;
  v12 = [(AXLTTranscription *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_task, a3);
    objc_storeStrong(&v13->_transcription, a4);
    if ([(AXLTTranscription *)v13 _shouldUseNonUpdatingSegments])
    {
      v14 = [v11 nonUpdatingSegments];
      v15 = [v10 segments];
      v16 = [AXLTSegmentUtilities mergeOldSegments:v14 withNewSegments:v15];
      nonUpdatingSegments = v13->_nonUpdatingSegments;
      v13->_nonUpdatingSegments = v16;
    }

    else
    {
      v18 = [v10 segments];
      v14 = v13->_nonUpdatingSegments;
      v13->_nonUpdatingSegments = v18;
    }
  }

  return v13;
}

- (NSString)formattedString
{
  v2 = [(AXLTTranscription *)self transcription];
  v3 = [v2 formattedString];

  return v3;
}

- (NSArray)segments
{
  v2 = [(AXLTTranscription *)self transcription];
  v3 = [v2 segments];

  return v3;
}

- (NSString)taskIdentifier
{
  v2 = [(AXLTTranscription *)self task];
  v3 = [v2 requestIdentifier];

  return v3;
}

@end