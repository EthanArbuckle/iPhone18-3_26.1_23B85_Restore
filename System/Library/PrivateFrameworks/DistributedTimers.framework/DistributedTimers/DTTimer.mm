@interface DTTimer
- (BOOL)isEqual:(id)equal;
- (DTTimer)init;
- (DTTimer)initWithMTAlarm:(id)alarm;
- (DTTimer)initWithMTAlarmID:(id)d;
- (DTTimer)initWithMTTimer:(id)timer;
- (DTTimer)initWithMTTimerID:(id)d;
@end

@implementation DTTimer

- (DTTimer)initWithMTAlarm:(id)alarm
{
  *(&self->super.isa + OBJC_IVAR___DTTimer_mtAlarm) = alarm;
  v3 = (&self->super.isa + OBJC_IVAR___DTTimer__mtAlarmID);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.isa + OBJC_IVAR___DTTimer_mtTimer) = 0;
  v4 = (&self->super.isa + OBJC_IVAR___DTTimer__mtTimerID);
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = DTTimer;
  alarmCopy = alarm;
  return [(DTTimer *)&v7 init];
}

- (DTTimer)initWithMTAlarmID:(id)d
{
  v4 = sub_249076E1C();
  *(&self->super.isa + OBJC_IVAR___DTTimer_mtAlarm) = 0;
  v5 = (self + OBJC_IVAR___DTTimer__mtAlarmID);
  *v5 = v4;
  v5[1] = v6;
  *(&self->super.isa + OBJC_IVAR___DTTimer_mtTimer) = 0;
  v7 = (&self->super.isa + OBJC_IVAR___DTTimer__mtTimerID);
  *v7 = 0;
  v7[1] = 0;
  v9.receiver = self;
  v9.super_class = DTTimer;
  return [(DTTimer *)&v9 init];
}

- (DTTimer)initWithMTTimer:(id)timer
{
  *(&self->super.isa + OBJC_IVAR___DTTimer_mtAlarm) = 0;
  v3 = (&self->super.isa + OBJC_IVAR___DTTimer__mtAlarmID);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.isa + OBJC_IVAR___DTTimer_mtTimer) = timer;
  v4 = (&self->super.isa + OBJC_IVAR___DTTimer__mtTimerID);
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = DTTimer;
  timerCopy = timer;
  return [(DTTimer *)&v7 init];
}

- (DTTimer)initWithMTTimerID:(id)d
{
  v4 = sub_249076E1C();
  *(&self->super.isa + OBJC_IVAR___DTTimer_mtAlarm) = 0;
  v5 = (&self->super.isa + OBJC_IVAR___DTTimer__mtAlarmID);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.isa + OBJC_IVAR___DTTimer_mtTimer) = 0;
  v6 = (self + OBJC_IVAR___DTTimer__mtTimerID);
  *v6 = v4;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = DTTimer;
  return [(DTTimer *)&v9 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24907702C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = DTTimer.isEqual(_:)(v8);

  sub_249064460(v8, &qword_27EECF500, &qword_24907B5E0);
  return v6 & 1;
}

- (DTTimer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end