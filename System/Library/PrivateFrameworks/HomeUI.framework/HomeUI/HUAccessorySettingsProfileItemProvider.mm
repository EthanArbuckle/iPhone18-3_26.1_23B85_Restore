@interface HUAccessorySettingsProfileItemProvider
- (HUAccessorySettingsProfileItemProvider)initWithAdapter:(id)adapter settingGroup:(id)group;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
@end

@implementation HUAccessorySettingsProfileItemProvider

- (HUAccessorySettingsProfileItemProvider)initWithAdapter:(id)adapter settingGroup:(id)group
{
  adapterCopy = adapter;
  groupCopy = group;
  if (groupCopy)
  {
    if (adapterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileItemProvider.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"settingGroup"}];

    if (adapterCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileItemProvider.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"adapter"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = HUAccessorySettingsProfileItemProvider;
  v10 = [(HFItemProvider *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_settingGroup, group);
    v12 = objc_opt_new();
    accessorySettingsProfileItems = v11->_accessorySettingsProfileItems;
    v11->_accessorySettingsProfileItems = v12;

    objc_storeStrong(&v11->_adapter, adapter);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  adapter = [(HUAccessorySettingsProfileItemProvider *)self adapter];
  settingGroup = [(HUAccessorySettingsProfileItemProvider *)self settingGroup];
  v7 = [v4 initWithAdapter:adapter settingGroup:settingGroup];

  return v7;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  adapter = [(HUAccessorySettingsProfileItemProvider *)self adapter];
  profilesSettingFuture = [adapter profilesSettingFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke;
  v8[3] = &unk_277DBD428;
  v5 = adapter;
  v9 = v5;
  objc_copyWeak(&v11, &location);
  selfCopy = self;
  v6 = [profilesSettingFuture flatMap:v8];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);

  return v6;
}

id __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) profiles];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_2;
  v9[3] = &unk_277DBD400;
  objc_copyWeak(&v12, (a1 + 48));
  v5 = v3;
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = [v4 flatMap:v9];

  objc_destroyWeak(&v12);

  return v7;
}

id __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_2(id *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, "HUAccessorySettingsProfileItemProvider: Unfiltered profiles: %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_11;
  aBlock[3] = &unk_277DBD370;
  objc_copyWeak(&v19, a1 + 6);
  v18 = a1[4];
  v6 = _Block_copy(aBlock);
  v7 = [a1[5] filter];
  if (v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_5;
    v15[3] = &unk_277DBD3D8;
    v2 = &v16;
    objc_copyWeak(&v16, a1 + 6);
    v8 = v15;
  }

  else
  {
    v8 = 0;
  }

  v9 = _Block_copy(v8);

  v10 = [a1[5] reloadItemsWithObjects:v4 keyAdaptor:&__block_literal_global_116 itemAdaptor:&__block_literal_global_19_0 filter:v9 itemMap:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_6;
  v13[3] = &unk_277DB7FA8;
  objc_copyWeak(&v14, a1 + 6);
  v11 = [v10 flatMap:v13];
  objc_destroyWeak(&v14);

  if (v7)
  {
    objc_destroyWeak(v2);
  }

  objc_destroyWeak(&v19);

  return v11;
}

HUAccessorySettingsProfileItem *__53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained accessorySettingsProfileItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_2_12;
  v9[3] = &unk_277DBD348;
  v6 = v3;
  v10 = v6;
  v7 = [v5 na_firstObjectPassingTest:v9];

  if (!v7)
  {
    v7 = [[HUAccessorySettingsProfileItem alloc] initWithProfile:v6 setting:*(a1 + 32)];
  }

  return v7;
}

uint64_t __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_2_12(uint64_t a1, void *a2)
{
  v3 = [a2 profile];
  v4 = [v3 UUID];
  v5 = [*(a1 + 32) UUID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

id __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 profile];
  v3 = [v2 UUID];

  return v3;
}

uint64_t __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained filter];
  v6 = [v3 profile];

  v7 = (v5)[2](v5, v6);
  return v7;
}

id __53__HUAccessorySettingsProfileItemProvider_reloadItems__block_invoke_6(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v3 allItems];
    v13 = 138412290;
    v14 = v12;
    _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, "HUAccessorySettingsProfileItemProvider: Filtered profile items: %@", &v13, 0xCu);
  }

  v6 = [WeakRetained accessorySettingsProfileItems];
  v7 = [v3 addedItems];
  [v6 unionSet:v7];

  v8 = [WeakRetained accessorySettingsProfileItems];
  v9 = [v3 removedItems];
  [v8 minusSet:v9];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v10;
}

- (id)items
{
  accessorySettingsProfileItems = [(HUAccessorySettingsProfileItemProvider *)self accessorySettingsProfileItems];
  v3 = [accessorySettingsProfileItems copy];

  return v3;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HUAccessorySettingsProfileItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:*MEMORY[0x277D13B28]];

  return v3;
}

@end