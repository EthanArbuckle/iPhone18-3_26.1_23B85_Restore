@interface HUValveItemModule
+ (id)supportedServiceTypes;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUValveItemModule

+ (id)supportedServiceTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CD0F38];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];
  v7 = [v6 items];

  if ([v7 count] <= 1)
  {
    v8 = [v7 na_any:&__block_literal_global_142];
  }

  else
  {
    v8 = 1;
  }

  if ([v7 intersectsSet:v4] && v8)
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

    v12 = [v7 na_setByIntersectingWithSet:v4];
    v13 = [v12 allObjects];
    v14 = [v13 sortedArrayUsingComparator:v11];

    [v9 setItems:v14];
    v15 = objc_alloc(MEMORY[0x277CCA940]);
    v16 = [v14 na_map:&__block_literal_global_8_0];
    v17 = [v15 initWithArray:v16];

    v18 = [v17 na_mostCommonObject];
    if ([v18 isEqualToString:*MEMORY[0x277CD0DA8]])
    {
      v19 = @"HUValveModuleSectionHeaderTitleIrrigation";
    }

    else if ([v18 isEqualToString:*MEMORY[0x277CD0DC0]])
    {
      v19 = @"HUValveModuleSectionHeaderTitleFaucet";
    }

    else if ([v18 isEqualToString:*MEMORY[0x277CD0DB0]])
    {
      v19 = @"HUValveModuleSectionHeaderTitleShower";
    }

    else
    {
      v19 = @"HUValveModuleSectionHeaderTitleGeneric";
    }

    v20 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
    [v9 setHeaderTitle:v20];
    [v5 addObject:v9];
  }

  return v5;
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