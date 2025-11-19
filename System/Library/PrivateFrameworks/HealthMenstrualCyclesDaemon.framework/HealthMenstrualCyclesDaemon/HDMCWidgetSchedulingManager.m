@interface HDMCWidgetSchedulingManager
- (_TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager)init;
- (void)dealloc;
- (void)didUpdateAnalysis:(id)a3;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDMCWidgetSchedulingManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = sub_22944609C();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 _bridging_analysisProviding];

    if (v7)
    {
      v8 = v4;
      [v7 unregisterObserver_];

      swift_unknownObjectRelease();
    }
  }

  v9.receiver = v4;
  v9.super_class = ObjectType;
  [(HDMCWidgetSchedulingManager *)&v9 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = a3;
  v5 = self;
  HDMCWidgetSchedulingManager.profileDidBecomeReady(_:)(v4);
}

- (_TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateAnalysis:(id)a3
{
  v4 = a3;
  v5 = self;
  HDMCWidgetSchedulingManager.didUpdate(_:)(v4);
}

@end