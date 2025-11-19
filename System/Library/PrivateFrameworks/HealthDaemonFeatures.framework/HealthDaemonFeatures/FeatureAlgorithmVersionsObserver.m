@interface FeatureAlgorithmVersionsObserver
- (_TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver)init;
- (void)deviceKeyValueStoreDidUpdateForStorageGroup:(id)a3 domain:(id)a4;
- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6;
@end

@implementation FeatureAlgorithmVersionsObserver

- (void)deviceKeyValueStoreDidUpdateForStorageGroup:(id)a3 domain:(id)a4
{
  v5 = sub_251567F30();
  v7 = v6;
  v8 = self;
  sub_251565DD8(v5, v7);
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
  sub_251566190(v13, sub_2515642A4, v11);
}

- (_TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end