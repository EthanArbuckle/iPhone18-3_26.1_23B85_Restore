@interface HFAccessorySettingsItemProvider
+ (id)buildItemTuplesForHomeKitSettings:(id)a3 usageOptions:(id)a4 settingGroup:(id)a5 underNode:(id)a6 cache:(id)a7;
- (HFAccessorySettingsItemProvider)initWithHomeKitSettingsVendor:(id)a3 settingGroup:(id)a4 usageOptions:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
- (void)setSettingGroup:(id)a3;
@end

@implementation HFAccessorySettingsItemProvider

- (HFAccessorySettingsItemProvider)initWithHomeKitSettingsVendor:(id)a3 settingGroup:(id)a4 usageOptions:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingsItemProvider.m" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];
  }

  v21.receiver = self;
  v21.super_class = HFAccessorySettingsItemProvider;
  v13 = [(HFItemProvider *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_homeKitSettingsVendor, a3);
    v15 = objc_opt_new();
    settingItems = v14->_settingItems;
    v14->_settingItems = v15;

    v17 = objc_opt_new();
    settingToItemCache = v14->_settingToItemCache;
    v14->_settingToItemCache = v17;

    objc_storeStrong(&v14->_usageOptions, a5);
    [(HFAccessorySettingsItemProvider *)v14 setSettingGroup:v11];
  }

  return v14;
}

- (void)setSettingGroup:(id)a3
{
  obj = a3;
  if ([obj isEqual:self->_settingGroup])
  {
    goto LABEL_11;
  }

  if (!obj)
  {
    v8 = [(HFAccessorySettingsItemProvider *)self homeKitSettingsVendor];
    v14 = [v8 settings];
    obj = [v14 rootGroup];
    goto LABEL_7;
  }

  v5 = [obj keyPath];
  v6 = [v5 isEqualToString:@"root"];

  if ((v6 & 1) == 0)
  {
    v7 = [(HFAccessorySettingsItemProvider *)self homeKitSettingsVendor];
    v8 = [v7 settings];

    v9 = [obj keyPath];
    v10 = [v8 hf_accessorySettingGroupAtKeyPath:v9];
    v11 = [obj isEqual:v10];

    if (v11)
    {
LABEL_8:

      goto LABEL_9;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = a2;
    v14 = v12;
    [v12 handleFailureInMethod:v13 object:self file:@"HFAccessorySettingsItemProvider.m" lineNumber:453 description:@"HMAccessorySettingGroup must belong to parent HMMediaProfile!"];
LABEL_7:

    goto LABEL_8;
  }

LABEL_9:
  v15 = [(HFAccessorySettingsItemProvider *)self settingToItemCache];
  [v15 removeAllObjects];

  objc_storeStrong(&self->_settingGroup, obj);
  v16 = obj;
  if (!obj)
  {
    goto LABEL_12;
  }

  v17 = [(HFAccessorySettingsItemProvider *)self homeKitSettingsVendor];
  v18 = [v17 settings];
  v19 = [v18 hf_codex];
  v20 = [obj keyPath];
  v21 = [v19 hf_nodeWithKeyPath:v20];
  parentNode = self->_parentNode;
  self->_parentNode = v21;

LABEL_11:
  v16 = obj;
LABEL_12:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFAccessorySettingsItemProvider *)self homeKitSettingsVendor];
  v6 = [(HFAccessorySettingsItemProvider *)self settingGroup];
  v7 = [(HFAccessorySettingsItemProvider *)self usageOptions];
  v8 = [v4 initWithHomeKitSettingsVendor:v5 settingGroup:v6 usageOptions:v7];

  return v8;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = objc_opt_class();
  v4 = [(HFAccessorySettingsItemProvider *)self homeKitSettingsVendor];
  v5 = [(HFAccessorySettingsItemProvider *)self usageOptions];
  v6 = [(HFAccessorySettingsItemProvider *)self settingGroup];
  v7 = [(HFAccessorySettingsItemProvider *)self parentNode];
  v8 = [(HFAccessorySettingsItemProvider *)self settingToItemCache];
  v9 = [v3 buildItemTuplesForHomeKitSettings:v4 usageOptions:v5 settingGroup:v6 underNode:v7 cache:v8];

  v10 = [v9 allObjects];
  v11 = [(HFAccessorySettingsItemProvider *)self filter];
  if (v11)
  {
    v12 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__HFAccessorySettingsItemProvider_reloadItems__block_invoke_4;
    v18[3] = &unk_277DFB258;
    v5 = &v19;
    objc_copyWeak(&v19, &location);
  }

  else
  {
    v12 = 0;
  }

  v13 = [(HFItemProvider *)self reloadItemsWithObjects:v10 keyAdaptor:&__block_literal_global_401_0 itemAdaptor:&__block_literal_global_404 filter:v12 itemMap:&__block_literal_global_398_0];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__HFAccessorySettingsItemProvider_reloadItems__block_invoke_5;
  v16[3] = &unk_277DF30B8;
  objc_copyWeak(&v17, &location);
  v14 = [v13 flatMap:v16];
  objc_destroyWeak(&v17);

  if (v11)
  {
    objc_destroyWeak(v5);
  }

  objc_destroyWeak(&location);

  return v14;
}

uint64_t __46__HFAccessorySettingsItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained filter];
  v6 = [v3 settingKeyPath];

  v7 = (v5)[2](v5, v6);
  return v7;
}

id __46__HFAccessorySettingsItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained settingItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained settingItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)items
{
  v2 = [(HFAccessorySettingsItemProvider *)self settingItems];
  v3 = [v2 copy];

  return v3;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFAccessorySettingsItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"accessory"];

  return v3;
}

