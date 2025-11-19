@interface UIDevice(MobileSafariExtras)
+ (uint64_t)safari_mainScreenClass;
@end

@implementation UIDevice(MobileSafariExtras)

+ (uint64_t)safari_mainScreenClass
{
  if (safari_mainScreenClass_onceToken != -1)
  {
    +[UIDevice(MobileSafariExtras) safari_mainScreenClass];
  }

  return safari_mainScreenClass_mainScreenClass;
}

@end