@interface AnalyticsDailyMultiEventManager
- (_TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager)init;
- (void)daemonReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
@end

@implementation AnalyticsDailyMultiEventManager

- (void)daemonReady:(id)ready
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain_n();
    selfCopy = self;
    analyticsSubmissionCoordinator = [v5 analyticsSubmissionCoordinator];
    [analyticsSubmissionCoordinator addObserver:selfCopy queue:0];

    v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_unitTest_didObserveAnalyticsSubmissionCoordinator);
    if (v8)
    {
      v9 = *&selfCopy->profile[OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_unitTest_didObserveAnalyticsSubmissionCoordinator];
      v8();
    }

    swift_unknownObjectRelease_n();
  }
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_228908B30(sub_228908B28, v7);
}

- (_TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end