@interface MSTimerGate
- (MSTimerGate)init;
@end

@implementation MSTimerGate

- (MSTimerGate)init
{
  v3.receiver = self;
  v3.super_class = MSTimerGate;
  result = [(MSTimerGate *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

@end