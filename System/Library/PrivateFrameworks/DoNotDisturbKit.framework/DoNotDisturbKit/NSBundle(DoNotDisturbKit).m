@interface NSBundle(DoNotDisturbKit)
+ (id)dndk_localizationBundle;
@end

@implementation NSBundle(DoNotDisturbKit)

+ (id)dndk_localizationBundle
{
  if (dndk_localizationBundle_onceToken != -1)
  {
    +[NSBundle(DoNotDisturbKit) dndk_localizationBundle];
  }

  v1 = dndk_localizationBundle_bundle;

  return v1;
}

@end