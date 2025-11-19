@interface SecureMobileAssetExclaveManager
+ (id)sharedInstance;
@end

@implementation SecureMobileAssetExclaveManager

+ (id)sharedInstance
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sharedInstance_manager)
  {
    v3 = [[_TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager alloc] initWithConclave:1];
    v4 = sharedInstance_manager;
    sharedInstance_manager = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedInstance_manager;

  return v5;
}

@end