@interface HDMCPregnancyFeatureAdjustmentManager
- (_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager)init;
- (_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager)initWithPregnancyManager:(id)a3 profile:(id)a4 experienceModelProvider:(id)a5;
- (void)experienceModelManagerDidUpdateModel;
- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6;
- (void)pregnancyModelDidUpdate:(id)a3;
@end

@implementation HDMCPregnancyFeatureAdjustmentManager

- (void)pregnancyModelDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2293D8E60(v4);
}

- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  sub_2293D99DC(sub_2293D8990, v11);
}

- (_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager)initWithPregnancyManager:(id)a3 profile:(id)a4 experienceModelProvider:(id)a5
{
  swift_getObjectType();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = sub_22942816C(v8, v9, a5, 0, 0, 0, v12);
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
  v2 = self;
  HDMCPregnancyFeatureAdjustmentManager.experienceModelManagerDidUpdateModel()();
}

@end