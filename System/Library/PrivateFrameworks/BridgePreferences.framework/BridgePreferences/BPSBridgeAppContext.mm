@interface BPSBridgeAppContext
+ (id)shared;
@end

@implementation BPSBridgeAppContext

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[BPSBridgeAppContext shared];
  }

  v3 = shared_sharedInstance;

  return v3;
}

uint64_t __29__BPSBridgeAppContext_shared__block_invoke()
{
  shared_sharedInstance = objc_alloc_init(BPSBridgeAppContext);

  return MEMORY[0x2821F96F8]();
}

@end