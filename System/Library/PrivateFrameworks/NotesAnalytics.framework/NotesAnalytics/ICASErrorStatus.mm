@interface ICASErrorStatus
- (ICASErrorStatus)initWithErrorStatus:(int64_t)status;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASErrorStatus

- (ICASErrorStatus)initWithErrorStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = ICASErrorStatus;
  result = [(ICASErrorStatus *)&v5 init];
  if (result)
  {
    result->_errorStatus = status;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  errorStatus = [(ICASErrorStatus *)self errorStatus];
  if ((errorStatus - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF198[errorStatus - 1];
  }
}

@end