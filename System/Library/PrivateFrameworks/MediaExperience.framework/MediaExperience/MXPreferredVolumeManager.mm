@interface MXPreferredVolumeManager
+ (id)sharedInstance;
- (MXPreferredVolumeManager)init;
- (void)dealloc;
@end

@implementation MXPreferredVolumeManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[MXPreferredVolumeManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_12;
}

MXPreferredVolumeManager *__42__MXPreferredVolumeManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXPreferredVolumeManager);
  sharedInstance_sSharedInstance_12 = result;
  return result;
}

- (MXPreferredVolumeManager)init
{
  v3.receiver = self;
  v3.super_class = MXPreferredVolumeManager;
  return [(MXPreferredVolumeManager *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MXPreferredVolumeManager;
  [(MXPreferredVolumeManager *)&v2 dealloc];
}

@end