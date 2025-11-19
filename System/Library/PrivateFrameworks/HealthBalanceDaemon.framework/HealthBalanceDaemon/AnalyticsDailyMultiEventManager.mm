@interface AnalyticsDailyMultiEventManager
- (_TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager)init;
- (void)daemonReady:(id)a3;
- (void)reportDailyAnalyticsWithCoordinator:(id)a3 completion:(id)a4;
@end

@implementation AnalyticsDailyMultiEventManager

- (void)daemonReady:(id)a3
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain_n();
    v6 = self;
    v7 = [v5 analyticsSubmissionCoordinator];
    [v7 addObserver:v6 queue:0];

    v8 = *(&v6->super.isa + OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_unitTest_didObserveAnalyticsSubmissionCoordinator);
    if (v8)
    {
      v9 = *&v6->profile[OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_unitTest_didObserveAnalyticsSubmissionCoordinator];
      v8();
    }

    swift_unknownObjectRelease_n();
  }
}

- (void)reportDailyAnalyticsWithCoordinator:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_228908B30(sub_228908B28, v7);
}

- (_TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end