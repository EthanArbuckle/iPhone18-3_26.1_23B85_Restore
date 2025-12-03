@interface CCUIFeatures
+ (BOOL)isFeatureEnabled:(int64_t)enabled;
- (CCUIFeatures)init;
@end

@implementation CCUIFeatures

+ (BOOL)isFeatureEnabled:(int64_t)enabled
{
  type metadata accessor for Feature(0);
  v6[3] = v4;
  v6[4] = sub_1D168C430();
  v6[0] = enabled;
  LOBYTE(enabled) = sub_1D16CC254();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return enabled & 1;
}

- (CCUIFeatures)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Features();
  return [(CCUIFeatures *)&v3 init];
}

@end