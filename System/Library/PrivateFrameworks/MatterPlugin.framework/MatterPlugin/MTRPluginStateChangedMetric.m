@interface MTRPluginStateChangedMetric
+ (id)stateChangedMetricForDevice:(id)a3 homeID:(id)a4 state:(unint64_t)a5 remoteMessageID:(id)a6;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginStateChangedMetric

+ (id)stateChangedMetricForDevice:(id)a3 homeID:(id)a4 state:(unint64_t)a5 remoteMessageID:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(MTRPluginMetric *)[MTRPluginStateChangedMetric alloc] initMetricWithName:@"com.apple.matter.stateChangedEvent" device:v11 homeID:v10 remoteMessageID:v9];

  [v12 setState:a5];

  return v12;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"state";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MTRPluginStateChangedMetric state](self, "state")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end