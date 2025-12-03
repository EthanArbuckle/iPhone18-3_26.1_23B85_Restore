@interface CALNGEORouteHypothesizerProvider
+ (CALNGEORouteHypothesizerProvider)sharedInstance;
- (id)hypothesizerForPlannedDestination:(id)destination;
@end

@implementation CALNGEORouteHypothesizerProvider

+ (CALNGEORouteHypothesizerProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CALNGEORouteHypothesizerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5, block);
  }

  v2 = sharedInstance_sharedInstance_4;

  return v2;
}

uint64_t __50__CALNGEORouteHypothesizerProvider_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_4 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)hypothesizerForPlannedDestination:(id)destination
{
  v3 = [MEMORY[0x277D0ECE8] hypothesizerForPlannedDestination:destination];
  v4 = [[CALNGEORouteHypothesizer alloc] initWithRouteHypothesizer:v3];

  return v4;
}

@end