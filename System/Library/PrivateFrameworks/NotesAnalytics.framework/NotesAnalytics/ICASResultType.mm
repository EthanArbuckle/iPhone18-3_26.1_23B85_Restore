@interface ICASResultType
- (ICASResultType)initWithResultType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASResultType

- (ICASResultType)initWithResultType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASResultType;
  result = [(ICASResultType *)&v5 init];
  if (result)
  {
    result->_resultType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  resultType = [(ICASResultType *)self resultType];
  if ((resultType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF098[resultType - 1];
  }
}

@end