+ (id)buildItemTuplesForHomeKitSettings:(id)a3 usageOptions:(id)a4 settingGroup:(id)a5 underNode:(id)a6 cache:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v54 = a6;
  v14 = a7;
  if (!v14)
  {
    v14 = objc_opt_new();
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke;
  aBlock[3] = &unk_277DFB280;
  v15 = v14;
  v89 = v15;
  v16 = _Block_copy(aBlock);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_2;
  v86[3] = &unk_277DFB2A8;
  v87 = v15;
  v53 = v15;
  v17 = _Block_copy(v86);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_3;
  v81[3] = &unk_277DFB2D0;
  v18 = v16;
  v84 = v18;
  v19 = v11;
  v82 = v19;
  v20 = v12;
  v83 = v20;
  v21 = v17;
  v85 = v21;
  v22 = _Block_copy(v81);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_4;
  v76[3] = &unk_277DFB2F8;
  v23 = v18;
  v79 = v23;
  v24 = v19;
  v77 = v24;
  v25 = v20;
  v78 = v25;
  v26 = v21;
  v80 = v26;
  v27 = _Block_copy(v76);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_5;
  v71[3] = &unk_277DFB320;
  v28 = v23;
  v74 = v28;
  v29 = v24;
  v72 = v29;
  v30 = v25;
  v73 = v30;
  v31 = v26;
  v75 = v31;
  v32 = _Block_copy(v71);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_6;
  v65[3] = &unk_277DFB348;
  v66 = v29;
  v67 = v30;
  v68 = v28;
  v69 = v31;
  v70 = v22;
  v33 = v22;
  v50 = v31;
  v52 = v30;
  v51 = v29;
  v34 = v28;
  v35 = _Block_copy(v65);
  v36 = objc_opt_new();
  v37 = [v13 settings];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_7;
  v62[3] = &unk_277DFB370;
  v38 = v35;
  v64 = v38;
  v39 = v36;
  v63 = v39;
  [v37 na_each:v62];

  v40 = [v13 groups];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_8;
  v58[3] = &unk_277DFB3C0;
  v60 = v27;
  v41 = v39;
  v59 = v41;
  v61 = v38;
  v42 = v38;
  v43 = v27;
  [v40 na_each:v58];

  v44 = [v54 childNodes];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_11;
  v55[3] = &unk_277DFB3E8;
  v57 = v32;
  v45 = v41;
  v56 = v45;
  v46 = v32;
  [v44 na_each:v55];

  v47 = v56;
  v48 = v45;

  return v45;
}

id __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke(uint64_t a1, void *a2)
{
  v3 = _HomeKitSettingToHFItem_CacheItemCacheKey(a2);
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 cacheKey];
  [v2 na_safeSetObject:v3 forKey:v4];
}

void __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_3(void *a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = (*(a1[6] + 16))();
  if (!v9)
  {
    v9 = [[_HomeKitSettingToHFItem_CacheItem alloc] initWithHomeKitSettingsVendor:a1[4] usageOptions:a1[5] setting:v7 optionItem:v8];
    (*(a1[7] + 16))();
  }

  [v10 na_safeAddObject:v9];
}

void __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_4(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = (*(a1[6] + 16))();
  if (!v6)
  {
    v6 = [[_HomeKitSettingToHFItem_CacheItem alloc] initWithHomeKitSettingsVendor:a1[4] usageOptions:a1[5] group:v5];
    (*(a1[7] + 16))();
  }

  [v7 na_safeAddObject:v6];
}

void __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_5(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = (*(a1[6] + 16))();
  if (!v6)
  {
    v6 = [[_HomeKitSettingToHFItem_CacheItem alloc] initWithHomeKitSettingsVendor:a1[4] usageOptions:a1[5] accessoryGroupEntity:v5];
    (*(a1[7] + 16))();
  }

  [v7 na_safeAddObject:v6];
}

void __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_6(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = (*(a1[6] + 16))();
  if (!v7)
  {
    v7 = [[_HomeKitSettingToHFItem_CacheItem alloc] initWithHomeKitSettingsVendor:a1[4] usageOptions:a1[5] setting:v6];
    (*(a1[7] + 16))();
  }

  [v5 na_safeAddObject:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v8 items];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          (*(a1[8] + 16))();
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_8(id *a1, void *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = v3[2];
  v6 = a2;
  v5(v3, v4, v6);
  v7 = [v6 settings];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_9;
  v12[3] = &unk_277DFB370;
  v14 = a1[6];
  v13 = a1[4];
  [v7 na_each:v12];

  v8 = [v6 groups];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_10;
  v9[3] = &unk_277DFB398;
  v11 = a1[5];
  v10 = a1[4];
  [v8 na_each:v9];
}

void __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 representedObject];
  v5 = [v4 alwaysShowGroup];

  if (v5)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = [v3 representedObject];
    (*(v6 + 16))(v6, v7, v8);
  }

  v9 = [v3 childNodes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_12;
  v10[3] = &unk_277DFB3E8;
  v12 = *(a1 + 40);
  v11 = *(a1 + 32);
  [v9 na_each:v10];
}

void __111__HFAccessorySettingsItemProvider_buildItemTuplesForHomeKitSettings_usageOptions_settingGroup_underNode_cache___block_invoke_12(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 representedObject];
  v4 = [v3 alwaysShowGroup];

  if (v4)
  {
    v7 = a1 + 32;
    v5 = *(a1 + 32);
    v6 = *(v7 + 8);
    v8 = [v9 representedObject];
    (*(v6 + 16))(v6, v5, v8);
  }
}

@end