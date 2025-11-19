@interface NSBundle(MobileSafariFrameworkExtras)
+ (uint64_t)safari_isSafariViewServiceBundle;
+ (uint64_t)safari_isWebSheetApplicationBundle;
+ (uint64_t)sf_mobileSafariFrameworkBundle;
@end

@implementation NSBundle(MobileSafariFrameworkExtras)

+ (uint64_t)sf_mobileSafariFrameworkBundle
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

+ (uint64_t)safari_isWebSheetApplicationBundle
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.WebSheet"];

  return v2;
}

+ (uint64_t)safari_isSafariViewServiceBundle
{
  if (safari_isSafariViewServiceBundle_onceToken != -1)
  {
    +[NSBundle(MobileSafariFrameworkExtras) safari_isSafariViewServiceBundle];
  }

  return safari_isSafariViewServiceBundle_isSafariViewService;
}

@end