@interface HUMediaServiceItem
- (HUMediaServiceItem)init;
- (HUMediaServiceItem)initWithMediaService:(id)a3 home:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUMediaServiceItem

- (HUMediaServiceItem)initWithMediaService:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUMediaServiceItem;
  v9 = [(HUMediaServiceItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaService, a3);
    objc_storeStrong(&v10->_home, a4);
  }

  return v10;
}

- (HUMediaServiceItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaService_home_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUMediaServiceItem.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HUMediaServiceItem init]", v5}];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277D14820] sharedManager];
  v5 = [(HUMediaServiceItem *)self home];
  v6 = [v4 mediaServicesForHome:v5];

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
  v9 = [(HUMediaServiceItem *)self mediaService];
  v10 = [v9 serviceName];
  v11 = [v10 copy];
  [v8 na_safeSetObject:v11 forKey:*MEMORY[0x277D13F60]];

  v12 = [MEMORY[0x277D14820] sharedManager];
  v13 = [(HUMediaServiceItem *)self home];
  v14 = [v12 defaultMediaServiceForHome:v13];

  v15 = MEMORY[0x277CCABB0];
  v16 = [(HUMediaServiceItem *)self mediaService];
  v17 = [v16 bundleIdentifier];
  v18 = [v14 bundleIdentifier];
  v19 = [v15 numberWithBool:{objc_msgSend(v17, "isEqualToString:", v18)}];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUMediaServiceItem *)self mediaService];
  v6 = [(HUMediaServiceItem *)self home];
  v7 = [v4 initWithMediaService:v5 home:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

@end