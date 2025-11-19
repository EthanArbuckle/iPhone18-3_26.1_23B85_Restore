@interface NDAnalyticsPayloadInfo
- (NDAnalyticsPayloadInfo)init;
@end

@implementation NDAnalyticsPayloadInfo

- (NDAnalyticsPayloadInfo)init
{
  v3.receiver = self;
  v3.super_class = NDAnalyticsPayloadInfo;
  return [(NDAnalyticsPayloadInfo *)&v3 init];
}

@end