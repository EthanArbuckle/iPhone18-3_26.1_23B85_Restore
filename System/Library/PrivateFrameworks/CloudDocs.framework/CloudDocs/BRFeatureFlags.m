@interface BRFeatureFlags
+ (BOOL)requestForAccessEnabled;
@end

@implementation BRFeatureFlags

+ (BOOL)requestForAccessEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = +[BRRuntimeBehavior isInternalBuild];
  }

  return v2;
}

@end