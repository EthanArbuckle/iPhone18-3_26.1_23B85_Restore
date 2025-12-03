@interface ICASEndReason
- (ICASEndReason)initWithEndReason:(int64_t)reason;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASEndReason

- (ICASEndReason)initWithEndReason:(int64_t)reason
{
  v5.receiver = self;
  v5.super_class = ICASEndReason;
  result = [(ICASEndReason *)&v5 init];
  if (result)
  {
    result->_endReason = reason;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  endReason = [(ICASEndReason *)self endReason];
  if ((endReason - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFFE8[endReason - 1];
  }
}

@end