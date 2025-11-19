@interface EntityRerankerInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation EntityRerankerInput

- (NSSet)featureNames
{

  sub_1ABBA36D8();

  v2 = sub_1ABF24384();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_1ABF23C04();
  v5 = v4;

  v6 = sub_1ABBA36E4(v3, v5);

  return v6;
}

@end