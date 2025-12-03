@interface CALNMSMailAccounts
+ (CALNMSMailAccounts)sharedInstance;
@end

@implementation CALNMSMailAccounts

+ (CALNMSMailAccounts)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CALNMSMailAccounts_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_20 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_20, block);
  }

  v2 = sharedInstance_sharedInstance_17;

  return v2;
}

uint64_t __36__CALNMSMailAccounts_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_17 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end