@interface _DKHomeKitSceneIdentifier
+ (id)withScene:(id)a3;
+ (id)withString:(id)a3;
@end

@implementation _DKHomeKitSceneIdentifier

+ (id)withScene:(id)a3
{
  v4 = a3;
  v5 = [a1 type];
  v6 = [_DKIdentifier identifierWithString:v4 type:v5];

  return v6;
}

+ (id)withString:(id)a3
{
  v4 = a3;
  v5 = [a1 type];
  v6 = [_DKIdentifier identifierWithString:v4 type:v5];

  return v6;
}

@end