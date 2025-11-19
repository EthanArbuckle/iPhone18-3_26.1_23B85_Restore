@interface MentalHealthAssessmentsDemoDataGenerator
- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)init;
- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setDemoDataGenerationContextWithProfile:(id)a3 generatorState:(id)a4;
@end

@implementation MentalHealthAssessmentsDemoDataGenerator

- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)init
{
  v3 = sub_2589921D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CC9830], v3);
  sub_2589921E4();
  (*(v4 + 8))(v7, v3);
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState) = 0;
  v8 = self + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime;
  *v8 = 0;
  v8[8] = 1;
  v9 = type metadata accessor for MentalHealthAssessmentsDemoDataGenerator();
  v11.receiver = self;
  v11.super_class = v9;
  return [(MentalHealthAssessmentsDemoDataGenerator *)&v11 init];
}

- (void)setDemoDataGenerationContextWithProfile:(id)a3 generatorState:(id)a4
{
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState);
  *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState) = a4;
  v6 = a4;
}

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v8 = sub_2589921C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589921B4();
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_25898FE88();

  (*(v9 + 8))(v12, v8);
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
  sub_2589906E8(v15, v17, a5);

  (*(v12 + 8))(v15, v11);
}

- (void)encodeWithCoder:(id)a3
{
  if (self->_anon_0[OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime])
  {
    v4 = a3;
    v5 = self;
    v6 = 0;
  }

  else
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime);
    v8 = a3;
    v9 = self;
    v6 = sub_2589922D4();
  }

  v10 = sub_258992294();
  [a3 encodeObject:v6 forKey:v10];
  swift_unknownObjectRelease();
}

- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2589909C4(v3);

  return v4;
}

@end