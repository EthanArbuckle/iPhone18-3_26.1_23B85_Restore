@interface CloudSyncStateObserver
- (_TtC18HealthExperienceUI22CloudSyncStateObserver)init;
- (void)cloudSyncObserver:(id)a3 syncDidStartWithProgress:(id)a4;
- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4;
- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4;
- (void)cloudSyncObserverSyncCompleted:(id)a3;
@end

@implementation CloudSyncStateObserver

- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  CloudSyncStateObserver.cloudSyncObserver(_:syncFailedWithError:)(v6, a4);
}

- (_TtC18HealthExperienceUI22CloudSyncStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudSyncObserver:(id)a3 syncDidStartWithProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s18HealthExperienceUI22CloudSyncStateObserverC05cloudeG0_16syncDidStartWithySo07HKCloudeG0C_So10NSProgressCtF_0();
}

- (void)cloudSyncObserverSyncCompleted:(id)a3
{
  v4 = a3;
  v5 = self;
  _s18HealthExperienceUI22CloudSyncStateObserverC05cloudegE9CompletedyySo07HKCloudeG0CF_0();
}

- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BA3B4748(v7);
}

@end