@interface CALNDefaultTravelAdvisoryAuthority
+ (CALNDefaultTravelAdvisoryAuthority)sharedInstance;
- (BOOL)doesHypothesisSatisfyMinimumAllowableTravelTime:(id)a3;
@end

@implementation CALNDefaultTravelAdvisoryAuthority

+ (CALNDefaultTravelAdvisoryAuthority)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CALNDefaultTravelAdvisoryAuthority_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __52__CALNDefaultTravelAdvisoryAuthority_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)doesHypothesisSatisfyMinimumAllowableTravelTime:(id)a3
{
  v4 = MEMORY[0x277CF7CE0];
  v5 = a3;
  [(CALNDefaultTravelAdvisoryAuthority *)self minimumAllowableTravelTime];
  LOBYTE(self) = [v4 doesHypothesisSatisfyMinimumAllowableTravelTime:v5 minimumAllowableTravelTime:?];

  return self;
}

@end