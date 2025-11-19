@interface HDMCPregnancyManager
- (_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager)init;
- (_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager)initWithProfile:(id)a3 operation:(id)a4 experienceModelProvider:(id)a5 notificationProvider:(id)a6 calendarCache:(id)a7;
- (id)diagnosticDescription;
- (id)getCurrentPregnancyModel;
- (void)experienceModelManagerDidUpdateModel;
- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6;
- (void)registerObserver:(id)a3 isUserInitiated:(BOOL)a4;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
- (void)significantTimeChangeDidOccur;
- (void)unregisterObserver:(id)a3;
@end

@implementation HDMCPregnancyManager

- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_2293D4B44(sub_2293D8998);
}

- (id)getCurrentPregnancyModel
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedPregnancyModel);
  v5 = self;
  os_unfair_lock_lock((v4 + 24));
  sub_2293DA69C((v4 + 16), ObjectType, &v8);
  os_unfair_lock_unlock((v4 + 24));
  v6 = v8;

  return v6;
}

- (_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager)initWithProfile:(id)a3 operation:(id)a4 experienceModelProvider:(id)a5 notificationProvider:(id)a6 calendarCache:(id)a7
{
  v12 = objc_allocWithZone(swift_getObjectType());
  v13 = a3;
  v14 = a4;
  swift_unknownObjectRetain();
  v15 = a6;
  v16 = a7;
  v17 = sub_229441954(1, v13, a4, a5, v15, v16);

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

- (void)significantTimeChangeDidOccur
{
  v2 = self;
  sub_229440EFC();
}

- (_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_229441FA8("[%s] Pregnancy samples added, requesting work", 1u);
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_229441FA8("[%s] Pregnancy samples deleted, requesting work", 2u);
}

- (id)diagnosticDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
  v3 = self;
  os_unfair_lock_lock((v2 + 20));
  sub_2294425E4((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 20));

  v4 = sub_22944F864();

  return v4;
}

- (void)registerObserver:(id)a3 isUserInitiated:(BOOL)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = self;
  sub_22944186C(a3, a4, v7);
  swift_unknownObjectRelease();
}

- (void)unregisterObserver:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = self;
  sub_2294418E8(a3, v5);
  swift_unknownObjectRelease();
}

- (void)experienceModelManagerDidUpdateModel
{
  v2 = self;
  HDMCPregnancyManager.experienceModelManagerDidUpdateModel()();
}

@end