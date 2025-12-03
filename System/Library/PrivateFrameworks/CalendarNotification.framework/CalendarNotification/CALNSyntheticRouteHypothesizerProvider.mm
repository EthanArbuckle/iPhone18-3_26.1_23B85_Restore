@interface CALNSyntheticRouteHypothesizerProvider
+ (CALNSyntheticRouteHypothesizerProvider)sharedInstance;
- (CALNSyntheticRouteHypothesizerProvider)init;
- (id)hypothesizerForPlannedDestination:(id)destination;
- (void)createdRouteHypothesizer:(id)hypothesizer forEventExternalURL:(id)l;
- (void)removedRouteHypothesizerForEventExternalURL:(id)l;
@end

@implementation CALNSyntheticRouteHypothesizerProvider

+ (CALNSyntheticRouteHypothesizerProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CALNSyntheticRouteHypothesizerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

uint64_t __56__CALNSyntheticRouteHypothesizerProvider_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_2 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CALNSyntheticRouteHypothesizerProvider)init
{
  v6.receiver = self;
  v6.super_class = CALNSyntheticRouteHypothesizerProvider;
  v2 = [(CALNSyntheticRouteHypothesizerProvider *)&v6 init];
  if (v2)
  {
    mEMORY[0x277CF7108] = [MEMORY[0x277CF7108] sharedInstance];
    syntheticRouteHypothesizerCache = v2->_syntheticRouteHypothesizerCache;
    v2->_syntheticRouteHypothesizerCache = mEMORY[0x277CF7108];
  }

  return v2;
}

- (id)hypothesizerForPlannedDestination:(id)destination
{
  v3 = objc_alloc_init(CALNSyntheticRouteHypothesizer);

  return v3;
}

- (void)createdRouteHypothesizer:(id)hypothesizer forEventExternalURL:(id)l
{
  hypothesizerCopy = hypothesizer;
  lCopy = l;
  if ([hypothesizerCopy conformsToProtocol:&unk_285534140])
  {
    v7 = hypothesizerCopy;
    syntheticRouteHypothesizerCache = [(CALNSyntheticRouteHypothesizerProvider *)self syntheticRouteHypothesizerCache];
    [syntheticRouteHypothesizerCache addSyntheticRouteHypothesizer:v7 forEventExternalURL:lCopy];
  }
}

- (void)removedRouteHypothesizerForEventExternalURL:(id)l
{
  lCopy = l;
  syntheticRouteHypothesizerCache = [(CALNSyntheticRouteHypothesizerProvider *)self syntheticRouteHypothesizerCache];
  [syntheticRouteHypothesizerCache removeSyntheticRouteHypothesizerForEventExternalURL:lCopy];
}

@end