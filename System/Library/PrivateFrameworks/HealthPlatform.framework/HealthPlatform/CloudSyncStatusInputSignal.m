@interface CloudSyncStatusInputSignal
- (_TtC14HealthPlatform26CloudSyncStatusInputSignal)init;
- (void)cloudSyncObserver:(id)a3 syncCompletedForRequest:(id)a4;
- (void)cloudSyncObserver:(id)a3 syncDidStartWithProgress:(id)a4;
- (void)cloudSyncObserver:(id)a3 syncFailedForRequest:(id)a4 error:(id)a5;
- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4;
- (void)cloudSyncObserver:(id)a3 syncStartedForRequest:(id)a4 withProgress:(id)a5;
- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4;
- (void)cloudSyncObserverSyncCompleted:(id)a3;
@end

@implementation CloudSyncStatusInputSignal

- (void)cloudSyncObserver:(id)a3 syncDidStartWithProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22853D7C0(v7);
}

- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_22853DA50(a4);
}

- (void)cloudSyncObserverSyncCompleted:(id)a3
{
  v4 = a3;
  v5 = self;
  _s14HealthPlatform26CloudSyncStatusInputSignalC05cloudd8ObserverD9CompletedyySo07HKClouddI0CF_0();
}

- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22853DF48(v7);
}

- (void)cloudSyncObserver:(id)a3 syncStartedForRequest:(id)a4 withProgress:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_22853E140(v9, v10);
}

- (void)cloudSyncObserver:(id)a3 syncFailedForRequest:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_22853E454(v9, a5);
}

- (void)cloudSyncObserver:(id)a3 syncCompletedForRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22853E7AC(v7);
}

- (_TtC14HealthPlatform26CloudSyncStatusInputSignal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end