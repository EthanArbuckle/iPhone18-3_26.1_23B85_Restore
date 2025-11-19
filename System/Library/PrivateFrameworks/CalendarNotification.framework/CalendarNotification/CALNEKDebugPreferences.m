@interface CALNEKDebugPreferences
+ (CALNEKDebugPreferences)sharedInstance;
- (BOOL)forceDisplayOfNewTravelAdvisoryHypotheses;
@end

@implementation CALNEKDebugPreferences

+ (CALNEKDebugPreferences)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CALNEKDebugPreferences_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_15 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_15, block);
  }

  v2 = sharedInstance_sharedInstance_12;

  return v2;
}

uint64_t __40__CALNEKDebugPreferences_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_12 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)forceDisplayOfNewTravelAdvisoryHypotheses
{
  v2 = [MEMORY[0x277CC5A18] shared];
  v3 = [v2 forceDisplayOfNewTravelAdvisoryHypotheses];

  return v3;
}

@end