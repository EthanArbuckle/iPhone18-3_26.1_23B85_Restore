@interface ICASSessionDetailType
- (ICASSessionDetailType)initWithSessionDetailType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASSessionDetailType

- (ICASSessionDetailType)initWithSessionDetailType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASSessionDetailType;
  result = [(ICASSessionDetailType *)&v5 init];
  if (result)
  {
    result->_sessionDetailType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASSessionDetailType *)self sessionDetailType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF5E0[v3 - 1];
  }
}

@end