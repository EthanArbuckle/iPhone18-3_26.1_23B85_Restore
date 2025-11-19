@interface FeatureAlgorithmVersionsSyncManager
- (_TtC20HealthDaemonFeatures35FeatureAlgorithmVersionsSyncManager)init;
- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6;
@end

@implementation FeatureAlgorithmVersionsSyncManager

- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_251563B28(v12, sub_2515642A4);
}

- (_TtC20HealthDaemonFeatures35FeatureAlgorithmVersionsSyncManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end