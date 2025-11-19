@interface CRKCatalystNetworkPowerPrimitives
- (id)assertNetworkPowerOn;
@end

@implementation CRKCatalystNetworkPowerPrimitives

- (id)assertNetworkPowerOn
{
  +[CRKNetworkPowerAssertion increment];
  v2 = objc_opt_new();

  return v2;
}

@end