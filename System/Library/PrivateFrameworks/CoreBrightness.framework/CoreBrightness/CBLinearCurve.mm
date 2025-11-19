@interface CBLinearCurve
+ (id)sharedInstance;
@end

@implementation CBLinearCurve

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, &__block_literal_global_3);
  }

  return sharedInstance_sharedObject;
}

uint64_t __31__CBLinearCurve_sharedInstance__block_invoke()
{
  result = objc_opt_new();
  sharedInstance_sharedObject = result;
  return result;
}

@end