@interface WalkingSteadinessAnalyticsOnboardingEventDataSource
- (_TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource)init;
- (id)acceptDefaultHeightWithError:(id *)a3;
- (id)acceptDefaultNotificationsWithError:(id *)a3;
- (id)acceptDefaultWeightWithError:(id *)a3;
- (id)activeWatchProductTypeWithError:(id *)a3;
- (id)ageWithError:(id *)a3;
- (id)biologicalSexWithError:(id *)a3;
- (id)featureVersionWithError:(id *)a3;
- (id)hasDefaultHeightWithError:(id *)a3;
- (id)hasDefaultWeightWithError:(id *)a3;
- (id)provenanceWithError:(id *)a3;
- (id)stepWithError:(id *)a3;
@end

@implementation WalkingSteadinessAnalyticsOnboardingEventDataSource

- (id)stepWithError:(id *)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep);
  v3 = sub_2519AEE28();

  return v3;
}

- (id)featureVersionWithError:(id *)a3
{
  sub_2519AF1E8();
  v3 = sub_2519AEE28();

  return v3;
}

- (id)provenanceWithError:(id *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation);
  v4 = *&self->healthStore[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation];

  v5 = sub_2519AEE28();

  return v5;
}

- (id)activeWatchProductTypeWithError:(id *)a3
{
  v3 = [objc_opt_self() activeWatchProductType];
  sub_2519AEE38();

  v4 = sub_2519AEE28();

  return v4;
}

- (id)hasDefaultHeightWithError:(id *)a3
{
  v4 = self;
  v5 = sub_25198A55C(a3);

  return v5;
}

- (id)hasDefaultWeightWithError:(id *)a3
{
  v4 = self;
  v5 = sub_25198A680(a3);

  return v5;
}

- (id)acceptDefaultHeightWithError:(id *)a3
{
  v4 = self;
  v5 = sub_25198A7A4(a3);

  return v5;
}

- (id)acceptDefaultWeightWithError:(id *)a3
{
  v4 = self;
  v5 = sub_25198A8CC(a3);

  return v5;
}

- (id)acceptDefaultNotificationsWithError:(id *)a3
{
  if (*(&self->super.isa + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep) == 3 && *(&self->super.isa + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_acceptDefaults) != 2)
  {
    v4 = sub_2519AEED8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ageWithError:(id *)a3
{
  v4 = self;
  v5 = sub_25198AAAC(a3);

  return v5;
}

- (id)biologicalSexWithError:(id *)a3
{
  v4 = self;
  v5 = sub_25198AB58(a3);

  return v5;
}

- (_TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end