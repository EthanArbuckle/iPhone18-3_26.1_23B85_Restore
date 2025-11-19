@interface ICASResultType
- (ICASResultType)initWithResultType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASResultType

- (ICASResultType)initWithResultType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASResultType;
  result = [(ICASResultType *)&v5 init];
  if (result)
  {
    result->_resultType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASResultType *)self resultType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF098[v3 - 1];
  }
}

@end