@interface HKOverlayRoomActiveInactiveFactorContexts
- (HKOverlayRoomActiveInactiveFactorContexts)initWithActiveFactorContexts:(id)a3 inactiveFactorContexts:(id)a4;
@end

@implementation HKOverlayRoomActiveInactiveFactorContexts

- (HKOverlayRoomActiveInactiveFactorContexts)initWithActiveFactorContexts:(id)a3 inactiveFactorContexts:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKOverlayRoomActiveInactiveFactorContexts;
  v9 = [(HKOverlayRoomActiveInactiveFactorContexts *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activeFactorContexts, a3);
    objc_storeStrong(&v10->_inactiveFactorContexts, a4);
  }

  return v10;
}

@end