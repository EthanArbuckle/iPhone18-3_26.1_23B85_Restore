@interface Transformer
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation Transformer

- (NSSet)featureNames
{

  Transformer.featureNames.getter();

  v2 = sub_2546B55C4();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_2546B54C4();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  v7 = Transformer.featureValue(for:)(v6);

  return v7;
}

@end