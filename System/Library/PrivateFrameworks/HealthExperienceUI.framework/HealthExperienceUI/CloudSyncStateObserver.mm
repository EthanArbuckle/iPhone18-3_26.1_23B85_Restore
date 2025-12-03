@interface CloudSyncStateObserver
- (_TtC18HealthExperienceUI22CloudSyncStateObserver)init;
- (void)cloudSyncObserver:(id)observer syncDidStartWithProgress:(id)progress;
- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error;
- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status;
- (void)cloudSyncObserverSyncCompleted:(id)completed;
@end

@implementation CloudSyncStateObserver

- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error
{
  observerCopy = observer;
  selfCopy = self;
  errorCopy = error;
  CloudSyncStateObserver.cloudSyncObserver(_:syncFailedWithError:)(observerCopy, error);
}

- (_TtC18HealthExperienceUI22CloudSyncStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudSyncObserver:(id)observer syncDidStartWithProgress:(id)progress
{
  observerCopy = observer;
  progressCopy = progress;
  selfCopy = self;
  _s18HealthExperienceUI22CloudSyncStateObserverC05cloudeG0_16syncDidStartWithySo07HKCloudeG0C_So10NSProgressCtF_0();
}

- (void)cloudSyncObserverSyncCompleted:(id)completed
{
  completedCopy = completed;
  selfCopy = self;
  _s18HealthExperienceUI22CloudSyncStateObserverC05cloudegE9CompletedyySo07HKCloudeG0CF_0();
}

- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status
{
  updatedCopy = updated;
  statusCopy = status;
  selfCopy = self;
  sub_1BA3B4748(statusCopy);
}

@end