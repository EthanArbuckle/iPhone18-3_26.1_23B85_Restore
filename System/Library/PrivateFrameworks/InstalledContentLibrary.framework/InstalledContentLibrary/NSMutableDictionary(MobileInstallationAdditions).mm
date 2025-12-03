@interface NSMutableDictionary(MobileInstallationAdditions)
+ (id)MI_dictionaryWithContentsOfURL:()MobileInstallationAdditions options:error:;
@end

@implementation NSMutableDictionary(MobileInstallationAdditions)

+ (id)MI_dictionaryWithContentsOfURL:()MobileInstallationAdditions options:error:
{
  v6.receiver = self;
  v6.super_class = &off_1F2895B28;
  v4 = objc_msgSendSuper2(&v6, sel_MI_dictionaryWithContentsOfURL_options_error_, a3, a4 | 1);

  return v4;
}

@end