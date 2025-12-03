@interface _DKHomeKitSceneIdentifier
+ (id)withScene:(id)scene;
+ (id)withString:(id)string;
@end

@implementation _DKHomeKitSceneIdentifier

+ (id)withScene:(id)scene
{
  sceneCopy = scene;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:sceneCopy type:type];

  return v6;
}

+ (id)withString:(id)string
{
  stringCopy = string;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:stringCopy type:type];

  return v6;
}

@end