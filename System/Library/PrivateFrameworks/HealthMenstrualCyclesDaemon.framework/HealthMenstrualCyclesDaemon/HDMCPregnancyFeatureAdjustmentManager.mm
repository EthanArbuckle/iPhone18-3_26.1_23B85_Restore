@interface HDMCPregnancyFeatureAdjustmentManager
- (_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager)init;
- (_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager)initWithPregnancyManager:(id)manager profile:(id)profile experienceModelProvider:(id)provider;
- (void)experienceModelManagerDidUpdateModel;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)pregnancyModelDidUpdate:(id)update;
@end

@implementation HDMCPregnancyFeatureAdjustmentManager

- (void)pregnancyModelDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_2293D8E60(updateCopy);
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  operationCopy = operation;
  profileCopy = profile;
  assertionCopy = assertion;
  selfCopy = self;
  sub_2293D99DC(sub_2293D8990, v11);
}

- (_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager)initWithPregnancyManager:(id)manager profile:(id)profile experienceModelProvider:(id)provider
{
  swift_getObjectType();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  managerCopy = manager;
  profileCopy = profile;
  swift_unknownObjectRetain();
  v10 = sub_22942816C(managerCopy, profileCopy, provider, 0, 0, 0, v12);
  swift_deallocPartialClassInstance();
  return v10;
}

- (_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)experienceModelManagerDidUpdateModel
{
  selfCopy = self;
  HDMCPregnancyFeatureAdjustmentManager.experienceModelManagerDidUpdateModel()();
}

@end