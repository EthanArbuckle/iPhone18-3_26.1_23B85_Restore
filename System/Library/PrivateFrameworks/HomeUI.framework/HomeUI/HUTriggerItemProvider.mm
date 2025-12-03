@interface HUTriggerItemProvider
- (HUTriggerItemProvider)init;
- (HUTriggerItemProvider)initWithHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUTriggerItemProvider

- (HUTriggerItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerItemProvider.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerItemProvider init]", v5}];

  return 0;
}

- (HUTriggerItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUTriggerItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v7->_usesRichIconDescriptors = 0;
    v8 = [MEMORY[0x277CBEB58] set];
    triggerItems = v7->_triggerItems;
    v7->_triggerItems = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HUTriggerItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__HUTriggerItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DB7F08;
  objc_copyWeak(&v13, &location);
  v3 = _Block_copy(aBlock);
  home = [(HUTriggerItemProvider *)self home];
  triggers = [home triggers];
  filter = [(HUTriggerItemProvider *)self filter];
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:triggers filter:filter itemMap:v3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__HUTriggerItemProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DB7FA8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

HUTriggerItem *__36__HUTriggerItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HUTriggerItem alloc];
  v6 = [WeakRetained home];
  v7 = [(HUTriggerItem *)v5 initWithHome:v6 trigger:v3];

  return v7;
}

id __36__HUTriggerItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 addedItems];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__HUTriggerItemProvider_reloadItems__block_invoke_3;
  v12[3] = &unk_277DC1958;
  v12[4] = WeakRetained;
  [v5 na_each:v12];

  v6 = [WeakRetained triggerItems];
  v7 = [v3 addedItems];
  [v6 unionSet:v7];

  v8 = [WeakRetained triggerItems];
  v9 = [v3 removedItems];
  [v8 minusSet:v9];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v10;
}

void __36__HUTriggerItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setUsesRichIconDescriptors:{objc_msgSend(v2, "usesRichIconDescriptors")}];
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUTriggerItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B30];
  v8[0] = *MEMORY[0x277D13B80];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [invalidationReasons setByAddingObjectsFromArray:v4];

  return v5;
}

@end