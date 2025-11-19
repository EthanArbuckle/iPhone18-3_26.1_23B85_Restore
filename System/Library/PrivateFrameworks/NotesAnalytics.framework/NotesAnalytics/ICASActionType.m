@interface ICASActionType
- (ICASActionType)initWithActionType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASActionType

- (ICASActionType)initWithActionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASActionType;
  result = [(ICASActionType *)&v5 init];
  if (result)
  {
    result->_actionType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASActionType *)self actionType];
  if ((v3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF5C0[v3 - 1];
  }
}

@end