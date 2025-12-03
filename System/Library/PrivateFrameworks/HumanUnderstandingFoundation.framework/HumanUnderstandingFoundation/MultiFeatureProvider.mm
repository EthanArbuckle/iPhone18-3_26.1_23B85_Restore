@interface MultiFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation MultiFeatureProvider

- (NSSet)featureNames
{

  MultiFeatureProvider.featureNames.getter();

  v2 = sub_2546B55C4();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_2546B54C4();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  v7 = MultiFeatureProvider.featureValue(for:)(v6);

  return v7;
}

@end