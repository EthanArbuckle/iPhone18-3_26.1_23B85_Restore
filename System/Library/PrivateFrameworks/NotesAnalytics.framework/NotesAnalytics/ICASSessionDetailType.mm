@interface ICASSessionDetailType
- (ICASSessionDetailType)initWithSessionDetailType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASSessionDetailType

- (ICASSessionDetailType)initWithSessionDetailType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASSessionDetailType;
  result = [(ICASSessionDetailType *)&v5 init];
  if (result)
  {
    result->_sessionDetailType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  sessionDetailType = [(ICASSessionDetailType *)self sessionDetailType];
  if ((sessionDetailType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF5E0[sessionDetailType - 1];
  }
}

@end