@interface HUGuestsPinCodesItemManager
- (HUGuestsPinCodesItemManager)initWithDelegate:(id)a3;
- (HUGuestsPinCodesItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUGuestsPinCodesItemManager)initWithPinCodeManager:(id)a3 delegate:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUGuestsPinCodesItemManager

- (HUGuestsPinCodesItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithPinCodeManager_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUGuestsPinCodesItemManager.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUGuestsPinCodesItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUGuestsPinCodesItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithPinCodeManager_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUGuestsPinCodesItemManager.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HUGuestsPinCodesItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUGuestsPinCodesItemManager)initWithPinCodeManager:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUGuestsPinCodesItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a4 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pinCodeManager, a3);
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D14CA0]);
  v6 = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  v7 = [v6 home];
  v8 = [v5 initWithHome:v7];
  [(HUGuestsPinCodesItemManager *)self setUserItemProvider:v8];

  v9 = [(HUGuestsPinCodesItemManager *)self userItemProvider];
  [v9 setIncludeGuestUsers:1];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v15, &location);
  v10 = [(HUGuestsPinCodesItemManager *)self userItemProvider:v14];
  [v10 setFilter:&v14];

  v11 = [(HUGuestsPinCodesItemManager *)self userItemProvider];
  v17[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v12;
}

uint64_t __58__HUGuestsPinCodesItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [WeakRetained home];
  v9 = [v8 hf_userIsRestrictedGuest:v7];

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v6 = [(HUGuestsPinCodesItemManager *)self userItemProvider];
    v7 = [v6 items];
    v8 = [v7 allObjects];
    [v5 addObjectsFromArray:v8];

    v9 = [(HUGuestsPinCodesItemManager *)self guestsListModule];
    v10 = [v9 buildSectionsWithDisplayedItems:v4];

    v11 = [v10 na_flatMap:&__block_literal_global_111];
    [v5 addObjectsFromArray:v11];

    v12 = [(HUGuestsPinCodesItemManager *)self otherEcosystemListModule];
    v13 = [v12 buildSectionsWithDisplayedItems:v4];

    v14 = [v13 na_flatMap:&__block_literal_global_13_0];
    [v5 addObjectsFromArray:v14];

    v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUGuestsSections"];
    [v15 setItems:v5];
    v16 = MEMORY[0x277D14778];
    v20[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v18 = [v16 filterSections:v17 toDisplayedItems:v4];
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  return v18;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14928];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  v8 = [v6 initWithItemUpdater:self pinCodeManager:v7 listType:2 home:v5 forAccessory:0];
  [(HUGuestsPinCodesItemManager *)self setGuestsListModule:v8];

  v9 = objc_alloc(MEMORY[0x277D14928]);
  v10 = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  v11 = [v9 initWithItemUpdater:self pinCodeManager:v10 listType:4 home:v5 forAccessory:0];

  [(HUGuestsPinCodesItemManager *)self setOtherEcosystemListModule:v11];
  v12 = [(HUGuestsPinCodesItemManager *)self guestsListModule];
  v16[0] = v12;
  v13 = [(HUGuestsPinCodesItemManager *)self otherEcosystemListModule];
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  return v14;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUGuestsPinCodesItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  [v3 addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUGuestsPinCodesItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  [v3 removeObserver:self];
}

@end