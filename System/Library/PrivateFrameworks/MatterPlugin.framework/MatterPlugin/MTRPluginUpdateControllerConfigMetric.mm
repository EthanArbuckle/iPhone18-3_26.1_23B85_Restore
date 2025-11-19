@interface MTRPluginUpdateControllerConfigMetric
+ (id)updateControllerConfigMetricForHome:(id)a3 remoteMessageID:(id)a4;
@end

@implementation MTRPluginUpdateControllerConfigMetric

+ (id)updateControllerConfigMetricForHome:(id)a3 remoteMessageID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(MTRPluginMetric *)[MTRPluginUpdateControllerConfigMetric alloc] initMetricWithName:@"com.apple.matter.updateControllerConfigMetric" device:0 homeID:v6 remoteMessageID:v5];

  return v7;
}

@end