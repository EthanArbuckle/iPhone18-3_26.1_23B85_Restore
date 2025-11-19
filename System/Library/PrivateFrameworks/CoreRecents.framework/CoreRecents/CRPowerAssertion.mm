@interface CRPowerAssertion
- (CRPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4;
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

- (CRPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4
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