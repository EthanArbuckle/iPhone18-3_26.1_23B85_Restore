@interface NHOFeatureFlags
+ (BOOL)eagleRoostFeatureFlagIsEnabled;
- (NHOFeatureFlags)init;
@end

@implementation NHOFeatureFlags

+ (BOOL)eagleRoostFeatureFlagIsEnabled
{
  v4[3] = &type metadata for NHOFeatureFlags;
  v4[4] = sub_25B1269C0();
  LOBYTE(v4[0]) = 0;
  v2 = sub_25B1615B4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

- (NHOFeatureFlags)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NHOFeatureFlagsObjC();
  return [(NHOFeatureFlags *)&v3 init];
}

@end