@interface ICASActionType
- (ICASActionType)initWithActionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASActionType

- (ICASActionType)initWithActionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASActionType;
  result = [(ICASActionType *)&v5 init];
  if (result)
  {
    result->_actionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  actionType = [(ICASActionType *)self actionType];
  if ((actionType - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF5C0[actionType - 1];
  }
}

@end