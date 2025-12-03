@interface HUSiriHistoryItemManager
- (HUSiriHistoryItemManager)initWithDelegate:(id)delegate accessorySettingItem:(id)item;
- (HUSiriHistoryItemManager)initWithDelegate:(id)delegate groupItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)didSelectItemAtIndexPath:(id)path;
- (id)didUpdateItemAtIndexPath:(id)path;
@end

@implementation HUSiriHistoryItemManager

- (HUSiriHistoryItemManager)initWithDelegate:(id)delegate groupItem:(id)item
{
  delegateCopy = delegate;
  v7 = [item copy];
  v13.receiver = self;
  v13.super_class = HUSiriHistoryItemManager;
  v8 = [(HFItemManager *)&v13 initWithDelegate:delegateCopy sourceItem:v7];

  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFF8000, 0);
    v10 = dispatch_queue_create("com.apple.Home.DeleteSiriHistory", v9);
    queue = v8->_queue;
    v8->_queue = v10;
  }

  return v8;
}

- (HUSiriHistoryItemManager)initWithDelegate:(id)delegate accessorySettingItem:(id)item
{
  v9.receiver = self;
  v9.super_class = HUSiriHistoryItemManager;
  v4 = [(HFItemManager *)&v9 initWithDelegate:delegate sourceItem:item];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFF8000, 0);
    v6 = dispatch_queue_create("com.apple.Home.DeleteSiriHistory", v5);
    queue = v4->_queue;
    v4->_queue = v6;
  }

  return v4;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HUSiriHistoryItemManager__buildItemProvidersForHome___block_invoke;
  v13[3] = &unk_277DB7478;
  v13[4] = self;
  v5 = [v4 initWithResultsBlock:v13];
  [(HUSiriHistoryItemManager *)self setDeleteSiriHistoryItem:v5];

  v6 = objc_alloc(MEMORY[0x277D14B40]);
  v7 = MEMORY[0x277CBEB98];
  deleteSiriHistoryItem = [(HUSiriHistoryItemManager *)self deleteSiriHistoryItem];
  v9 = [v7 setWithObject:deleteSiriHistoryItem];
  v10 = [v6 initWithItems:v9];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  return v11;
}

