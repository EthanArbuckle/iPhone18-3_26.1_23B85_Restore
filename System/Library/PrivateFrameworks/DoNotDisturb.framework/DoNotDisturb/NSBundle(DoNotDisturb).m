@interface NSBundle(DoNotDisturb)
+ (id)dnd_doNotDisturbLocalizationBundle;
+ (id)dnd_locationBundle;
@end

@implementation NSBundle(DoNotDisturb)

+ (id)dnd_locationBundle
{
  if (dnd_locationBundle_onceToken != -1)
  {
    +[NSBundle(DoNotDisturb) dnd_locationBundle];
  }

  v1 = dnd_locationBundle_bundle;

  return v1;
}

+ (id)dnd_doNotDisturbLocalizationBundle
{
  if (dnd_doNotDisturbLocalizationBundle_onceToken != -1)
  {
    +[NSBundle(DoNotDisturb) dnd_doNotDisturbLocalizationBundle];
  }

  v1 = dnd_doNotDisturbLocalizationBundle_bundle;

  return v1;
}

@end