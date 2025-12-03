@interface HUValveItemModule
+ (id)supportedServiceTypes;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUValveItemModule

+ (id)supportedServiceTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CD0F38];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  childServiceItemProvider = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];
  items = [childServiceItemProvider items];

  if ([items count] <= 1)
  {
    v8 = [items na_any:&__block_literal_global_142];
  }

  else
  {
    v8 = 1;
  }

  if ([items intersectsSet:itemsCopy] && v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUValveItemSectionIdentifier"];
    if ([(HUChildServiceEditorItemModule *)self editingMode]== 1)
    {
      [objc_opt_class() childItemComparator];
    }

    else
    {
      [MEMORY[0x277D14778] defaultItemComparator];
    }
    v10 = ;
    v11 = _Block_copy(v10);

    v12 = [items na_setByIntersectingWithSet:itemsCopy];
    allObjects = [v12 allObjects];
    v14 = [allObjects sortedArrayUsingComparator:v11];

    [v9 setItems:v14];
    v15 = objc_alloc(MEMORY[0x277CCA940]);
    v16 = [v14 na_map:&__block_literal_global_8_0];
    v17 = [v15 initWithArray:v16];

    na_mostCommonObject = [v17 na_mostCommonObject];
    if ([na_mostCommonObject isEqualToString:*MEMORY[0x277CD0DA8]])
    {
      v19 = @"HUValveModuleSectionHeaderTitleIrrigation";
    }

    else if ([na_mostCommonObject isEqualToString:*MEMORY[0x277CD0DC0]])
    {
      v19 = @"HUValveModuleSectionHeaderTitleFaucet";
    }

    else if ([na_mostCommonObject isEqualToString:*MEMORY[0x277CD0DB0]])
    {
      v19 = @"HUValveModuleSectionHeaderTitleShower";
    }

    else
    {
      v19 = @"HUValveModuleSectionHeaderTitleGeneric";
    }

    v20 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
    [v9 setHeaderTitle:v20];
    [array addObject:v9];
  }

  return array;
}

uint64_t __53__HUValveItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 hf_parentService];
  v4 = [v3 serviceType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CD0E80]];

  return v5;
}

id __53__HUValveItemModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 serviceSubtype];

  return v3;
}

@end