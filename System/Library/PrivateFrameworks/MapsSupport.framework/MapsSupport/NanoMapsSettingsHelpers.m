@interface NanoMapsSettingsHelpers
+ (NSUserDefaults)companionUserDefaults;
+ (NSUserDefaults)nanoMapsUserDefaults;
@end

@implementation NanoMapsSettingsHelpers

+ (NSUserDefaults)nanoMapsUserDefaults
{
  if (qword_10009E788 != -1)
  {
    sub_100055BBC();
  }

  v3 = qword_10009E780;

  return v3;
}

+ (NSUserDefaults)companionUserDefaults
{
  if (qword_10009E798 != -1)
  {
    sub_100055BD0();
  }

  v3 = qword_10009E790;

  return v3;
}

@end