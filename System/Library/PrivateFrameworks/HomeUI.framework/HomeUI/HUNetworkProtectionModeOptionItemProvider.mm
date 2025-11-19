@interface HUNetworkProtectionModeOptionItemProvider
- (HUNetworkProtectionModeOptionItemProvider)init;
- (HUNetworkProtectionModeOptionItemProvider)initWithGroup:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reloadItems;
@end

@implementation HUNetworkProtectionModeOptionItemProvider

- (HUNetworkProtectionModeOptionItemProvider)initWithGroup:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUNetworkProtectionModeOptionItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_group, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    networkProtectionModeOptionItems = v7->_networkProtectionModeOptionItems;
    v7->_networkProtectionModeOptionItems = v8;
  }

  return v7;
}

- (HUNetworkProtectionModeOptionItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithGroup_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUNetworkProtectionModeOptionItemProvider.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkProtectionModeOptionItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUNetworkProtectionModeOptionItemProvider *)self group];
  v6 = [v4 initWithGroup:v5];

  return v6;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HUNetworkProtectionModeOptionItemProvider_reloadItems__block_invoke_3;
  v8[3] = &unk_277DBCD50;
  objc_copyWeak(&v9, &location);
  v3 = [(HFItemProvider *)self reloadItemsWithObjects:&unk_282492BD0 keyAdaptor:&__block_literal_global_104 itemAdaptor:&__block_literal_global_15_0 filter:0 itemMap:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HUNetworkProtectionModeOptionItemProvider_reloadItems__block_invoke_4;
  v6[3] = &unk_277DB7FA8;
  objc_copyWeak(&v7, &location);
  v4 = [v3 flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v4;
}

uint64_t __56__HUNetworkProtectionModeOptionItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 targetProtectionModeOption];

  return [v2 numberWithInteger:v3];
}

HUNetworkProtectionModeOptionItem *__56__HUNetworkProtectionModeOptionItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HUNetworkProtectionModeOptionItem alloc];
  v6 = [WeakRetained group];
  v7 = [v3 unsignedIntegerValue];

  v8 = [(HUNetworkProtectionModeOptionItem *)v5 initWithGroup:v6 targetProtectionModeOption:v7];

  return v8;
}

id __56__HUNetworkProtectionModeOptionItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained networkProtectionModeOptionItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained networkProtectionModeOptionItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

@end