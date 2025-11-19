@interface ICASTranscriptActionType
- (ICASTranscriptActionType)initWithTranscriptActionType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASTranscriptActionType

- (ICASTranscriptActionType)initWithTranscriptActionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASTranscriptActionType;
  result = [(ICASTranscriptActionType *)&v5 init];
  if (result)
  {
    result->_transcriptActionType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASTranscriptActionType *)self transcriptActionType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF1F8[v3 - 1];
  }
}

@end