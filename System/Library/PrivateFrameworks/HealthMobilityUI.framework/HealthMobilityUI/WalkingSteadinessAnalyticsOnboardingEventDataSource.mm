@interface WalkingSteadinessAnalyticsOnboardingEventDataSource
- (_TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource)init;
- (id)acceptDefaultHeightWithError:(id *)error;
- (id)acceptDefaultNotificationsWithError:(id *)error;
- (id)acceptDefaultWeightWithError:(id *)error;
- (id)activeWatchProductTypeWithError:(id *)error;
- (id)ageWithError:(id *)error;
- (id)biologicalSexWithError:(id *)error;
- (id)featureVersionWithError:(id *)error;
- (id)hasDefaultHeightWithError:(id *)error;
- (id)hasDefaultWeightWithError:(id *)error;
- (id)provenanceWithError:(id *)error;
- (id)stepWithError:(id *)error;
@end

@implementation WalkingSteadinessAnalyticsOnboardingEventDataSource

- (id)stepWithError:(id *)error
{
  *(&self->super.isa + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_onboardingStep);
  v3 = sub_2519AEE28();

  return v3;
}

- (id)featureVersionWithError:(id *)error
{
  sub_2519AF1E8();
  v3 = sub_2519AEE28();

  return v3;
}

- (id)provenanceWithError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation);
  v4 = *&self->healthStore[OBJC_IVAR____TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource_presentation];

  v5 = sub_2519AEE28();

  return v5;
}

- (id)activeWatchProductTypeWithError:(id *)error
{
  activeWatchProductType = [objc_opt_self() activeWatchProductType];
  sub_2519AEE38();

  v4 = sub_2519AEE28();

  return v4;
}

- (id)hasDefaultHeightWithError:(id *)error
{
  selfCopy = self;
  v5 = sub_25198A55C(error);

  return v5;
}

- (id)hasDefaultWeightWithError:(id *)error
{
  selfCopy = self;
  v5 = sub_25198A680(error);

  return v5;
}

- (id)acceptDefaultHeightWithError:(id *)error
{
  selfCopy = self;
  v5 = sub_25198A7A4(error);

  return v5;
}

- (id)acceptDefaultWeightWithError:(id *)error
{
  selfCopy = self;
  v5 = sub_25198A8CC(error);

  return v5;
}

- (id)acceptDefaultNotificationsWithError:(id *)error
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

- (id)ageWithError:(id *)error
{
  selfCopy = self;
  v5 = sub_25198AAAC(error);

  return v5;
}

- (id)biologicalSexWithError:(id *)error
{
  selfCopy = self;
  v5 = sub_25198AB58(error);

  return v5;
}

- (_TtC16HealthMobilityUI51WalkingSteadinessAnalyticsOnboardingEventDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end