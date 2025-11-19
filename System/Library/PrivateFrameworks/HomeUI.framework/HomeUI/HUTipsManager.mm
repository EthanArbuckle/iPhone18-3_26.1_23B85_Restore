@interface HUTipsManager
+ (id)sharedManager;
- (void)donateAppLaunchEvent;
- (void)warmUp;
@end

@implementation HUTipsManager

+ (id)sharedManager
{
  if (qword_281121FF8 != -1)
  {
    dispatch_once(&qword_281121FF8, &__block_literal_global_193);
  }

  v3 = _MergedGlobals_631;

  return v3;
}

void __30__HUTipsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HUTipsManager);
  v1 = _MergedGlobals_631;
  _MergedGlobals_631 = v0;
}

- (void)warmUp
{
  v2 = +[HUTipsManager_Swift sharedManager];
  [v2 warmUp];
}

- (void)donateAppLaunchEvent
{
  v2 = +[HUTipsManager_Swift sharedManager];
  [v2 donateAppLaunchEvent];
}

@end