@interface TensorFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation TensorFeatureProvider

- (NSSet)featureNames
{
  v2 = *self->arrays;

  sub_245F709FC(v3);
  v4 = sub_245F76948();

  return v4;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_245F76878();
  v5 = v4;

  v6 = sub_245F70B18(v3, v5);

  return v6;
}

@end