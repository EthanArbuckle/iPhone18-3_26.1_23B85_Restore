@interface CRKFeatureFlagsFactory
- (id)makeFeatureFlags;
@end

@implementation CRKFeatureFlagsFactory

- (id)makeFeatureFlags
{
  v2 = objc_opt_new();

  return v2;
}

@end