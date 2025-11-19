@interface CSUserSessionActiveMonitor
+ (id)sharedInstance;
@end

@implementation CSUserSessionActiveMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9196 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9196, &__block_literal_global_9197);
  }

  v3 = sharedInstance_sharedInstance_9198;

  return v3;
}

uint64_t __44__CSUserSessionActiveMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSUserSessionActiveMonitor);
  v1 = sharedInstance_sharedInstance_9198;
  sharedInstance_sharedInstance_9198 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end