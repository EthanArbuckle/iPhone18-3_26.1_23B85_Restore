@interface DMCTimerContext
- (DMCTimerContext)init;
@end

@implementation DMCTimerContext

- (DMCTimerContext)init
{
  v3.receiver = self;
  v3.super_class = DMCTimerContext;
  result = [(DMCTimerContext *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

@end