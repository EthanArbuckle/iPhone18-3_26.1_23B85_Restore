@interface CALNSyntheticRouteHypothesizerProvider
+ (CALNSyntheticRouteHypothesizerProvider)sharedInstance;
- (CALNSyntheticRouteHypothesizerProvider)init;
- (id)hypothesizerForPlannedDestination:(id)a3;
- (void)createdRouteHypothesizer:(id)a3 forEventExternalURL:(id)a4;
- (void)removedRouteHypothesizerForEventExternalURL:(id)a3;
@end

@implementation CALNSyntheticRouteHypothesizerProvider

+ (CALNSyntheticRouteHypothesizerProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CALNSyntheticRouteHypothesizerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v3 = [MEMORY[0x277CF7108] sharedInstance];
    syntheticRouteHypothesizerCache = v2->_syntheticRouteHypothesizerCache;
    v2->_syntheticRouteHypothesizerCache = v3;
  }

  return v2;
}

- (id)hypothesizerForPlannedDestination:(id)a3
{
  v3 = objc_alloc_init(CALNSyntheticRouteHypothesizer);

  return v3;
}

- (void)createdRouteHypothesizer:(id)a3 forEventExternalURL:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 conformsToProtocol:&unk_285534140])
  {
    v7 = v9;
    v8 = [(CALNSyntheticRouteHypothesizerProvider *)self syntheticRouteHypothesizerCache];
    [v8 addSyntheticRouteHypothesizer:v7 forEventExternalURL:v6];
  }
}

- (void)removedRouteHypothesizerForEventExternalURL:(id)a3
{
  v4 = a3;
  v5 = [(CALNSyntheticRouteHypothesizerProvider *)self syntheticRouteHypothesizerCache];
  [v5 removeSyntheticRouteHypothesizerForEventExternalURL:v4];
}

@end