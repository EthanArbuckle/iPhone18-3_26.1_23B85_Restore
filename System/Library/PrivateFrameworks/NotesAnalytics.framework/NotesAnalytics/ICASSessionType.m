@interface ICASSessionType
- (ICASSessionType)initWithSessionType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASSessionType

- (ICASSessionType)initWithSessionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASSessionType;
  result = [(ICASSessionType *)&v5 init];
  if (result)
  {
    result->_sessionType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASSessionType *)self sessionType];
  if ((v3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF800[v3 - 1];
  }
}

@end