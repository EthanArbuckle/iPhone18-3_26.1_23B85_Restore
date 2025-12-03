@interface ICASRecordingActionType
- (ICASRecordingActionType)initWithRecordingActionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASRecordingActionType

- (ICASRecordingActionType)initWithRecordingActionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASRecordingActionType;
  result = [(ICASRecordingActionType *)&v5 init];
  if (result)
  {
    result->_recordingActionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  recordingActionType = [(ICASRecordingActionType *)self recordingActionType];
  v4 = @"unknown";
  if (recordingActionType == 1)
  {
    v4 = @"createNew";
  }

  if (recordingActionType == 2)
  {
    return @"append";
  }

  else
  {
    return v4;
  }
}

@end