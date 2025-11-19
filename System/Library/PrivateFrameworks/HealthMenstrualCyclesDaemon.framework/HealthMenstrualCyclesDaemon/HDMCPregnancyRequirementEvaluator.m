@interface HDMCPregnancyRequirementEvaluator
- (_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator)init;
- (_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator)initWithPregnancyManager:(id)a3;
- (id)isRequirementSatisfied:(id)a3 error:(id *)a4;
- (void)pregnancyModelDidUpdate:(id)a3;
@end

@implementation HDMCPregnancyRequirementEvaluator

- (void)pregnancyModelDidUpdate:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a3;
  v11[4] = sub_2293D96A8;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2293D89A8;
  v11[3] = &block_descriptor_14;
  v7 = _Block_copy(v11);
  v8 = a3;
  v9 = self;
  v10 = v8;

  [v5 notifyObservers_];

  _Block_release(v7);
}

- (_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator)initWithPregnancyManager:(id)a3
{
  swift_getObjectType();
  v4 = sub_229434CB8(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (id)isRequirementSatisfied:(id)a3 error:(id *)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_229434194(a3);
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