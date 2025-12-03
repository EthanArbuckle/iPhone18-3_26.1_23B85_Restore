@interface FeatureAlgorithmVersionsObserver
- (_TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver)init;
- (void)deviceKeyValueStoreDidUpdateForStorageGroup:(id)group domain:(id)domain;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
@end

@implementation FeatureAlgorithmVersionsObserver

- (void)deviceKeyValueStoreDidUpdateForStorageGroup:(id)group domain:(id)domain
{
  v5 = sub_251567F30();
  v7 = v6;
  selfCopy = self;
  sub_251565DD8(v5, v7);
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
  sub_251566190(profileCopy, sub_2515642A4, v11);
}

- (_TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end