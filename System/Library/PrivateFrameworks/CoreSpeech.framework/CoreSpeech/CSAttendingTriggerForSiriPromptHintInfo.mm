@interface CSAttendingTriggerForSiriPromptHintInfo
- (CSAttendingTriggerForSiriPromptHintInfo)initWithOrigin:(unint64_t)a3 reason:(unint64_t)a4 rootRequestId:(id)a5;
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
  v5 = [(CSAttendingTriggerForSiriPromptHintInfo *)self _reasonString];
  [v3 appendFormat:@"[reason: %@]", v5];

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

- (CSAttendingTriggerForSiriPromptHintInfo)initWithOrigin:(unint64_t)a3 reason:(unint64_t)a4 rootRequestId:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CSAttendingTriggerForSiriPromptHintInfo;
  v10 = [(CSAttendingHintInfo *)&v13 initWithOrigin:a3];
  v11 = v10;
  if (v10)
  {
    v10->_reason = a4;
    objc_storeStrong(&v10->_rootRequestId, a5);
  }

  return v11;
}

@end