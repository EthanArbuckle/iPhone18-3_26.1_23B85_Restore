@interface ICASEndState
- (ICASEndState)initWithEndState:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASEndState

- (ICASEndState)initWithEndState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASEndState;
  result = [(ICASEndState *)&v5 init];
  if (result)
  {
    result->_endState = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASEndState *)self endState];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799B0420[v3 - 1];
  }
}

@end