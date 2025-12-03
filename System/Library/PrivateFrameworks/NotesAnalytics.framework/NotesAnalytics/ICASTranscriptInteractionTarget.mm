@interface ICASTranscriptInteractionTarget
- (ICASTranscriptInteractionTarget)initWithTranscriptInteractionTarget:(int64_t)target;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASTranscriptInteractionTarget

- (ICASTranscriptInteractionTarget)initWithTranscriptInteractionTarget:(int64_t)target
{
  v5.receiver = self;
  v5.super_class = ICASTranscriptInteractionTarget;
  result = [(ICASTranscriptInteractionTarget *)&v5 init];
  if (result)
  {
    result->_transcriptInteractionTarget = target;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  transcriptInteractionTarget = [(ICASTranscriptInteractionTarget *)self transcriptInteractionTarget];
  v4 = @"unknown";
  if (transcriptInteractionTarget == 1)
  {
    v4 = @"audioTranscript";
  }

  if (transcriptInteractionTarget == 2)
  {
    return @"audioSummary";
  }

  else
  {
    return v4;
  }
}

@end