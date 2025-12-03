@interface MTRPluginUpdateControllerConfigMetric
+ (id)updateControllerConfigMetricForHome:(id)home remoteMessageID:(id)d;
@end

@implementation MTRPluginUpdateControllerConfigMetric

+ (id)updateControllerConfigMetricForHome:(id)home remoteMessageID:(id)d
{
  dCopy = d;
  homeCopy = home;
  v7 = [(MTRPluginMetric *)[MTRPluginUpdateControllerConfigMetric alloc] initMetricWithName:@"com.apple.matter.updateControllerConfigMetric" device:0 homeID:homeCopy remoteMessageID:dCopy];

  return v7;
}

@end