@interface FBSApplicationUninstallOptions
+ (id)userInitiated;
@end

@implementation FBSApplicationUninstallOptions

+ (id)userInitiated
{
  v2 = objc_alloc_init(a1);
  [v2 setUserInitiated:1];

  return v2;
}

@end