@interface MentionGenerationInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation MentionGenerationInput

- (NSSet)featureNames
{

  sub_1ABE0EF14();

  v2 = sub_1ABF24384();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_1ABF23C04();
  v5 = v4;

  v6 = sub_1ABE0EF20(v3, v5);

  return v6;
}

@end