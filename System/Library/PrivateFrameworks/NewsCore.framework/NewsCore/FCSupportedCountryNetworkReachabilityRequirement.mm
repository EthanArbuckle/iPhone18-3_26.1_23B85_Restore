@interface FCSupportedCountryNetworkReachabilityRequirement
- (FCNetworkReachabilityRequirementObserving)observer;
- (FCSupportedCountryNetworkReachabilityRequirement)init;
- (void)_update;
@end

@implementation FCSupportedCountryNetworkReachabilityRequirement

- (FCSupportedCountryNetworkReachabilityRequirement)init
{
  v6.receiver = self;
  v6.super_class = FCSupportedCountryNetworkReachabilityRequirement;
  v2 = [(FCSupportedCountryNetworkReachabilityRequirement *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(FCSupportedCountryNetworkReachabilityRequirement *)v2 _update];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__update name:*MEMORY[0x1E69A1620] object:0];
  }

  return v3;
}

- (void)_update
{
  v3 = +[FCGeoUtilities isRunningInSupportedRegion];
  satisfied = self->_satisfied;
  self->_satisfied = v3;
  if (satisfied != v3)
  {
    observer = [(FCSupportedCountryNetworkReachabilityRequirement *)self observer];
    [observer networkReachabilityRequirementDidBecomeDirty:self];
  }
}

- (FCNetworkReachabilityRequirementObserving)observer
{
  WeakRetained = objc_loadWeakRetained(&self->observer);

  return WeakRetained;
}

@end