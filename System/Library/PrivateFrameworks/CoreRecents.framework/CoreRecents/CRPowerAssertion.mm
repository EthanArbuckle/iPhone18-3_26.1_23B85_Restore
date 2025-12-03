@interface CRPowerAssertion
- (CRPowerAssertion)initWithIdentifier:(id)identifier timeout:(double)timeout;
- (void)dealloc;
@end

@implementation CRPowerAssertion

- (void)dealloc
{
  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    CFRelease(powerAssertion);
  }

  v4.receiver = self;
  v4.super_class = CRPowerAssertion;
  [(CRPowerAssertion *)&v4 dealloc];
}

- (CRPowerAssertion)initWithIdentifier:(id)identifier timeout:(double)timeout
{
  v6.receiver = self;
  v6.super_class = CRPowerAssertion;
  v4 = [(CRPowerAssertion *)&v6 init];
  if (v4)
  {
    v4->_powerAssertion = CPPowerAssertionCreate();
  }

  return v4;
}

@end