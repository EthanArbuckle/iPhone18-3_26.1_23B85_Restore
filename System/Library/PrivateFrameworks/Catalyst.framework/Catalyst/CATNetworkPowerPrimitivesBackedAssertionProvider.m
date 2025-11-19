@interface CATNetworkPowerPrimitivesBackedAssertionProvider
- (CATNetworkPowerPrimitivesBackedAssertionProvider)initWithNetworkPowerPrimitives:(id)a3;
- (id)acquireAssertion;
@end

@implementation CATNetworkPowerPrimitivesBackedAssertionProvider

- (CATNetworkPowerPrimitivesBackedAssertionProvider)initWithNetworkPowerPrimitives:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CATNetworkPowerPrimitivesBackedAssertionProvider;
  v6 = [(CATNetworkPowerPrimitivesBackedAssertionProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkPowerPrimitives, a3);
  }

  return v7;
}

- (id)acquireAssertion
{
  v2 = [(CATNetworkPowerPrimitivesBackedAssertionProvider *)self networkPowerPrimitives];
  v3 = [v2 assertNetworkPowerOn];

  return v3;
}

@end