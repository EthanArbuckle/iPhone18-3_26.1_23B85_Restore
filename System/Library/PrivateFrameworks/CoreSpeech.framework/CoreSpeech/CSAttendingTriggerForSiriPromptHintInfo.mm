@interface CSAttendingTriggerForSiriPromptHintInfo
- (CSAttendingTriggerForSiriPromptHintInfo)initWithOrigin:(unint64_t)origin reason:(unint64_t)reason rootRequestId:(id)id;
- (id)_reasonString;
- (id)description;
@end

@implementation CSAttendingTriggerForSiriPromptHintInfo

- (id)description
{
  v3 = +[NSMutableString string];
  v7.receiver = self;
  v7.super_class = CSAttendingTriggerForSiriPromptHintInfo;
  v4 = [(CSAttendingHintInfo *)&v7 description];
  [v3 appendFormat:@"%@", v4];
  _reasonString = [(CSAttendingTriggerForSiriPromptHintInfo *)self _reasonString];
  [v3 appendFormat:@"[reason: %@]", _reasonString];

  [v3 appendFormat:@"[rootRequestId: %@]", self->_rootRequestId];

  return v3;
}

- (id)_reasonString
{
  if (self->_reason == 1)
  {
    return @"SiriPrompted";
  }

  else
  {
    return @"Unknown";
  }
}

- (CSAttendingTriggerForSiriPromptHintInfo)initWithOrigin:(unint64_t)origin reason:(unint64_t)reason rootRequestId:(id)id
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = CSAttendingTriggerForSiriPromptHintInfo;
  v10 = [(CSAttendingHintInfo *)&v13 initWithOrigin:origin];
  v11 = v10;
  if (v10)
  {
    v10->_reason = reason;
    objc_storeStrong(&v10->_rootRequestId, id);
  }

  return v11;
}

@end