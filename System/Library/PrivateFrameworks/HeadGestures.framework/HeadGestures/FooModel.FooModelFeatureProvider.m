@interface FooModel.FooModelFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
- (void)setFeatureNames:(id)a3;
@end

@implementation FooModel.FooModelFeatureProvider

- (NSSet)featureNames
{
  v2 = *(self + 2);

  v3 = sub_2511310F8();

  return v3;
}

- (void)setFeatureNames:(id)a3
{
  v4 = sub_251131108();
  v5 = *(self + 2);
  *(self + 2) = v4;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_251130F18();
  v5 = v4;

  v6 = sub_25110394C(v3, v5);

  return v6;
}

@end