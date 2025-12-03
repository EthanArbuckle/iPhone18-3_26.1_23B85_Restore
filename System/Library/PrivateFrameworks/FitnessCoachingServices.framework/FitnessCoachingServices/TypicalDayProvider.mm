@interface TypicalDayProvider
- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler;
- (_TtC23FitnessCoachingServices18TypicalDayProvider)init;
- (id)currentCalendar;
- (id)currentDate;
- (id)firstOnWristDateToday;
@end

@implementation TypicalDayProvider

- (_TtC23FitnessCoachingServices18TypicalDayProvider)init
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
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource), *&self->dataSource[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource + 16]);
  __swift_project_boxed_opaque_existential_1((*v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider), *(*v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider + 24));
  v9 = off_283AE99E0;
  type metadata accessor for DateProvider();
  selfCopy = self;
  v9(v7);

  v11 = sub_2278C67D0();
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (id)currentCalendar
{
  v3 = sub_2278C6920();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource), *&self->dataSource[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource + 16]);
  __swift_project_boxed_opaque_existential_1((*v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider), *(*v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider + 24));
  selfCopy = self;
  sub_227804920();

  v10 = sub_2278C68B0();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (id)firstOnWristDateToday
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *__swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource), *&self->dataSource[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource + 16]);
  selfCopy = self;
  sub_22785D15C(v6);

  v9 = sub_2278C6820();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2278C67D0();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler
{
  v8 = sub_2278C65D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-v14];
  v16 = _Block_copy(handler);
  sub_2278C65B0();
  sub_2278C65B0();
  _Block_copy(v16);
  selfCopy = self;
  sub_2278A8348(v15, v13, selfCopy, v16);
  _Block_release(v16);
  _Block_release(v16);

  v18 = *(v9 + 8);
  v18(v13, v8);
  v18(v15, v8);
  return 1;
}

@end