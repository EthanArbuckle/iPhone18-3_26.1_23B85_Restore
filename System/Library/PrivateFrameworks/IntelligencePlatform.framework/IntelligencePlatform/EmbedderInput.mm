@interface EmbedderInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation EmbedderInput

- (NSSet)featureNames
{

  sub_1ABE01414();

  v2 = sub_1ABF24384();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_1ABF23C04();
  v5 = v4;

  v6 = sub_1ABE01420(v3, v5);

  return v6;
}

@end