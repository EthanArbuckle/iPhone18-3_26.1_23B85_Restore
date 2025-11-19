@interface ICASErrorStatus
- (ICASErrorStatus)initWithErrorStatus:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASErrorStatus

- (ICASErrorStatus)initWithErrorStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASErrorStatus;
  result = [(ICASErrorStatus *)&v5 init];
  if (result)
  {
    result->_errorStatus = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASErrorStatus *)self errorStatus];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF198[v3 - 1];
  }
}

@end