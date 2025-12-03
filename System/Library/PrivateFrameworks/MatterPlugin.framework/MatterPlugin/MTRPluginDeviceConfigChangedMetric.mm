@interface MTRPluginDeviceConfigChangedMetric
+ (id)deviceConfigChangedMetricForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD;
@end

@implementation MTRPluginDeviceConfigChangedMetric

+ (id)deviceConfigChangedMetricForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  deviceCopy = device;
  v10 = [(MTRPluginMetric *)[MTRPluginDeviceConfigChangedMetric alloc] initMetricWithName:@"com.apple.matter.deviceConfigChangedEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  return v10;
}

@end