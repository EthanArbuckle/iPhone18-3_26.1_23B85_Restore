@interface CALNEKTTLEventTracker
+ (CALNEKTTLEventTracker)sharedInstance;
@end

@implementation CALNEKTTLEventTracker

+ (CALNEKTTLEventTracker)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CALNEKTTLEventTracker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __39__CALNEKTTLEventTracker_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end