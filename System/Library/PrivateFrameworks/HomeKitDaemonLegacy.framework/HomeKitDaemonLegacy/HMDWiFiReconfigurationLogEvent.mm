@interface HMDWiFiReconfigurationLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDWiFiReconfigurationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDWiFiReconfigurationLogEvent isUsingFailSafeUpdate](self, "isUsingFailSafeUpdate")}];
  [v3 setObject:v4 forKeyedSubscript:@"failSafeUpdate"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWiFiReconfigurationLogEvent credentialType](self, "credentialType")}];
  [v3 setObject:v5 forKeyedSubscript:@"credentialType"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:{ceil(-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds") / 1000.0)}];
  [v3 setObject:v6 forKeyedSubscript:@"duration"];

  accessory = [(HMDWiFiReconfigurationLogEvent *)self accessory];
  [accessory populateVendorDetailsForCoreAnalytics:v3 keyPrefix:@"accessory"];

  routerAccessory = [(HMDWiFiReconfigurationLogEvent *)self routerAccessory];
  [routerAccessory populateVendorDetailsForCoreAnalytics:v3 keyPrefix:@"router"];

  v9 = [v3 copy];

  return v9;
}

@end