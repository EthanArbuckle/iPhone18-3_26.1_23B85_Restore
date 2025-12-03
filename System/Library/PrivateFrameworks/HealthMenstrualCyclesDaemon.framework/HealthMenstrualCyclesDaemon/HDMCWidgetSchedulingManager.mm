@interface HDMCWidgetSchedulingManager
- (_TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager)init;
- (void)dealloc;
- (void)didUpdateAnalysis:(id)analysis;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDMCWidgetSchedulingManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = sub_22944609C();
  if (v5)
  {
    v6 = v5;
    _bridging_analysisProviding = [v5 _bridging_analysisProviding];

    if (_bridging_analysisProviding)
    {
      v8 = selfCopy;
      [_bridging_analysisProviding unregisterObserver_];

      swift_unknownObjectRelease();
    }
  }

  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(HDMCWidgetSchedulingManager *)&v9 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  selfCopy = self;
  HDMCWidgetSchedulingManager.profileDidBecomeReady(_:)(readyCopy);
}

- (_TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateAnalysis:(id)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  HDMCWidgetSchedulingManager.didUpdate(_:)(analysisCopy);
}

@end