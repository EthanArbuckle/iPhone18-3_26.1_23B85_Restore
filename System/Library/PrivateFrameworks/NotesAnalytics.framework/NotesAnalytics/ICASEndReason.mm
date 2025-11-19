@interface ICASEndReason
- (ICASEndReason)initWithEndReason:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASEndReason

- (ICASEndReason)initWithEndReason:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASEndReason;
  result = [(ICASEndReason *)&v5 init];
  if (result)
  {
    result->_endReason = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASEndReason *)self endReason];
  if ((v3 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFFE8[v3 - 1];
  }
}

@end