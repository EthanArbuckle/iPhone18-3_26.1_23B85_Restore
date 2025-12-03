@interface HealthCloudSyncObserver
- (_TtC23CorePrescriptionServiceP33_E9143E4EFE596187BF822F88FA38A9CD23HealthCloudSyncObserver)init;
- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status;
@end

@implementation HealthCloudSyncObserver

- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status
{
  updatedCopy = updated;
  statusCopy = status;
  selfCopy = self;
  sub_100064AE0(statusCopy);
}

- (_TtC23CorePrescriptionServiceP33_E9143E4EFE596187BF822F88FA38A9CD23HealthCloudSyncObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end