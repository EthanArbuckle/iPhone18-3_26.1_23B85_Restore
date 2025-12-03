@interface HDMCPregnancyRequirementEvaluator
- (_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator)init;
- (_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator)initWithPregnancyManager:(id)manager;
- (id)isRequirementSatisfied:(id)satisfied error:(id *)error;
- (void)pregnancyModelDidUpdate:(id)update;
@end

@implementation HDMCPregnancyRequirementEvaluator

- (void)pregnancyModelDidUpdate:(id)update
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = update;
  v11[4] = sub_2293D96A8;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2293D89A8;
  v11[3] = &block_descriptor_14;
  v7 = _Block_copy(v11);
  updateCopy = update;
  selfCopy = self;
  v10 = updateCopy;

  [v5 notifyObservers_];

  _Block_release(v7);
}

- (_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator)initWithPregnancyManager:(id)manager
{
  swift_getObjectType();
  v4 = sub_229434CB8(manager);
  swift_deallocPartialClassInstance();
  return v4;
}

- (id)isRequirementSatisfied:(id)satisfied error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_229434194(satisfied);
  v8 = v7;

  swift_unknownObjectRelease();

  return v8;
}

- (_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end