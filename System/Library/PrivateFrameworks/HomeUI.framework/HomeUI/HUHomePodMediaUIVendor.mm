@interface HUHomePodMediaUIVendor
+ (id)sharedInstance;
@end

@implementation HUHomePodMediaUIVendor

+ (id)sharedInstance
{
  if (qword_281121EE8 != -1)
  {
    dispatch_once(&qword_281121EE8, &__block_literal_global_88);
  }

  v3 = _MergedGlobals_619;

  return v3;
}

void __40__HUHomePodMediaUIVendor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HUHomePodMediaUIVendor);
  v1 = _MergedGlobals_619;
  _MergedGlobals_619 = v0;
}

@end