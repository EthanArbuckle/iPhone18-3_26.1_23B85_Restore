@interface HMDWalletKeyAliroHealingEvent
- (HMDWalletKeyAliroHealingEvent)initWithControllerType:(int64_t)a3 userPrivilege:(unint64_t)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDWalletKeyAliroHealingEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDWalletKeyAliroHealingEvent userPrivilege](self, "userPrivilege")}];
  [v3 setObject:v4 forKeyedSubscript:@"userPrivilege"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWalletKeyAliroHealingEvent controllerType](self, "controllerType")}];
  [v3 setObject:v5 forKeyedSubscript:@"controllerType"];

  v6 = [v3 copy];

  return v6;
}

- (HMDWalletKeyAliroHealingEvent)initWithControllerType:(int64_t)a3 userPrivilege:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = HMDWalletKeyAliroHealingEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_controllerType = a3;
    result->_userPrivilege = a4;
  }

  return result;
}

@end