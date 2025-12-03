@interface HKOverlayRoomActiveInactiveFactorContexts
- (HKOverlayRoomActiveInactiveFactorContexts)initWithActiveFactorContexts:(id)contexts inactiveFactorContexts:(id)factorContexts;
@end

@implementation HKOverlayRoomActiveInactiveFactorContexts

- (HKOverlayRoomActiveInactiveFactorContexts)initWithActiveFactorContexts:(id)contexts inactiveFactorContexts:(id)factorContexts
{
  contextsCopy = contexts;
  factorContextsCopy = factorContexts;
  v12.receiver = self;
  v12.super_class = HKOverlayRoomActiveInactiveFactorContexts;
  v9 = [(HKOverlayRoomActiveInactiveFactorContexts *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activeFactorContexts, contexts);
    objc_storeStrong(&v10->_inactiveFactorContexts, factorContexts);
  }

  return v10;
}

@end