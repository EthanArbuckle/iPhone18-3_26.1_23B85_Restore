@interface ICASSessionType
- (ICASSessionType)initWithSessionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASSessionType

- (ICASSessionType)initWithSessionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASSessionType;
  result = [(ICASSessionType *)&v5 init];
  if (result)
  {
    result->_sessionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  sessionType = [(ICASSessionType *)self sessionType];
  if ((sessionType - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF800[sessionType - 1];
  }
}

@end