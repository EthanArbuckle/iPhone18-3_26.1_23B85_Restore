@interface CloudSyncEventPublisherObserver
- (_TtC16HealthExperience31CloudSyncEventPublisherObserver)init;
- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error;
- (void)cloudSyncObserverSyncCompleted:(id)completed;
@end

@implementation CloudSyncEventPublisherObserver

- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_1D0FF4F18();

  sub_1D0F62E1C(error, 1u);
}

- (void)cloudSyncObserverSyncCompleted:(id)completed
{
  selfCopy = self;
  sub_1D0FF4F18();
}

- (_TtC16HealthExperience31CloudSyncEventPublisherObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end