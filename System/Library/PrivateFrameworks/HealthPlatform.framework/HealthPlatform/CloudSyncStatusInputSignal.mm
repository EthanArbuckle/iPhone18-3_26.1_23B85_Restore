@interface CloudSyncStatusInputSignal
- (_TtC14HealthPlatform26CloudSyncStatusInputSignal)init;
- (void)cloudSyncObserver:(id)observer syncCompletedForRequest:(id)request;
- (void)cloudSyncObserver:(id)observer syncDidStartWithProgress:(id)progress;
- (void)cloudSyncObserver:(id)observer syncFailedForRequest:(id)request error:(id)error;
- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error;
- (void)cloudSyncObserver:(id)observer syncStartedForRequest:(id)request withProgress:(id)progress;
- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status;
- (void)cloudSyncObserverSyncCompleted:(id)completed;
@end

@implementation CloudSyncStatusInputSignal

- (void)cloudSyncObserver:(id)observer syncDidStartWithProgress:(id)progress
{
  observerCopy = observer;
  progressCopy = progress;
  selfCopy = self;
  sub_22853D7C0(progressCopy);
}

- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error
{
  observerCopy = observer;
  selfCopy = self;
  errorCopy = error;
  sub_22853DA50(error);
}

- (void)cloudSyncObserverSyncCompleted:(id)completed
{
  completedCopy = completed;
  selfCopy = self;
  _s14HealthPlatform26CloudSyncStatusInputSignalC05cloudd8ObserverD9CompletedyySo07HKClouddI0CF_0();
}

- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status
{
  updatedCopy = updated;
  statusCopy = status;
  selfCopy = self;
  sub_22853DF48(statusCopy);
}

- (void)cloudSyncObserver:(id)observer syncStartedForRequest:(id)request withProgress:(id)progress
{
  observerCopy = observer;
  requestCopy = request;
  progressCopy = progress;
  selfCopy = self;
  sub_22853E140(requestCopy, progressCopy);
}

- (void)cloudSyncObserver:(id)observer syncFailedForRequest:(id)request error:(id)error
{
  observerCopy = observer;
  requestCopy = request;
  selfCopy = self;
  errorCopy = error;
  sub_22853E454(requestCopy, error);
}

- (void)cloudSyncObserver:(id)observer syncCompletedForRequest:(id)request
{
  observerCopy = observer;
  requestCopy = request;
  selfCopy = self;
  sub_22853E7AC(requestCopy);
}

- (_TtC14HealthPlatform26CloudSyncStatusInputSignal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end