@interface ICASTranscriptActionType
- (ICASTranscriptActionType)initWithTranscriptActionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASTranscriptActionType

- (ICASTranscriptActionType)initWithTranscriptActionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASTranscriptActionType;
  result = [(ICASTranscriptActionType *)&v5 init];
  if (result)
  {
    result->_transcriptActionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  transcriptActionType = [(ICASTranscriptActionType *)self transcriptActionType];
  if ((transcriptActionType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF1F8[transcriptActionType - 1];
  }
}

@end