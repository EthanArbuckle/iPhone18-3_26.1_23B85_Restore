@interface _DKBundleIdentifier
+ (id)withBundle:(id)bundle;
@end

@implementation _DKBundleIdentifier

+ (id)withBundle:(id)bundle
{
  bundleCopy = bundle;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:bundleCopy type:type];

  return v6;
}

@end