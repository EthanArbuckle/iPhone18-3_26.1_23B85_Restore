@interface PDRActiveDeviceAssertion
- (PDRActiveDeviceAssertion)init;
- (void)invalidate;
@end

@implementation PDRActiveDeviceAssertion

- (PDRActiveDeviceAssertion)init
{
  v3.receiver = self;
  v3.super_class = PDRActiveDeviceAssertion;
  return [(PDRActiveDeviceAssertion *)&v3 init];
}

- (void)invalidate
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end