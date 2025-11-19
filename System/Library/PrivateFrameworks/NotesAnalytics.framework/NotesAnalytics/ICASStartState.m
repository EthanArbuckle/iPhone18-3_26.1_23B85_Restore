@interface ICASStartState
- (ICASStartState)initWithStartState:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASStartState

- (ICASStartState)initWithStartState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASStartState;
  result = [(ICASStartState *)&v5 init];
  if (result)
  {
    result->_startState = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASStartState *)self startState];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF6F8[v3 - 1];
  }
}

@end