id __55__HUSiriHistoryItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v14[0] = *MEMORY[0x277D13F60];
  v3 = HFLocalizedString();
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D13DA8];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [*(a1 + 32) home];
  v13[0] = v5;
  v6 = [*(a1 + 32) home];
  v7 = [v6 hf_mediaAccessories];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v9 = [v4 initWithArray:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v2 futureWithResult:v10];

  return v11;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  v7 = MEMORY[0x277CBEB98];
  deleteSiriHistoryItem = [(HUSiriHistoryItemManager *)self deleteSiriHistoryItem];
  v9 = [v7 setWithObject:deleteSiriHistoryItem];
  v10 = [itemsCopy intersectsSet:v9];

  if (v10)
  {
    v47 = array;
    v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"deleteSiriHistory"];
    objc_opt_class();
    sourceItem = [(HFItemManager *)self sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v13 = sourceItem;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    homeKitSettingsVendor = [v14 homeKitSettingsVendor];
    if ([homeKitSettingsVendor conformsToProtocol:&unk_2825BCB38])
    {
      v16 = homeKitSettingsVendor;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v46 = v14;
    homeKitSettingsVendor2 = [v14 homeKitSettingsVendor];
    settings = [homeKitSettingsVendor2 settings];
    v20 = [settings hf_accessorySettingAtKeyPath:*MEMORY[0x277D13970]];

    objc_opt_class();
    v45 = v20;
    value = [v20 value];
    if (objc_opt_isKindOfClass())
    {
      v22 = value;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    objc_opt_class();
    sourceItem2 = [(HFItemManager *)self sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v25 = sourceItem2;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    settingValue = [v26 settingValue];

    [settingValue BOOLValue];
    accessories = [v17 accessories];

    anyObject = [accessories anyObject];
    hf_userFriendlyLocalizedLowercaseDescription = [anyObject hf_userFriendlyLocalizedLowercaseDescription];
    v31 = HFLocalizedStringWithFormat();

    sourceItem3 = [v26 sourceItem];
    if ([sourceItem3 conformsToProtocol:&unk_28251B0C8])
    {
      v33 = sourceItem3;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    accessories2 = [v34 accessories];

    anyObject2 = [accessories2 anyObject];

    if ([anyObject2 hf_isSiriEndpoint])
    {
      [settingValue BOOLValue];
      hf_categoryOrPrimaryServiceType = [anyObject2 hf_categoryOrPrimaryServiceType];
      matterDeviceTypeID = [anyObject2 matterDeviceTypeID];
      v39 = HFLocalizedCategoryOrPrimaryServiceTypeString();

      v31 = v39;
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __61__HUSiriHistoryItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v48[3] = &unk_277DB74A0;
    v49 = v31;
    v40 = v31;
    v41 = __61__HUSiriHistoryItemManager__buildSectionsWithDisplayedItems___block_invoke(v48);
    [v11 setAttributedFooterTitle:v41];

    deleteSiriHistoryItem2 = [(HUSiriHistoryItemManager *)self deleteSiriHistoryItem];
    v50[0] = deleteSiriHistoryItem2;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    [v11 setItems:v43];

    array = v47;
    [v47 addObject:v11];
  }

  return array;
}

id __61__HUSiriHistoryItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:*(a1 + 32)];
  v2 = objc_alloc(MEMORY[0x277CCA898]);
  v3 = HFLocalizedString();
  v8 = *MEMORY[0x277D740E8];
  v4 = [MEMORY[0x277D14C80] aboutImproveSiriAndDictationURL];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v2 initWithString:v3 attributes:v5];
  [v1 appendAttributedString:v6];

  return v1;
}

- (id)didSelectItemAtIndexPath:(id)path
{
  v26[3] = *MEMORY[0x277D85DE8];
  v4 = [(HFItemManager *)self displayedItemAtIndexPath:path];
  deleteSiriHistoryItem = [(HUSiriHistoryItemManager *)self deleteSiriHistoryItem];
  v6 = [v4 isEqual:deleteSiriHistoryItem];

  if (v6)
  {
    v7 = HFLocalizedString();
    objc_opt_class();
    sourceItem = [(HFItemManager *)self sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v9 = sourceItem;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    sourceItem2 = [v10 sourceItem];

    if ([sourceItem2 conformsToProtocol:&unk_28251B0C8])
    {
      v12 = sourceItem2;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    accessories = [v13 accessories];

    anyObject = [accessories anyObject];

    if ([anyObject hf_isSiriEndpoint])
    {
      hf_categoryOrPrimaryServiceType = [anyObject hf_categoryOrPrimaryServiceType];
      matterDeviceTypeID = [anyObject matterDeviceTypeID];
      v18 = HFLocalizedCategoryOrPrimaryServiceTypeString();

      v7 = v18;
    }

    v25[0] = *MEMORY[0x277D13F60];
    v19 = HFLocalizedString();
    v20 = *MEMORY[0x277D13E20];
    v26[0] = v19;
    v26[1] = v7;
    v21 = *MEMORY[0x277D13DE8];
    v25[1] = v20;
    v25[2] = v21;
    v22 = HFLocalizedString();
    v26[2] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)didUpdateItemAtIndexPath:(id)path
{
  v4 = [(HFItemManager *)self displayedItemAtIndexPath:path];
  deleteSiriHistoryItem = [(HUSiriHistoryItemManager *)self deleteSiriHistoryItem];
  v6 = [v4 isEqual:deleteSiriHistoryItem];

  if (v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke;
    v9[3] = &unk_277DB7580;
    v9[4] = self;
    v7 = [MEMORY[0x277D2C900] futureWithBlock:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 homeKitSettingsVendor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v10 = [v6 homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 accessory];

    v35[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
LABEL_14:
    v20 = v14;

    v7 = v20;
    goto LABEL_15;
  }

  v15 = [v6 homeKitSettingsVendor];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    objc_opt_class();
    v17 = [v6 homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v13 = [v19 components];

    v14 = [v13 na_map:&__block_literal_global_3];
    goto LABEL_14;
  }

  v24 = [*(a1 + 32) sourceItem];
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    objc_opt_class();
    v26 = [*(a1 + 32) sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v29 = [v28 sourceItem];

    v30 = [v29 accessories];
    v31 = [v30 allObjects];

    v7 = v31;
  }

LABEL_15:
  v21 = [*(a1 + 32) queue];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke_3;
  v32[3] = &unk_277DB7558;
  v33 = v7;
  v34 = v3;
  v22 = v7;
  v23 = v3;
  dispatch_async(v21, v32);
}

id __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfile];
  v3 = [v2 accessory];

  return v3;
}

void __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) na_map:&__block_literal_global_316];
  v3 = [MEMORY[0x277D2C900] chainFutures:v2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke_6;
  v5[3] = &unk_277DB7530;
  v6 = *(a1 + 40);
  v4 = [v3 addCompletionBlock:v5];
}

id __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke_5;
  v7[3] = &unk_277DB7508;
  v8 = v2;
  v4 = v2;
  v5 = [v3 futureWithErrorOnlyHandlerAdapterBlock:v7];

  return v5;
}

void __53__HUSiriHistoryItemManager_didUpdateItemAtIndexPath___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLocalizedString();
  v6 = HFLocalizedString();
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D13E20];
  v10[0] = *MEMORY[0x277D13F60];
  v10[1] = v8;
  v11[0] = v5;
  v11[1] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v7 finishWithResult:v9 error:v4];
}

@end