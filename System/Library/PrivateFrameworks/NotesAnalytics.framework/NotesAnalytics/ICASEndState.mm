@interface ICASEndState
- (ICASEndState)initWithEndState:(int64_t)state;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASEndState

- (ICASEndState)initWithEndState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = ICASEndState;
  result = [(ICASEndState *)&v5 init];
  if (result)
  {
    result->_endState = state;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  endState = [(ICASEndState *)self endState];
  if ((endState - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799B0420[endState - 1];
  }
}

@end