@interface HFAccessorySettingDataAnalyticsAdapter
- (BOOL)shouldShowSettingsEntity:(id)entity;
- (HFAccessorySettingDataAnalyticsAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode;
- (id)customizeSections:(id)sections forEntity:(id)entity;
@end

@implementation HFAccessorySettingDataAnalyticsAdapter

- (HFAccessorySettingDataAnalyticsAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode
{
  vendorCopy = vendor;
  if (mode)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingDataAnalyticsAdapter.m" lineNumber:21 description:@"Data Analytics adapter does not do what you think it does."];
  }

  v8 = [MEMORY[0x277CBEB98] set];
  v12.receiver = self;
  v12.super_class = HFAccessorySettingDataAnalyticsAdapter;
  v9 = [(HFAccessorySettingAdapter *)&v12 initWithHomeKitSettingsVendor:vendorCopy keyPaths:v8 mode:mode updateHandler:0];

  return v9;
}

- (BOOL)shouldShowSettingsEntity:(id)entity
{
  homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  if ([homeKitSettingsVendor isItemGroup])
  {
    v5 = 0;
  }

  else
  {
    homeKitSettingsVendor2 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    if ([homeKitSettingsVendor2 conformsToProtocol:&unk_282584A38])
    {
      v7 = homeKitSettingsVendor2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 hf_idsDeviceIdentifierWithError:0];

    v5 = v9 != 0;
  }

  return v5;
}

- (id)customizeSections:(id)sections forEntity:(id)entity
{
  sectionsCopy = sections;
  entityCopy = entity;
  keyPath = [entityCopy keyPath];
  v8 = [keyPath isEqualToString:@"root.general.analytics"];

  if (v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__3;
    v26 = __Block_byref_object_dispose__3;
    v27 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __70__HFAccessorySettingDataAnalyticsAdapter_customizeSections_forEntity___block_invoke;
    v19 = &unk_277DF4B98;
    v10 = array;
    v20 = v10;
    v21 = &v22;
    [sectionsCopy na_each:&v16];
    if (v23[5])
    {
      v11 = [HFMutableItemSection alloc];
      v12 = [(HFItemSection *)v11 initWithIdentifier:@"COLLECT_SYSDIAGNOSE_SECTION", v16, v17, v18, v19];
      v13 = [MEMORY[0x277CBEA60] arrayWithObject:v23[5]];
      [(HFItemSection *)v12 setItems:v13];

      [v10 addObject:v12];
    }

    v14 = v10;

    _Block_object_dispose(&v22, 8);
    sectionsCopy = v14;
  }

  return sectionsCopy;
}

void __70__HFAccessorySettingDataAnalyticsAdapter_customizeSections_forEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 items];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_26];

  if (v5)
  {
    v6 = [v3 mutableCopy];

    v7 = [v6 items];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__HFAccessorySettingDataAnalyticsAdapter_customizeSections_forEntity___block_invoke_3;
    v9[3] = &unk_277DF4B70;
    v10 = v5;
    v8 = [v7 na_filter:v9];
    [v6 setItems:v8];

    [*(a1 + 32) addObject:v6];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);

    v3 = v6;
  }

  else
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __70__HFAccessorySettingDataAnalyticsAdapter_customizeSections_forEntity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"HFAccessorySettingGroupKeyPathKey"];
  v4 = [v3 isEqualToString:@"root.general.analytics.sysdiagnose"];

  return v4;
}

@end