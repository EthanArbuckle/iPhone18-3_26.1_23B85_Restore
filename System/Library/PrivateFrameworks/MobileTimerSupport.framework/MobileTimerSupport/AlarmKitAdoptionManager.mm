@interface AlarmKitAdoptionManager
- (_TtC18MobileTimerSupport23AlarmKitAdoptionManager)init;
- (void)scheduleWithAlarm:(id)alarm;
- (void)scheduleWithTimer:(id)timer;
- (void)unscheduleAllAlarms;
@end

@implementation AlarmKitAdoptionManager

- (void)unscheduleAllAlarms
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_queue);
  v10[0] = &unk_22D825408;
  v10[1] = 0;
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();
  (*(v4 + 8))(v7, v3);
}

- (void)scheduleWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  selfCopy = self;
  sub_22D7D34BC(alarmCopy);
}

- (void)scheduleWithTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  sub_22D7D3FCC(timerCopy);
}

- (_TtC18MobileTimerSupport23AlarmKitAdoptionManager)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID);
  *v3 = 0xD000000000000015;
  v3[1] = 0x800000022D828220;
  v4 = (&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_daemonBundleID);
  *v4 = 0xD000000000000016;
  v4[1] = 0x800000022D82B260;
  v5 = OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_queue;
  v6 = type metadata accessor for SerialTaskQueue();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(&self->super.isa + v5) = SerialTaskQueue.init()();
  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmKitAdoptionManager();
  return [(AlarmKitAdoptionManager *)&v10 init];
}

@end