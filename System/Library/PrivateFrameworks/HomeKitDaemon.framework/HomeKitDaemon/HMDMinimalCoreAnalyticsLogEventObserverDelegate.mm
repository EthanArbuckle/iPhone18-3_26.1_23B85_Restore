@interface HMDMinimalCoreAnalyticsLogEventObserverDelegate
- (void)addCommonDimensionsToEventDictionary:(id)dictionary;
@end

@implementation HMDMinimalCoreAnalyticsLogEventObserverDelegate

- (void)addCommonDimensionsToEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [dictionaryCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isHH2Enabled"];
  [dictionaryCopy setObject:&unk_283E72BF0 forKeyedSubscript:@"isHH2Enabled_INT"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMDMetricsDeviceStateManager internalDeviceDaysSinceSoftwareUpdate](HMDMetricsDeviceStateManager, "internalDeviceDaysSinceSoftwareUpdate")}];
  [dictionaryCopy setObject:v4 forKeyedSubscript:@"daysSinceSWUpdate"];
}

@end