@interface MentalHealthDemoDataGenerator
- (_TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setDemoDataGenerationContextWithProfile:(id)profile generatorState:(id)state;
@end

@implementation MentalHealthDemoDataGenerator

- (void)setDemoDataGenerationContextWithProfile:(id)profile generatorState:(id)state
{
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState);
  *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState) = state;
  stateCopy = state;
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v5 = sub_2589921C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589921B4();
  (*(v6 + 8))(v9, v5);
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
  sub_25898D8BC(v15, collectionCopy, toTime);

  (*(v12 + 8))(v15, v11);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_25898CB78(coderCopy);
}

- (_TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_25898DABC(coderCopy);

  return v4;
}

@end