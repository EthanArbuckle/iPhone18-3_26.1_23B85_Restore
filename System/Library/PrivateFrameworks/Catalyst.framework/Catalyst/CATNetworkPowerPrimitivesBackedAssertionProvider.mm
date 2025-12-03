@interface CATNetworkPowerPrimitivesBackedAssertionProvider
- (CATNetworkPowerPrimitivesBackedAssertionProvider)initWithNetworkPowerPrimitives:(id)primitives;
- (id)acquireAssertion;
@end

@implementation CATNetworkPowerPrimitivesBackedAssertionProvider

- (CATNetworkPowerPrimitivesBackedAssertionProvider)initWithNetworkPowerPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v9.receiver = self;
  v9.super_class = CATNetworkPowerPrimitivesBackedAssertionProvider;
  v6 = [(CATNetworkPowerPrimitivesBackedAssertionProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkPowerPrimitives, primitives);
  }

  return v7;
}

- (id)acquireAssertion
{
  networkPowerPrimitives = [(CATNetworkPowerPrimitivesBackedAssertionProvider *)self networkPowerPrimitives];
  assertNetworkPowerOn = [networkPowerPrimitives assertNetworkPowerOn];

  return assertNetworkPowerOn;
}

@end