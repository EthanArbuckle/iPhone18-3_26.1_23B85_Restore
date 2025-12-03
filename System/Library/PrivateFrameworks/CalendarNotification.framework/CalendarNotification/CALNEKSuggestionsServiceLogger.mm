@interface CALNEKSuggestionsServiceLogger
+ (CALNEKSuggestionsServiceLogger)sharedInstance;
@end

@implementation CALNEKSuggestionsServiceLogger

+ (CALNEKSuggestionsServiceLogger)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CALNEKSuggestionsServiceLogger_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_6 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6, block);
  }

  v2 = sharedInstance_sharedInstance_5;

  return v2;
}

uint64_t __48__CALNEKSuggestionsServiceLogger_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_5 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end