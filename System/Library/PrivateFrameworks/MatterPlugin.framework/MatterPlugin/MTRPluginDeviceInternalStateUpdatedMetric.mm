@interface MTRPluginDeviceInternalStateUpdatedMetric
+ (id)deviceInternalStateUpdatedForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD;
@end

@implementation MTRPluginDeviceInternalStateUpdatedMetric

+ (id)deviceInternalStateUpdatedForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  deviceCopy = device;
  v10 = [(MTRPluginMetric *)[MTRPluginDeviceInternalStateUpdatedMetric alloc] initMetricWithName:@"com.apple.matter.deviceInternalStateUpdatedEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  return v10;
}

@end