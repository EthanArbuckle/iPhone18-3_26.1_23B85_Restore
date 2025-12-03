@interface MentalHealthAssessmentsDemoDataGenerator
- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)init;
- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setDemoDataGenerationContextWithProfile:(id)profile generatorState:(id)state;
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

- (void)setDemoDataGenerationContextWithProfile:(id)profile generatorState:(id)state
{
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState);
  *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState) = state;
  stateCopy = state;
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v8 = sub_2589921C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589921B4();
  personCopy = person;
  collectionCopy = collection;
  selfCopy = self;
  sub_25898FE88();

  (*(v9 + 8))(v12, v8);
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v11 = sub_2589921C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589921B4();
  personCopy = person;
  collectionCopy = collection;
  selfCopy = self;
  sub_2589906E8(v15, collectionCopy, toTime);

  (*(v12 + 8))(v15, v11);
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_anon_0[OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime])
  {
    coderCopy = coder;
    selfCopy = self;
    v6 = 0;
  }

  else
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime);
    coderCopy2 = coder;
    selfCopy2 = self;
    v6 = sub_2589922D4();
  }

  v10 = sub_258992294();
  [coder encodeObject:v6 forKey:v10];
  swift_unknownObjectRelease();
}

- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2589909C4(coderCopy);

  return v4;
}

@end