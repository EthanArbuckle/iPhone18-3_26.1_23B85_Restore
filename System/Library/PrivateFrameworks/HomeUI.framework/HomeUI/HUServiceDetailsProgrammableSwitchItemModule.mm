@interface HUServiceDetailsProgrammableSwitchItemModule
- (HUCharacteristicEventOptionProvider)programmableSwitchOptionsProvider;
- (NSSet)itemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUServiceDetailsProgrammableSwitchItemModule

- (HUCharacteristicEventOptionProvider)programmableSwitchOptionsProvider
{
  programmableSwitchOptionsProvider = self->_programmableSwitchOptionsProvider;
  if (programmableSwitchOptionsProvider)
  {
    v3 = programmableSwitchOptionsProvider;
  }

  else
  {
    home = [(HUServiceDetailsItemModule *)self home];
    v6 = [HUCharacteristicEventOptionProvider alloc];
    sourceItem = [(HUServiceDetailsItemModule *)self sourceItem];
    home2 = [(HUServiceDetailsItemModule *)self home];
    v9 = [(HUCharacteristicEventOptionProvider *)v6 initWithServiceVendingItem:sourceItem home:home2];
    v10 = self->_programmableSwitchOptionsProvider;
    self->_programmableSwitchOptionsProvider = v9;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__HUServiceDetailsProgrammableSwitchItemModule_programmableSwitchOptionsProvider__block_invoke;
    v14[3] = &unk_277DC3088;
    v15 = home;
    v11 = self->_programmableSwitchOptionsProvider;
    v12 = home;
    [(HUCharacteristicEventOptionProvider *)v11 setFilter:v14];
    v3 = self->_programmableSwitchOptionsProvider;
  }

  return v3;
}

uint64_t __81__HUServiceDetailsProgrammableSwitchItemModule_programmableSwitchOptionsProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) hf_currentUserIsAdministrator])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (NSSet)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    v4 = MEMORY[0x277CBEB98];
    programmableSwitchOptionsProvider = [(HUServiceDetailsProgrammableSwitchItemModule *)self programmableSwitchOptionsProvider];
    v6 = [v4 setWithObject:programmableSwitchOptionsProvider];
    v7 = self->_itemProviders;
    self->_itemProviders = v6;

    itemProviders = self->_itemProviders;
  }

  v8 = itemProviders;

  return v8;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v3 = [items na_filter:&__block_literal_global_246];
  if ([v3 count])
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v5 = MEMORY[0x277CBEB40];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_2;
    v28[3] = &unk_277DC30B0;
    v6 = strongToStrongObjectsMapTable;
    v29 = v6;
    v7 = [v3 na_map:v28];
    v8 = [v5 orderedSetWithSet:v7];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_3;
    v26[3] = &unk_277DC1248;
    v27 = v6;
    v9 = v6;
    [v8 sortUsingComparator:v26];
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_5;
    v22[3] = &unk_277DC30D8;
    v23 = v8;
    v24 = v11;
    v12 = v10;
    v25 = v12;
    v13 = v11;
    v14 = v8;
    [v3 enumerateObjectsUsingBlock:v22];
    allKeys = [v12 allKeys];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_9;
    v19[3] = &unk_277DC3120;
    v20 = v12;
    v21 = &__block_literal_global_18_0;
    v16 = v12;
    v17 = [allKeys na_map:v19];
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

uint64_t __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 latestResults];
  v5 = [v4 objectForKey:@"sectionElementIndex"];

  v6 = [v3 characteristics];

  v7 = [v6 anyObject];
  v8 = [v7 service];

  [*(a1 + 32) setObject:v5 forKey:v8];

  return v8;
}

uint64_t __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v15 = MEMORY[0x277D85DD0];
  v9 = v7;
  v16 = v9;
  v10 = v8;
  v11 = v10;
  v17 = v10;
  if (v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = v10 != 0;
  }

  v13 = v10;
  if (v9 && v10)
  {
    v12 = [v9 compare:{v10, v15, 3221225472, __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_4, &unk_277DB78F8, v9}];
    v13 = v17;
  }

  return v12;
}

void __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristics];
  v5 = [v4 anyObject];
  v10 = [v5 service];

  v6 = [@"HUServiceDetailsProgrammableSwitchSectionIdentifierPrefix-" stringByAppendingFormat:@"%lu", objc_msgSend(*(a1 + 32), "indexOfObject:", v10)];
  v7 = *(a1 + 40);
  v8 = [v10 uniqueIdentifier];
  [v7 setObject:v6 forKey:v8];

  v9 = [*(a1 + 48) na_objectForKey:v6 withDefaultValue:&__block_literal_global_13_3];
  [v9 addObject:v3];
}

id __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_6()
{
  v0 = objc_opt_new();

  return v0;
}

uint64_t __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = HFProgrammableSwitchInputEventOptionDisplayPriorityMap();
  v7 = [v5 latestResults];

  v8 = *MEMORY[0x277D13F60];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v10 = [v6 objectForKeyedSubscript:v9];

  v11 = [v4 latestResults];

  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = [v6 objectForKeyedSubscript:v12];

  v21 = MEMORY[0x277D85DD0];
  v14 = v10;
  v22 = v14;
  v15 = v13;
  v16 = v15;
  v23 = v15;
  if (v14)
  {
    v17 = -1;
  }

  else
  {
    v17 = v15 != 0;
  }

  if (v14)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = v15;
  }

  else
  {
    v17 = [v14 compare:{v15, v21, 3221225472, __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_8, &unk_277DB78F8, v14}];
    v19 = v23;
  }

  return v17;
}

id __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_9(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v4];

  v7 = [v5 na_firstObjectPassingTest:&__block_literal_global_22_1];
  v8 = [v7 latestResults];
  v9 = [v8 objectForKey:@"sectionIndex"];

  v10 = [v7 latestResults];
  v11 = [v10 objectForKey:@"sectionNamespace"];

  v12 = [v7 latestResults];
  v13 = [v12 objectForKey:@"sectionElementIndex"];

  v14 = [v7 latestResults];
  v15 = [v14 objectForKey:@"sectionTitleKey"];
  [v6 setHeaderTitle:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", v9, v11, v13, @"HUServiceDetailsItemModuleTitleForSectionSortingUserInfoKey"];
  v22[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v6 setUserInfo:v17];

  v18 = [v5 allObjects];
  v19 = [v18 sortedArrayUsingComparator:*(a1 + 40)];
  [v6 setItems:v19];

  return v6;
}

uint64_t __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 characteristics];
  v3 = [v2 na_any:&__block_literal_global_25_3];

  return v3;
}

uint64_t __80__HUServiceDetailsProgrammableSwitchItemModule_buildSectionsWithDisplayedItems___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF910]];

  return v3;
}

@end