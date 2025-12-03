@interface FBSApplicationUninstallOptions
+ (id)userInitiated;
@end

@implementation FBSApplicationUninstallOptions

+ (id)userInitiated
{
  v2 = objc_alloc_init(self);
  [v2 setUserInitiated:1];

  return v2;
}

@end