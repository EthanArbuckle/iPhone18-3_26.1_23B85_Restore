@interface CRKCatalystNetworkPowerAssertion
- (void)cancel;
- (void)dealloc;
@end

@implementation CRKCatalystNetworkPowerAssertion

- (void)dealloc
{
  [(CRKCatalystNetworkPowerAssertion *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKCatalystNetworkPowerAssertion;
  [(CRKCatalystNetworkPowerAssertion *)&v3 dealloc];
}

- (void)cancel
{
  if (![(CRKCatalystNetworkPowerAssertion *)self isCanceled])
  {
    [(CRKCatalystNetworkPowerAssertion *)self setCanceled:1];

    +[CRKNetworkPowerAssertion decrement];
  }
}

@end