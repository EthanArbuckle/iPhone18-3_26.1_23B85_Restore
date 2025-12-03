@interface HFDiscoveredAccessoryItemProvider
- (HFDiscoveredAccessoryItemProvider)init;
- (HFDiscoveredAccessoryItemProvider)initWithAccessoryBrowsingManager:(id)manager;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFDiscoveredAccessoryItemProvider

- (HFDiscoveredAccessoryItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessoryBrowsingManager_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFDiscoveredAccessoryItemProvider.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HFDiscoveredAccessoryItemProvider init]", v5}];

  return 0;
}

- (HFDiscoveredAccessoryItemProvider)initWithAccessoryBrowsingManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = HFDiscoveredAccessoryItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryBrowsingManager, manager);
    v8 = [MEMORY[0x277CBEB58] set];
    discoveredAccessoryItems = v7->_discoveredAccessoryItems;
    v7->_discoveredAccessoryItems = v8;
  }

  return v7;
}

- (id)reloadItems
{
  accessoryBrowsingManager = [(HFDiscoveredAccessoryItemProvider *)self accessoryBrowsingManager];
  discoveredHMAccessories = [accessoryBrowsingManager discoveredHMAccessories];
  v5 = [discoveredHMAccessories na_map:&__block_literal_global_12_10];

  accessoryBrowsingManager2 = [(HFDiscoveredAccessoryItemProvider *)self accessoryBrowsingManager];
  discoveredSharingDevices = [accessoryBrowsingManager2 discoveredSharingDevices];
  v8 = [discoveredSharingDevices na_map:&__block_literal_global_15_10];
  v9 = [v5 arrayByAddingObjectsFromArray:v8];

  objc_initWeak(&location, self);
  filter = [(HFDiscoveredAccessoryItemProvider *)self filter];
  v11 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v9 filter:filter itemMap:&__block_literal_global_213];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__HFDiscoveredAccessoryItemProvider_reloadItems__block_invoke_16;
  v14[3] = &unk_277DF30B8;
  objc_copyWeak(&v15, &location);
  v12 = [v11 flatMap:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);

  return v12;
}

HFDiscoveredAccessoryItem *__48__HFDiscoveredAccessoryItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HFDiscoveredAccessoryItem alloc];
  v4 = objc_opt_class();
  v5 = v2;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  v10 = [(HFDiscoveredAccessoryItem *)v3 initWithDiscoveredAccessory:v7];

  return v10;
}

HFDiscoveredAccessory *__48__HFDiscoveredAccessoryItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HFDiscoveredAccessory alloc] initWithAccessory:v2];

  return v3;
}

HFDiscoveredAccessory *__48__HFDiscoveredAccessoryItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 deviceActionType];
  v4 = v3 == 33 || v3 == 11;
  if (v4 && ([v2 needsSetup] & 1) != 0)
  {
    v5 = [[HFDiscoveredAccessory alloc] initWithSharingDevice:v2];
  }

  else
  {
    v6 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v2;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Not showing SFDevice because it doesn't have the right type, or it doesn't need setup: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

id __48__HFDiscoveredAccessoryItemProvider_reloadItems__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained discoveredAccessoryItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained discoveredAccessoryItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFDiscoveredAccessoryItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"accessory"];

  return v3;
}

@end