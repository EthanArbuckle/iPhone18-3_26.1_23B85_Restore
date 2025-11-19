@interface MTRPluginBulkReadAttributeMetric
+ (id)bulkReadAttributeMetricForDevice:(id)a3 homeID:(id)a4 remoteMessageID:(id)a5;
@end

@implementation MTRPluginBulkReadAttributeMetric

+ (id)bulkReadAttributeMetricForDevice:(id)a3 homeID:(id)a4 remoteMessageID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(MTRPluginMetric *)[MTRPluginBulkReadAttributeMetric alloc] initMetricWithName:@"com.apple.matter.bulkReadAttributeEvent" device:v9 homeID:v8 remoteMessageID:v7];

  return v10;
}

@end