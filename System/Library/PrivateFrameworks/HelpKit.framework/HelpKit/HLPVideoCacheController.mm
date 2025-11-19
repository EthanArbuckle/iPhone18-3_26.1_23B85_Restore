@interface HLPVideoCacheController
+ (id)sharedInstance;
- (id)newDataCache;
@end

@implementation HLPVideoCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_5 != -1)
  {
    +[HLPVideoCacheController sharedInstance];
  }

  v3 = sharedInstance_gHLPVideoCacheController;

  return v3;
}

uint64_t __41__HLPVideoCacheController_sharedInstance__block_invoke()
{
  v0 = [(HLPDataCacheController *)[HLPVideoCacheController alloc] initWithIdentifier:@"HLPVideoCacheIdentifier" directoryName:@"com.apple.helpkit.Videos" maxCacheSize:52428800 URLSessionDataType:5];
  v1 = sharedInstance_gHLPVideoCacheController;
  sharedInstance_gHLPVideoCacheController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)newDataCache
{
  v2 = objc_alloc_init(HLPDataCache);
  [(HLPDataCache *)v2 setCacheType:4];
  [(HLPDataCache *)v2 setMaxAge:345600];
  return v2;
}

@end