@interface CSAttendingStopHintInfo
- (CSAttendingStopHintInfo)initWithOrigin:(unint64_t)origin reason:(unint64_t)reason;
- (id)_reasonString;
- (id)description;
@end

@implementation CSAttendingStopHintInfo

- (id)description
{
  v3 = +[NSMutableString string];
  v7.receiver = self;
  v7.super_class = CSAttendingStopHintInfo;
  v4 = [(CSAttendingHintInfo *)&v7 description];
  [v3 appendFormat:@"%@", v4];
  _reasonString = [(CSAttendingStopHintInfo *)self _reasonString];
  [v3 appendFormat:@"[reason: %@]", _reasonString];

  return v3;
}

- (id)_reasonString
{
  v2 = self->_reason - 1;
  if (v2 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100251EC8 + v2);
  }
}

- (CSAttendingStopHintInfo)initWithOrigin:(unint64_t)origin reason:(unint64_t)reason
{
  v6.receiver = self;
  v6.super_class = CSAttendingStopHintInfo;
  result = [(CSAttendingHintInfo *)&v6 initWithOrigin:origin];
  if (result)
  {
    result->_reason = reason;
  }

  return result;
}

@end