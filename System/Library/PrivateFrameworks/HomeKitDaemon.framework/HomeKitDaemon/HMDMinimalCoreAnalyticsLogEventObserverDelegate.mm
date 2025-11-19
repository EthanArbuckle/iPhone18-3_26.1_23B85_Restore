@interface HMDMinimalCoreAnalyticsLogEventObserverDelegate
- (void)addCommonDimensionsToEventDictionary:(id)a3;
@end

@implementation HMDMinimalCoreAnalyticsLogEventObserverDelegate

- (void)addCommonDimensionsToEventDictionary:(id)a3
{
  v3 = a3;
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isHH2Enabled"];
  [v3 setObject:&unk_283E72BF0 forKeyedSubscript:@"isHH2Enabled_INT"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMDMetricsDeviceStateManager internalDeviceDaysSinceSoftwareUpdate](HMDMetricsDeviceStateManager, "internalDeviceDaysSinceSoftwareUpdate")}];
  [v3 setObject:v4 forKeyedSubscript:@"daysSinceSWUpdate"];
}

@end