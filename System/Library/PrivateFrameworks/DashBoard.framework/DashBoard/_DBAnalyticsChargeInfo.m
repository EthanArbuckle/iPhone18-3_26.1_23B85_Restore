@interface _DBAnalyticsChargeInfo
- (_DBAnalyticsChargeInfo)init;
@end

@implementation _DBAnalyticsChargeInfo

- (_DBAnalyticsChargeInfo)init
{
  v6.receiver = self;
  v6.super_class = _DBAnalyticsChargeInfo;
  v2 = [(_DBAnalyticsTimeAccumulator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    sessionChargingStates = v2->_sessionChargingStates;
    v2->_sessionChargingStates = v3;
  }

  return v2;
}

@end