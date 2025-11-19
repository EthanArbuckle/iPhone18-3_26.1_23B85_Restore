@interface HLPFileCacheController
+ (id)sharedInstance;
- (id)newDataCache;
@end

@implementation HLPFileCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_6 != -1)
  {
    +[HLPFileCacheController sharedInstance];
  }

  v3 = sharedInstance_gHLPFileCacheController;

  return v3;
}

uint64_t __40__HLPFileCacheController_sharedInstance__block_invoke()
{
  v0 = [(HLPDataCacheController *)[HLPFileCacheController alloc] initWithIdentifier:@"HLPStringCacheIdentifier" directoryName:@"com.apple.helpkit.String" maxCacheSize:3145728 URLSessionDataType:2];
  v1 = sharedInstance_gHLPFileCacheController;
  sharedInstance_gHLPFileCacheController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)newDataCache
{
  v2 = objc_alloc_init(HLPDataCache);
  [(HLPDataCache *)v2 setCacheType:0];
  [(HLPDataCache *)v2 setMaxAge:84600];
  return v2;
}

@end