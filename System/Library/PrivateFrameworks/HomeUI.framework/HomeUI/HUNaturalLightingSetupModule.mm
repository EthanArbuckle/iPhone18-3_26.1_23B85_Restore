@interface HUNaturalLightingSetupModule
+ (BOOL)showNaturalLightingContainingHomeKitObject:(id)object;
- (HUNaturalLightingSetupModule)initWithHome:(id)home itemUpdater:(id)updater;
- (HUNaturalLightingSetupModuleDelegate)delegate;
- (id)_buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)commitSelectedItems;
- (id)itemProviders;
- (id)selectedItems;
- (void)toggleSelectedForItem:(id)item;
@end

@implementation HUNaturalLightingSetupModule

- (HUNaturalLightingSetupModule)initWithHome:(id)home itemUpdater:(id)updater
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUNaturalLightingSetupModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
  }

  return v9;
}

- (id)selectedItems
{
  allItems = [(HFItemModule *)self allItems];
  v3 = [allItems na_filter:&__block_literal_global_254];

  return v3;
}

uint64_t __45__HUNaturalLightingSetupModule_selectedItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 selected];
  }

  else
  {
    v7 = [v3 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    v6 = [v8 BOOLValue];
  }

  return v6;
}

- (void)toggleSelectedForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v6 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  latestResults = [v8 latestResults];
  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  [v8 setSelected:{objc_msgSend(v10, "BOOLValue") ^ 1}];

  v11 = MEMORY[0x277D14788];
  v12 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v13 = [v11 requestToUpdateItems:v12 senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v15 = [itemUpdater performItemUpdateRequest:v13];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__HUNaturalLightingSetupModule_toggleSelectedForItem___block_invoke;
  v17[3] = &unk_277DBBEB0;
  v17[4] = self;
  v16 = [v15 addCompletionBlock:v17];
}

void __54__HUNaturalLightingSetupModule_toggleSelectedForItem___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 selectedItems];
  [v4 naturalLanguageSetupModule:v2 didUpdateSelectedItems:v3];
}

- (id)commitSelectedItems
{
  v3 = MEMORY[0x277CBEB98];
  home = [(HUNaturalLightingSetupModule *)self home];
  hf_allLightProfilesSupportingNaturalLighting = [home hf_allLightProfilesSupportingNaturalLighting];
  v6 = [v3 setWithArray:hf_allLightProfilesSupportingNaturalLighting];

  allItems = [(HFItemModule *)self allItems];
  v8 = [allItems na_flatMap:&__block_literal_global_6_0];

  selectedItems = [(HUNaturalLightingSetupModule *)self selectedItems];
  v10 = [selectedItems na_flatMap:&__block_literal_global_8_2];

  v11 = [v8 na_setByIntersectingWithSet:v6];
  v12 = MEMORY[0x277D2C900];
  allObjects = [v11 allObjects];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__HUNaturalLightingSetupModule_commitSelectedItems__block_invoke_3;
  v18[3] = &unk_277DC36A0;
  v19 = v10;
  v14 = v10;
  v15 = [allObjects na_map:v18];
  v16 = [v12 combineAllFutures:v15];

  return v16;
}

id __51__HUNaturalLightingSetupModule_commitSelectedItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 lightProfiles];

  return v6;
}

id __51__HUNaturalLightingSetupModule_commitSelectedItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 lightProfiles];

  return v6;
}

id __51__HUNaturalLightingSetupModule_commitSelectedItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HUNaturalLightingSetupModule_commitSelectedItems__block_invoke_4;
  v8[3] = &unk_277DBB448;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v8];

  return v6;
}

void __51__HUNaturalLightingSetupModule_commitSelectedItems__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 setNaturalLightingEnabled:objc_msgSend(v3 completionHandler:{"containsObject:", v2), v4}];
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    _buildItemProviders = [(HUNaturalLightingSetupModule *)self _buildItemProviders];
    v5 = self->_itemProviders;
    self->_itemProviders = _buildItemProviders;

    itemProviders = self->_itemProviders;
  }

  return itemProviders;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  allItems = [(HFItemModule *)self allItems];
  v6 = [allItems na_setByIntersectingWithSet:itemsCopy];

  v7 = [v6 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_14_1];
  v8 = MEMORY[0x277D14778];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HUNaturalLightingSetupModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v12[3] = &unk_277DC36E8;
  v12[4] = self;
  v9 = [v7 na_map:v12];
  v10 = [v8 filterSections:v9 toDisplayedItems:itemsCopy];

  return v10;
}

id __64__HUNaturalLightingSetupModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 hf_parentRoom];
  v7 = [v6 uniqueIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  }

  v10 = v9;

  return v10;
}

id __64__HUNaturalLightingSetupModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 home];
  v9 = [v8 hf_roomWithIdentifier:v7];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D14850]);
    v11 = [v9 uniqueIdentifier];
    v12 = [v11 UUIDString];
    v13 = [v10 initWithIdentifier:v12];

    v14 = [v9 hf_displayName];
    [v13 setHeaderTitle:v14];

    v15 = [v5 allObjects];
    v16 = [MEMORY[0x277D14778] defaultItemComparator];
    v17 = [v15 sortedArrayUsingComparator:v16];
    [v13 setItems:v17];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_buildItemProviders
{
  v3 = [HUNaturalLightingItemProvider alloc];
  home = [(HUNaturalLightingSetupModule *)self home];
  v5 = [(HUNaturalLightingItemProvider *)v3 initWithHome:home];

  filter = [(HUNaturalLightingSetupModule *)self filter];
  [(HUNaturalLightingItemProvider *)v5 setLightProfileFilter:filter];

  defaultSelectedValue = [(HUNaturalLightingSetupModule *)self defaultSelectedValue];
  [(HUNaturalLightingItemProvider *)v5 setDefaultSelectedValue:defaultSelectedValue];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HUNaturalLightingSetupModule__buildItemProviders__block_invoke;
  v10[3] = &unk_277DB83E8;
  v10[4] = self;
  [(HUNaturalLightingItemProvider *)v5 setHomeKitObjectFilter:v10];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v5];

  return v8;
}

uint64_t __51__HUNaturalLightingSetupModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() showNaturalLightingContainingHomeKitObject:v2];

  return v3;
}

+ (BOOL)showNaturalLightingContainingHomeKitObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v4 = objectCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [MEMORY[0x277CBEA60] na_arrayWithSafeObject:v6];
  if (!v9)
  {
    goto LABEL_12;
  }

  if ([v9 hf_isVisibleAccessory] && (objc_msgSend(v9, "hf_isVisibleAsBridge") & 1) == 0)
  {
    services = [v9 services];

    v10 = services;
LABEL_12:
    v11 = [v10 na_any:&__block_literal_global_26_1];
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (HUNaturalLightingSetupModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end