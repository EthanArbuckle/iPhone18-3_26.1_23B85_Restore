@interface HDMCPregnancyManager
- (_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager)init;
- (_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager)initWithProfile:(id)profile operation:(id)operation experienceModelProvider:(id)provider notificationProvider:(id)notificationProvider calendarCache:(id)cache;
- (id)diagnosticDescription;
- (id)getCurrentPregnancyModel;
- (void)experienceModelManagerDidUpdateModel;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)registerObserver:(id)observer isUserInitiated:(BOOL)initiated;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)significantTimeChangeDidOccur;
- (void)unregisterObserver:(id)observer;
@end

@implementation HDMCPregnancyManager

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v10 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v10;
  operationCopy = operation;
  profileCopy = profile;
  assertionCopy = assertion;
  selfCopy = self;
  sub_2293D4B44(sub_2293D8998);
}

- (id)getCurrentPregnancyModel
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedPregnancyModel);
  selfCopy = self;
  os_unfair_lock_lock((v4 + 24));
  sub_2293DA69C((v4 + 16), ObjectType, &v8);
  os_unfair_lock_unlock((v4 + 24));
  v6 = v8;

  return v6;
}

- (_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager)initWithProfile:(id)profile operation:(id)operation experienceModelProvider:(id)provider notificationProvider:(id)notificationProvider calendarCache:(id)cache
{
  v12 = objc_allocWithZone(swift_getObjectType());
  profileCopy = profile;
  operationCopy = operation;
  swift_unknownObjectRetain();
  notificationProviderCopy = notificationProvider;
  cacheCopy = cache;
  v17 = sub_229441954(1, profileCopy, operation, provider, notificationProviderCopy, cacheCopy);

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

- (void)significantTimeChangeDidOccur
{
  selfCopy = self;
  sub_229440EFC();
}

- (_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  anchorCopy = anchor;
  selfCopy = self;
  sub_229441FA8("[%s] Pregnancy samples added, requesting work", 1u);
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  anchorCopy = anchor;
  selfCopy = self;
  sub_229441FA8("[%s] Pregnancy samples deleted, requesting work", 2u);
}

- (id)diagnosticDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  sub_2294425E4((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 20));

  v4 = sub_22944F864();

  return v4;
}

- (void)registerObserver:(id)observer isUserInitiated:(BOOL)initiated
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22944186C(observer, initiated, selfCopy);
  swift_unknownObjectRelease();
}

- (void)unregisterObserver:(id)observer
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2294418E8(observer, selfCopy);
  swift_unknownObjectRelease();
}

- (void)experienceModelManagerDidUpdateModel
{
  selfCopy = self;
  HDMCPregnancyManager.experienceModelManagerDidUpdateModel()();
}

@end