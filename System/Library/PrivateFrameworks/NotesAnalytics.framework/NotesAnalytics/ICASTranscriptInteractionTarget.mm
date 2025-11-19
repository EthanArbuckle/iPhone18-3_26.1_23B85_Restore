@interface ICASTranscriptInteractionTarget
- (ICASTranscriptInteractionTarget)initWithTranscriptInteractionTarget:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASTranscriptInteractionTarget

- (ICASTranscriptInteractionTarget)initWithTranscriptInteractionTarget:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASTranscriptInteractionTarget;
  result = [(ICASTranscriptInteractionTarget *)&v5 init];
  if (result)
  {
    result->_transcriptInteractionTarget = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASTranscriptInteractionTarget *)self transcriptInteractionTarget];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"audioTranscript";
  }

  if (v3 == 2)
  {
    return @"audioSummary";
  }

  else
  {
    return v4;
  }
}

@end