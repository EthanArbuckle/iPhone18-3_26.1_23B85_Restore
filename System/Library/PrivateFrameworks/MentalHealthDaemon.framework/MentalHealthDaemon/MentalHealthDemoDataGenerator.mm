@interface MentalHealthDemoDataGenerator
- (_TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setDemoDataGenerationContextWithProfile:(id)a3 generatorState:(id)a4;
@end

@implementation MentalHealthDemoDataGenerator

- (void)setDemoDataGenerationContextWithProfile:(id)a3 generatorState:(id)a4
{
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState);
  *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState) = a4;
  v6 = a4;
}

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v5 = sub_2589921C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589921B4();
  (*(v6 + 8))(v9, v5);
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v11 = sub_2589921C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589921B4();
  v16 = a3;
  v17 = a7;
  v18 = self;
  sub_25898D8BC(v15, v17, a5);

  (*(v12 + 8))(v15, v11);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25898CB78(v4);
}

- (_TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_25898DABC(v3);

  return v4;
}

@end