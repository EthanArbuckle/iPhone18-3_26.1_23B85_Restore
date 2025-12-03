@interface HUGuestsPinCodesItemManager
- (HUGuestsPinCodesItemManager)initWithDelegate:(id)delegate;
- (HUGuestsPinCodesItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUGuestsPinCodesItemManager)initWithPinCodeManager:(id)manager delegate:(id)delegate;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUGuestsPinCodesItemManager

- (HUGuestsPinCodesItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithPinCodeManager_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUGuestsPinCodesItemManager.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUGuestsPinCodesItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUGuestsPinCodesItemManager)initWithDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithPinCodeManager_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUGuestsPinCodesItemManager.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HUGuestsPinCodesItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUGuestsPinCodesItemManager)initWithPinCodeManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = HUGuestsPinCodesItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pinCodeManager, manager);
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v17[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_alloc(MEMORY[0x277D14CA0]);
  pinCodeManager = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  home = [pinCodeManager home];
  v8 = [v5 initWithHome:home];
  [(HUGuestsPinCodesItemManager *)self setUserItemProvider:v8];

  userItemProvider = [(HUGuestsPinCodesItemManager *)self userItemProvider];
  [userItemProvider setIncludeGuestUsers:1];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v15, &location);
  v10 = [(HUGuestsPinCodesItemManager *)self userItemProvider:v14];
  [v10 setFilter:&v14];

  userItemProvider2 = [(HUGuestsPinCodesItemManager *)self userItemProvider];
  v17[0] = userItemProvider2;
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

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v20[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = objc_opt_new();
    userItemProvider = [(HUGuestsPinCodesItemManager *)self userItemProvider];
    items = [userItemProvider items];
    allObjects = [items allObjects];
    [v5 addObjectsFromArray:allObjects];

    guestsListModule = [(HUGuestsPinCodesItemManager *)self guestsListModule];
    v10 = [guestsListModule buildSectionsWithDisplayedItems:itemsCopy];

    v11 = [v10 na_flatMap:&__block_literal_global_111];
    [v5 addObjectsFromArray:v11];

    otherEcosystemListModule = [(HUGuestsPinCodesItemManager *)self otherEcosystemListModule];
    v13 = [otherEcosystemListModule buildSectionsWithDisplayedItems:itemsCopy];

    v14 = [v13 na_flatMap:&__block_literal_global_13_0];
    [v5 addObjectsFromArray:v14];

    v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUGuestsSections"];
    [v15 setItems:v5];
    v16 = MEMORY[0x277D14778];
    v20[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v18 = [v16 filterSections:v17 toDisplayedItems:itemsCopy];
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  return v18;
}

- (id)_buildItemModulesForHome:(id)home
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14928];
  homeCopy = home;
  v6 = [v4 alloc];
  pinCodeManager = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  v8 = [v6 initWithItemUpdater:self pinCodeManager:pinCodeManager listType:2 home:homeCopy forAccessory:0];
  [(HUGuestsPinCodesItemManager *)self setGuestsListModule:v8];

  v9 = objc_alloc(MEMORY[0x277D14928]);
  pinCodeManager2 = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  v11 = [v9 initWithItemUpdater:self pinCodeManager:pinCodeManager2 listType:4 home:homeCopy forAccessory:0];

  [(HUGuestsPinCodesItemManager *)self setOtherEcosystemListModule:v11];
  guestsListModule = [(HUGuestsPinCodesItemManager *)self guestsListModule];
  v16[0] = guestsListModule;
  otherEcosystemListModule = [(HUGuestsPinCodesItemManager *)self otherEcosystemListModule];
  v16[1] = otherEcosystemListModule;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  return v14;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUGuestsPinCodesItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  pinCodeManager = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  [pinCodeManager addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUGuestsPinCodesItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  pinCodeManager = [(HUGuestsPinCodesItemManager *)self pinCodeManager];
  [pinCodeManager removeObserver:self];
}

@end