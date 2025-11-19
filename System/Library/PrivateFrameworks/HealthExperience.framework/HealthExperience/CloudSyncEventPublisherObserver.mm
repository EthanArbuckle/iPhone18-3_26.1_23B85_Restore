@interface CloudSyncEventPublisherObserver
- (_TtC16HealthExperience31CloudSyncEventPublisherObserver)init;
- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4;
- (void)cloudSyncObserverSyncCompleted:(id)a3;
@end

@implementation CloudSyncEventPublisherObserver

- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_1D0FF4F18();

  sub_1D0F62E1C(a4, 1u);
}

- (void)cloudSyncObserverSyncCompleted:(id)a3
{
  v3 = self;
  sub_1D0FF4F18();
}

- (_TtC16HealthExperience31CloudSyncEventPublisherObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end