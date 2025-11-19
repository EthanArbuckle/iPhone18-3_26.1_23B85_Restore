@interface HDMCExperienceModelManager
- (_TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager)init;
- (void)dealloc;
- (void)didReceiveExperienceModelUpdateNotification;
@end

@implementation HDMCExperienceModelManager

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager_notificationProvider);
  v3 = self;
  [v2 removeObserver_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for HDMCExperienceModelManager();
  [(HDMCExperienceModelManager *)&v4 dealloc];
}

- (void)didReceiveExperienceModelUpdateNotification
{
  v2 = self;
  sub_22944863C();
}

- (_TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end