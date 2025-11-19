@interface MKPowerAssertion
- (MKPowerAssertion)init;
- (void)dealloc;
@end

@implementation MKPowerAssertion

- (MKPowerAssertion)init
{
  v4.receiver = self;
  v4.super_class = MKPowerAssertion;
  v2 = [(MKPowerAssertion *)&v4 init];
  if (v2)
  {
    v2->_powerAssertion = CPPowerAssertionCreate();
  }

  return v2;
}

- (void)dealloc
{
  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    CFRelease(powerAssertion);
    self->_powerAssertion = 0;
  }

  v4.receiver = self;
  v4.super_class = MKPowerAssertion;
  [(MKPowerAssertion *)&v4 dealloc];
}

@end