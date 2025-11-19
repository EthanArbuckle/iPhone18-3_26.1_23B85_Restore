@interface WalkSuggestionProvider
- (BOOL)enumerateActivitySummariesFromDateComponents:(id)a3 toDateComponents:(id)a4 error:(id *)a5 handler:(id)a6;
- (_TtC23FitnessCoachingServices22WalkSuggestionProvider)init;
- (id)currentCalendar;
- (id)currentDate;
@end

@implementation WalkSuggestionProvider

- (_TtC23FitnessCoachingServices22WalkSuggestionProvider)init
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
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider), *&self->dateProvider[OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider + 16]);
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
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider), *&self->dateProvider[OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider + 16]);
  v8 = self;
  sub_227804920();

  v9 = sub_2278C68B0();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (BOOL)enumerateActivitySummariesFromDateComponents:(id)a3 toDateComponents:(id)a4 error:(id *)a5 handler:(id)a6
{
  v6 = sub_2278C65D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_2278C65B0();
  sub_2278C65B0();
  v14 = *(v7 + 8);
  v14(v11, v6);
  v14(v13, v6);
  return 1;
}

@end