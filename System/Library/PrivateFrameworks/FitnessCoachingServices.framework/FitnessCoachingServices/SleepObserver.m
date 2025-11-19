@interface SleepObserver
- (_TtC23FitnessCoachingServices13SleepObserver)init;
- (id)currentCalendar;
- (id)currentDate;
- (void)sleepDataProviderLastGoodMorningDismissedDateDidChange;
@end

@implementation SleepObserver

- (void)sleepDataProviderLastGoodMorningDismissedDateDidChange
{
  v1 = a1;
  sub_227800F70();
}

- (_TtC23FitnessCoachingServices13SleepObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)currentDate
{
  v3 = sub_2278C6820();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider), *&self->dateProvider[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider + 16]);
  v8 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v9 = self;
  v8(v7);

  v10 = sub_2278C67D0();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (id)currentCalendar
{
  v3 = sub_2278C6920();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider), *&self->dateProvider[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider + 16]);
  v8 = self;
  sub_227804920();

  v9 = sub_2278C68B0();
  (*(v4 + 8))(v7, v3);

  return v9;
}

@end