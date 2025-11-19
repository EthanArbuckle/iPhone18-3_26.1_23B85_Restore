@interface CSFEligibilityFetcher
+ (CSFEligibility)current;
- (CSFEligibilityFetcher)init;
@end

@implementation CSFEligibilityFetcher

+ (CSFEligibility)current
{
  v2 = _s25CloudSubscriptionFeatures18EligibilityFetcherC7currentAA0D0CvgZ_0();

  return v2;
}

- (CSFEligibilityFetcher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EligibilityFetcher();
  return [(CSFEligibilityFetcher *)&v3 init];
}

@end