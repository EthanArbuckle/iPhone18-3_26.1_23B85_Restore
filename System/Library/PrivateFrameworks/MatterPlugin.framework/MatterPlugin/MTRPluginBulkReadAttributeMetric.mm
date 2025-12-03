@interface MTRPluginBulkReadAttributeMetric
+ (id)bulkReadAttributeMetricForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD;
@end

@implementation MTRPluginBulkReadAttributeMetric

+ (id)bulkReadAttributeMetricForDevice:(id)device homeID:(id)d remoteMessageID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  deviceCopy = device;
  v10 = [(MTRPluginMetric *)[MTRPluginBulkReadAttributeMetric alloc] initMetricWithName:@"com.apple.matter.bulkReadAttributeEvent" device:deviceCopy homeID:dCopy remoteMessageID:iDCopy];

  return v10;
}

@end