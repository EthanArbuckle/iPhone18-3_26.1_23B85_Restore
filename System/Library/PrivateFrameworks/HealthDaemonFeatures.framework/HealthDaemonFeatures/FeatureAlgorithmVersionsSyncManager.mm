@interface FeatureAlgorithmVersionsSyncManager
- (_TtC20HealthDaemonFeatures35FeatureAlgorithmVersionsSyncManager)init;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
@end

@implementation FeatureAlgorithmVersionsSyncManager

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v10 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v10;
  operationCopy = operation;
  profileCopy = profile;
  assertionCopy = assertion;
  selfCopy = self;
  sub_251563B28(profileCopy, sub_2515642A4);
}

- (_TtC20HealthDaemonFeatures35FeatureAlgorithmVersionsSyncManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end