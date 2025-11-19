@interface HMDPersonSettingsManagerDependencyFactory
- (HMDFileManager)fileManager;
- (HMDPersistentStore)persistentStore;
@end

@implementation HMDPersonSettingsManagerDependencyFactory

- (HMDPersistentStore)persistentStore
{
  v2 = objc_alloc_init(HMDPersistentStore);

  return v2;
}

- (HMDFileManager)fileManager
{
  v2 = objc_alloc_init(HMDFileManager);

  return v2;
}

@end