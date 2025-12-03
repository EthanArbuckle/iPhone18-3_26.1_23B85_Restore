@interface ICASStartState
- (ICASStartState)initWithStartState:(int64_t)state;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASStartState

- (ICASStartState)initWithStartState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = ICASStartState;
  result = [(ICASStartState *)&v5 init];
  if (result)
  {
    result->_startState = state;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  startState = [(ICASStartState *)self startState];
  if ((startState - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF6F8[startState - 1];
  }
}

@end