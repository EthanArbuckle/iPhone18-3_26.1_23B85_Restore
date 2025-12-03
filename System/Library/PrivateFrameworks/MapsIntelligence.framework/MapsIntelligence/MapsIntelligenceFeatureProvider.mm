@interface MapsIntelligenceFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
- (void)setFeatureNames:(id)names;
@end

@implementation MapsIntelligenceFeatureProvider

- (NSSet)featureNames
{
  swift_beginAccess();
  v3 = *(self + 2);

  v4 = sub_22616FA28();

  return v4;
}

- (void)setFeatureNames:(id)names
{
  v4 = sub_22616FA38();
  swift_beginAccess();
  v5 = *(self + 2);
  *(self + 2) = v4;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_22616F828();
  v5 = v4;

  v6 = sub_226158400(v3, v5);

  return v6;
}

@end