@interface ESSelfPreheatWithPowerContainer
- (ESSelfPreheatWithPowerContainer)initWithPreheatContext:(id)a3 powerSnapshot:(id)a4 powerEventContext:(id)a5;
@end

@implementation ESSelfPreheatWithPowerContainer

- (ESSelfPreheatWithPowerContainer)initWithPreheatContext:(id)a3 powerSnapshot:(id)a4 powerEventContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ESSelfPreheatWithPowerContainer;
  v12 = [(ESSelfPreheatWithPowerContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preheatContext, a3);
    objc_storeStrong(&v13->_powerSnapshot, a4);
    objc_storeStrong(&v13->_powerEventContext, a5);
  }

  return v13;
}

@end