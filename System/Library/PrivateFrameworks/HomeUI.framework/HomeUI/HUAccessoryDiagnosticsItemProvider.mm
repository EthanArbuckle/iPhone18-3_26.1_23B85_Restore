@interface HUAccessoryDiagnosticsItemProvider
- (HUAccessoryDiagnosticsItemManager)itemManager;
- (HUAccessoryDiagnosticsItemProvider)initWithItemManager:(id)manager;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUAccessoryDiagnosticsItemProvider

- (HUAccessoryDiagnosticsItemProvider)initWithItemManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = HUAccessoryDiagnosticsItemProvider;
  v5 = [(HFItemProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_itemManager, managerCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    diagnosticItems = v6->_diagnosticItems;
    v6->_diagnosticItems = v7;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HUAccessoryDiagnosticsItemProvider);
  diagnosticItems = [(HUAccessoryDiagnosticsItemProvider *)self diagnosticItems];
  [(HUAccessoryDiagnosticsItemProvider *)v4 setDiagnosticItems:diagnosticItems];

  return v4;
}

- (id)reloadItems
{
  itemManager = [(HUAccessoryDiagnosticsItemProvider *)self itemManager];
  availableLogs = [itemManager availableLogs];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__HUAccessoryDiagnosticsItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DBA038;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v6 = [(HFItemProvider *)self reloadItemsWithObjects:availableLogs keyAdaptor:&__block_literal_global_50 itemAdaptor:&__block_literal_global_6 filter:0 itemMap:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HUAccessoryDiagnosticsItemProvider_reloadItems__block_invoke_4;
  v9[3] = &unk_277DB7FA8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

id __49__HUAccessoryDiagnosticsItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D142B8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) itemManager];
  v7 = [v6 sourceAccessory];
  v8 = [v5 initWithLogMetadata:v4 accessory:v7];

  return v8;
}

id __49__HUAccessoryDiagnosticsItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained diagnosticItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained diagnosticItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUAccessoryDiagnosticsItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B68];
  v8[0] = *MEMORY[0x277D13B28];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [invalidationReasons setByAddingObjectsFromArray:v4];

  return v5;
}

- (HUAccessoryDiagnosticsItemManager)itemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_itemManager);

  return WeakRetained;
}

@end