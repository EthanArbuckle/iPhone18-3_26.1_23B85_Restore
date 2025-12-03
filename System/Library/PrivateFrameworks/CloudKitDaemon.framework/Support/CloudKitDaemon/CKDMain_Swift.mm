@interface CKDMain_Swift
- (void)markSystemAvailableForCacheDelete;
- (void)registerWithCacheDelete;
- (void)setupCloudTelemetryXpcServiceActivities;
- (void)startCloudAssetsService;
@end

@implementation CKDMain_Swift

- (void)markSystemAvailableForCacheDelete
{
  selfCopy = self;
  sub_100002C1C();
}

- (void)registerWithCacheDelete
{
  selfCopy = self;
  sub_10000496C();
}

- (void)startCloudAssetsService
{
  selfCopy = self;
  sub_100005BB4();
}

- (void)setupCloudTelemetryXpcServiceActivities
{
  selfCopy = self;
  sub_100005F5C();
}

@end