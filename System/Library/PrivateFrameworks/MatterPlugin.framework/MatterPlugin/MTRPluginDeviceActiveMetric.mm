@interface MTRPluginDeviceActiveMetric
+ (id)deviceActiveMetricForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD;
@end

@implementation MTRPluginDeviceActiveMetric

+ (id)deviceActiveMetricForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  deviceCopy = device;
  v10 = [(MTRPluginMetric *)[MTRPluginDeviceActiveMetric alloc] initMetricWithName:@"com.apple.matter.deviceActiveEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  return v10;
}

@end