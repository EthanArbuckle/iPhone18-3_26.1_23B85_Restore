@interface MTRPluginDeviceCachePrimedMetric
+ (id)deviceCachePrimedMetricForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD;
@end

@implementation MTRPluginDeviceCachePrimedMetric

+ (id)deviceCachePrimedMetricForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  deviceCopy = device;
  v10 = [(MTRPluginMetric *)[MTRPluginDeviceCachePrimedMetric alloc] initMetricWithName:@"com.apple.matter.deviceCachePrimedEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  return v10;
}

@end