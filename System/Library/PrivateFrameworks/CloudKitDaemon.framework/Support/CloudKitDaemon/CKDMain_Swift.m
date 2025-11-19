@interface CKDMain_Swift
- (void)markSystemAvailableForCacheDelete;
- (void)registerWithCacheDelete;
- (void)setupCloudTelemetryXpcServiceActivities;
- (void)startCloudAssetsService;
@end

@implementation CKDMain_Swift

- (void)markSystemAvailableForCacheDelete
{
  v2 = self;
  sub_100002C1C();
}

- (void)registerWithCacheDelete
{
  v2 = self;
  sub_10000496C();
}

- (void)startCloudAssetsService
{
  v2 = self;
  sub_100005BB4();
}

- (void)setupCloudTelemetryXpcServiceActivities
{
  v2 = self;
  sub_100005F5C();
}

@end