@interface CALNCUIKTravelAdvisoryDescriptionGenerator
+ (CALNCUIKTravelAdvisoryDescriptionGenerator)sharedInstance;
@end

@implementation CALNCUIKTravelAdvisoryDescriptionGenerator

+ (CALNCUIKTravelAdvisoryDescriptionGenerator)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CALNCUIKTravelAdvisoryDescriptionGenerator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_12 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_12, block);
  }

  v2 = sharedInstance_sharedInstance_9;

  return v2;
}

uint64_t __60__CALNCUIKTravelAdvisoryDescriptionGenerator_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_9 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end