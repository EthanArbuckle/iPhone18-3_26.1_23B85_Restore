@interface HUMediaServiceItem
- (HUMediaServiceItem)init;
- (HUMediaServiceItem)initWithMediaService:(id)service home:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUMediaServiceItem

- (HUMediaServiceItem)initWithMediaService:(id)service home:(id)home
{
  serviceCopy = service;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HUMediaServiceItem;
  v9 = [(HUMediaServiceItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaService, service);
    objc_storeStrong(&v10->_home, home);
  }

  return v10;
}

- (HUMediaServiceItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaService_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMediaServiceItem.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HUMediaServiceItem init]", v5}];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  mEMORY[0x277D14820] = [MEMORY[0x277D14820] sharedManager];
  home = [(HUMediaServiceItem *)self home];
  v6 = [mEMORY[0x277D14820] mediaServicesForHome:home];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __50__HUMediaServiceItem__subclass_updateWithOptions___block_invoke;
  v23[3] = &unk_277DBDCC0;
  v23[4] = self;
  v7 = [v6 na_firstObjectPassingTest:v23];
  if (v7)
  {
    [(HUMediaServiceItem *)self setMediaService:v7];
  }

  v8 = objc_opt_new();
  mediaService = [(HUMediaServiceItem *)self mediaService];
  serviceName = [mediaService serviceName];
  v11 = [serviceName copy];
  [v8 na_safeSetObject:v11 forKey:*MEMORY[0x277D13F60]];

  mEMORY[0x277D14820]2 = [MEMORY[0x277D14820] sharedManager];
  home2 = [(HUMediaServiceItem *)self home];
  v14 = [mEMORY[0x277D14820]2 defaultMediaServiceForHome:home2];

  v15 = MEMORY[0x277CCABB0];
  mediaService2 = [(HUMediaServiceItem *)self mediaService];
  bundleIdentifier = [mediaService2 bundleIdentifier];
  bundleIdentifier2 = [v14 bundleIdentifier];
  v19 = [v15 numberWithBool:{objc_msgSend(bundleIdentifier, "isEqualToString:", bundleIdentifier2)}];
  [v8 na_safeSetObject:v19 forKey:*MEMORY[0x277D13FE8]];

  [v8 na_safeSetObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D13F10]];
  v20 = [objc_alloc(MEMORY[0x277D14858]) initWithResults:v8];
  v21 = [MEMORY[0x277D2C900] futureWithResult:v20];

  return v21;
}

uint64_t __50__HUMediaServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mediaService];
  v5 = [v4 bundleIdentifier];
  v6 = [v3 bundleIdentifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mediaService = [(HUMediaServiceItem *)self mediaService];
  home = [(HUMediaServiceItem *)self home];
  v7 = [v4 initWithMediaService:mediaService home:home];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

@end