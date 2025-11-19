@interface MRDBundleMediaRecommendationEligibility
- (BOOL)isEligible;
- (MRDBundleMediaRecommendationEligibility)init;
- (NSString)bundleIdentifier;
- (NSString)description;
@end

@implementation MRDBundleMediaRecommendationEligibility

- (BOOL)isEligible
{
  if ((*(self + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForCallToAction) & 1) != 0 || *(self + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForAutoRoute) == 1)
  {
    return 1;
  }

  else
  {
    return *(self + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForOneTapSuggestion);
  }
}

- (NSString)bundleIdentifier
{
  v2 = *(self + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_bundleIdentifier);
  v3 = *(self + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_bundleIdentifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)description
{
  v2 = self;
  sub_1003571B8();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (MRDBundleMediaRecommendationEligibility)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end