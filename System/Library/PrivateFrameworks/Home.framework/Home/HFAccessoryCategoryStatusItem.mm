@interface HFAccessoryCategoryStatusItem
+ (id)statusItemClasses;
- (HFAccessoryCategoryStatusItem)initWithHome:(id)a3 room:(id)a4 valueSource:(id)a5;
- (HFAccessoryTypeGroup)accessoryTypeGroup;
- (id)_statusItemOfClass:(Class)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessoryTypeGroupFilter;
- (id)sortedActionSetItemsWithProvider:(id)a3;
- (void)applyInflectionToDescriptions:(id)a3;
@end

@implementation HFAccessoryCategoryStatusItem

- (HFAccessoryCategoryStatusItem)initWithHome:(id)a3 room:(id)a4 valueSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = HFAccessoryCategoryStatusItem;
  v11 = [(HFStatusItem *)&v24 initWithHome:v8 room:v9 valueSource:v10];
  if (v11)
  {
    v12 = [objc_opt_class() statusItemClasses];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__HFAccessoryCategoryStatusItem_initWithHome_room_valueSource___block_invoke;
    v20[3] = &unk_277DF4258;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v13 = [v12 na_map:v20];
    statusItems = v11->_statusItems;
    v11->_statusItems = v13;

    v15 = [(HFAccessoryCategoryStatusItem *)v11 accessoryTypeGroup];
    v16 = [v15 uniqueIdentifier];
    v17 = [v16 UUIDString];
    uuidString = v11->_uuidString;
    v11->_uuidString = v17;
  }

  return v11;
}

id __63__HFAccessoryCategoryStatusItem_initWithHome_room_valueSource___block_invoke(void *a1, Class a2)
{
  v2 = [[a2 alloc] initWithHome:a1[4] room:a1[5] valueSource:a1[6]];

  return v2;
}

- (id)accessoryTypeGroupFilter
{
  v2 = [(HFAccessoryCategoryStatusItem *)self accessoryTypeGroup];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HFAccessoryCategoryStatusItem_accessoryTypeGroupFilter__block_invoke;
  aBlock[3] = &unk_277DF4280;
  v8 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);
  v5 = [v4 copy];

  return v5;
}

uint64_t __57__HFAccessoryCategoryStatusItem_accessoryTypeGroupFilter__block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v5 = [v3 actions];
    v6 = [v5 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v48;
      v9 = 0x277CD1000uLL;
      v37 = v4;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v48 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          v12 = *(v9 + 2472);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v11 characteristic];
            v14 = [v13 service];

            v15 = *(a1 + 32);
            v16 = [v14 hf_accessoryType];
            LOBYTE(v15) = [v15 containsType:v16];

            if (v15)
            {
              v31 = 1;
              v4 = v37;
              goto LABEL_33;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v11;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v18 = [v17 mediaProfiles];
              v36 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v36)
              {
                v19 = *v44;
                v38 = v5;
                v33 = v7;
                v34 = v8;
                v35 = v17;
                v32 = *v44;
                do
                {
                  v20 = 0;
                  do
                  {
                    if (*v44 != v19)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v21 = *(*(&v43 + 1) + 8 * v20);
                    v39 = 0u;
                    v40 = 0u;
                    v41 = 0u;
                    v42 = 0u;
                    v22 = [v21 accessories];
                    v23 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
                    if (v23)
                    {
                      v24 = v23;
                      v25 = *v40;
                      while (2)
                      {
                        for (j = 0; j != v24; ++j)
                        {
                          if (*v40 != v25)
                          {
                            objc_enumerationMutation(v22);
                          }

                          v27 = *(a1 + 32);
                          v28 = [*(*(&v39 + 1) + 8 * j) hf_accessoryType];
                          LOBYTE(v27) = [v27 containsType:v28];

                          if (v27)
                          {

                            v31 = 1;
                            v4 = v37;
                            v5 = v38;
                            goto LABEL_33;
                          }
                        }

                        v24 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
                        if (v24)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    ++v20;
                    v5 = v38;
                    v7 = v33;
                    v8 = v34;
                    v9 = 0x277CD1000;
                    v19 = v32;
                  }

                  while (v20 != v36);
                  v17 = v35;
                  v36 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
                }

                while (v36);
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v47 objects:v53 count:16];
        v31 = 0;
        v4 = v37;
      }

      while (v7);
    }

    else
    {
      v31 = 0;
    }

LABEL_33:
  }

  else
  {
    v31 = 1;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)sortedActionSetItemsWithProvider:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = [(HFStatusItem *)self room];
  [v4 setRoom:v6];

  v7 = [(HFAccessoryCategoryStatusItem *)self accessoryTypeGroupFilter];
  [v4 setFilter:v7];

  objc_initWeak(&location, self);
  v8 = [v4 reloadItems];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HFAccessoryCategoryStatusItem_sortedActionSetItemsWithProvider___block_invoke;
  v12[3] = &unk_277DF42A8;
  objc_copyWeak(&v14, &location);
  v9 = v5;
  v13 = v9;
  v10 = [v8 addCompletionBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __66__HFAccessoryCategoryStatusItem_sortedActionSetItemsWithProvider___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v14 allItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [HFReorderableHomeKitItemList alloc];
    v7 = [WeakRetained room];
    if (v7)
    {
      v8 = [(HFReorderableHomeKitItemList *)v6 initWithApplicationDataContainer:v7 category:@"categoryActionSets"];
    }

    else
    {
      v10 = [WeakRetained home];
      v8 = [(HFReorderableHomeKitItemList *)v6 initWithApplicationDataContainer:v10 category:@"categoryActionSets"];
    }

    v11 = [v14 allItems];
    v12 = [v11 allObjects];
    v13 = [(HFReorderableHomeKitItemList *)v8 sortedHomeKitItemComparator];
    v9 = [v12 sortedArrayUsingComparator:v13];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  [*(a1 + 32) finishWithResult:v9];
}

- (HFAccessoryTypeGroup)accessoryTypeGroup
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAccessoryCategoryStatusItem.m" lineNumber:100 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAccessoryCategoryStatusItem accessoryTypeGroup]", objc_opt_class()}];

  return 0;
}

+ (id)statusItemClasses
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HFAccessoryCategoryStatusItem.m" lineNumber:106 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAccessoryCategoryStatusItem statusItemClasses]", objc_opt_class()}];

  return 0;
}

- (id)_statusItemOfClass:(Class)a3
{
  v4 = [(HFAccessoryCategoryStatusItem *)self statusItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HFAccessoryCategoryStatusItem__statusItemOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e22_B16__0__HFStatusItem_8lu32l8;
  v7[4] = a3;
  v5 = [v4 na_firstObjectPassingTest:v7];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v47[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFStatusItem *)self room];
  v7 = [v6 accessories];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v3 = [(HFStatusItem *)self home];
    v9 = [v3 accessories];
  }

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    v10 = [(HFStatusItem *)self room];
    v11 = [v10 hf_demoModeAccessories];
    v12 = v11;
    if (!v11)
    {
      v3 = [(HFStatusItem *)self home];
      v12 = [v3 hf_demoModeAccessories];
    }

    v13 = [v9 arrayByAddingObjectsFromArray:v12];

    if (!v11)
    {
    }

    v9 = v13;
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v45[3] = &unk_277DF3888;
  v45[4] = self;
  v14 = [v9 na_firstObjectPassingTest:v45];
  v15 = v14 == 0;

  if (v15 && [(HFAccessoryCategoryStatusItem *)self hidesWithNoAccessories])
  {
    v16 = MEMORY[0x277CBEB98];
    v17 = [objc_opt_class() statusItemClasses];
    v18 = [v16 setWithArray:v17];
    v19 = [v18 na_flatMap:&__block_literal_global_18];

    v20 = MEMORY[0x277D2C900];
    v46[0] = @"hidden";
    v46[1] = @"dependentServiceTypes";
    v47[0] = MEMORY[0x277CBEC38];
    v47[1] = v19;
    v46[2] = @"dependentHomeKitClasses";
    v21 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v47[2] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
    v23 = [HFItemUpdateOutcome outcomeWithResults:v22];
    v24 = [v20 futureWithResult:v23];
  }

  else
  {
    v25 = [v5 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
    v26 = [v25 BOOLValue];

    v27 = MEMORY[0x277D2C900];
    if (v26)
    {
      v19 = [HFItemUpdateOutcome outcomeWithResults:MEMORY[0x277CBEC10]];
      v24 = [v27 futureWithResult:v19];
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x277D2C900]);
      v29 = [(HFAccessoryCategoryStatusItem *)self statusItems];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_4;
      v43[3] = &unk_277DF4310;
      v44 = v5;
      v30 = [v29 na_map:v43];

      v31 = MEMORY[0x277D2C900];
      v32 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v33 = [v31 combineAllFutures:v30 ignoringErrors:1 scheduler:v32];

      objc_initWeak(&location, self);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_5;
      v39[3] = &unk_277DF4360;
      objc_copyWeak(&v41, &location);
      v34 = v28;
      v40 = v34;
      v35 = [v33 addCompletionBlock:v39];
      v36 = v40;
      v19 = v34;

      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);

      v24 = v19;
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v24;
}

BOOL __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isNonServiceBasedAccessory])
  {
    if ([v3 hf_isVisibleInHomeStatus])
    {
      v4 = [*(a1 + 32) accessoryTypeGroup];
      v5 = [v3 hf_accessoryType];
      v6 = [v4 containsType:v5];

      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  if (![v3 hf_isMatterOnlyAccessory])
  {
    goto LABEL_9;
  }

  v7 = [[HFMatterAccessoryRepresentable alloc] initWithAccessory:v3];
  if (![(HFMatterAccessoryRepresentable *)v7 hf_isVisibleInHomeStatus])
  {

    goto LABEL_9;
  }

  v8 = [*(a1 + 32) accessoryTypeGroup];
  v9 = [(HFMatterAccessoryRepresentable *)v7 hf_accessoryType];
  v10 = [v8 containsType:v9];

  if ((v10 & 1) == 0)
  {
LABEL_9:
    v12 = [v3 hf_visibleServices];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_2;
    v15[3] = &unk_277DF4020;
    v15[4] = *(a1 + 32);
    v13 = [v12 na_firstObjectPassingTest:v15];
    v11 = v13 != 0;

    goto LABEL_10;
  }

LABEL_7:
  v11 = 1;
LABEL_10:

  return v11;
}

uint64_t __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isVisibleInHomeStatus])
  {
    v4 = [*(a1 + 32) accessoryTypeGroup];
    v5 = [v3 hf_accessoryType];
    v6 = [v4 containsType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28252BE28])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return [v4 serviceTypes];
}

void __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__2;
    v38 = __Block_byref_object_dispose__2;
    v39 = [MEMORY[0x277CBEB58] set];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__2;
    v32 = __Block_byref_object_dispose__2;
    v33 = [MEMORY[0x277CBEB58] set];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__2;
    v26 = __Block_byref_object_dispose__2;
    v27 = [MEMORY[0x277CBEB58] set];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v8 = [WeakRetained statusItems];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_31;
    v17[3] = &unk_277DF4338;
    v17[4] = &v18;
    v17[5] = &v22;
    v17[6] = &v34;
    v17[7] = &v28;
    [v8 na_each:v17];

    v9 = [MEMORY[0x277CBEB38] dictionary];
    [v9 setObject:v29[5] forKeyedSubscript:@"dependentHomeKitObjects"];
    [v9 setObject:v35[5] forKeyedSubscript:@"dependentServiceTypes"];
    [v9 setObject:v23[5] forKeyedSubscript:@"representedHomeKitObjects"];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v19[3]];
    [v9 setObject:v10 forKeyedSubscript:@"state"];

    v11 = *(a1 + 32);
    v12 = [HFItemUpdateOutcome outcomeWithResults:v9];
    [v11 finishWithResult:v12];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v13 = *(a1 + 32);
    v40 = @"hidden";
    v41[0] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v15 = [HFItemUpdateOutcome outcomeWithResults:v14];
    [v13 finishWithResult:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_31(void *a1, void *a2)
{
  v21 = a2;
  v3 = [v21 latestResults];
  v4 = [v3 objectForKeyedSubscript:@"state"];
  v5 = [v4 integerValue];

  v6 = v21;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 24);
  if (v8 <= v5)
  {
    v8 = v5;
  }

  *(v7 + 24) = v8;
  if (v5 == 2)
  {
    v9 = *(*(a1[5] + 8) + 40);
    v10 = [v21 latestResults];
    v11 = [v10 objectForKeyedSubscript:@"representedHomeKitObjects"];
    if (v11)
    {
      [v9 unionSet:v11];
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] set];
      [v9 unionSet:v12];
    }

    v6 = v21;
  }

  v13 = *(*(a1[6] + 8) + 40);
  v14 = [v6 latestResults];
  v15 = [v14 objectForKeyedSubscript:@"dependentServiceTypes"];
  if (v15)
  {
    [v13 unionSet:v15];
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
    [v13 unionSet:v16];
  }

  v17 = *(*(a1[7] + 8) + 40);
  v18 = [v21 latestResults];
  v19 = [v18 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  if (v19)
  {
    [v17 unionSet:v19];
  }

  else
  {
    v20 = [MEMORY[0x277CBEB98] set];
    [v17 unionSet:v20];
  }
}

- (void)applyInflectionToDescriptions:(id)a3
{
  v19 = a3;
  v3 = [v19 objectForKeyedSubscript:@"title"];
  v4 = [v19 objectForKeyedSubscript:@"description"];

  if (v4)
  {
    v5 = MEMORY[0x277CCA898];
    v6 = [v19 objectForKeyedSubscript:@"description"];
    v7 = [v5 hf_attributedStringWithInflectableAccessoryStatus:v6 accessoryName:v3 forcePluralAgreement:1];
    v8 = [v7 string];
    [v19 setObject:v8 forKeyedSubscript:@"description"];
  }

  v9 = [v19 objectForKeyedSubscript:@"controlDescription"];

  if (v9)
  {
    v10 = MEMORY[0x277CCA898];
    v11 = [v19 objectForKeyedSubscript:@"controlDescription"];
    v12 = [v10 hf_attributedStringWithInflectableAccessoryStatus:v11 accessoryName:v3 forcePluralAgreement:1];
    v13 = [v12 string];
    [v19 setObject:v13 forKeyedSubscript:@"controlDescription"];
  }

  v14 = [v19 objectForKeyedSubscript:@"detailedControlDescription"];

  if (v14)
  {
    v15 = MEMORY[0x277CCA898];
    v16 = [v19 objectForKeyedSubscript:@"detailedControlDescription"];
    v17 = [v15 hf_attributedStringWithInflectableAccessoryStatus:v16 accessoryName:v3 forcePluralAgreement:1];
    v18 = [v17 string];
    [v19 setObject:v18 forKeyedSubscript:@"detailedControlDescription"];
  }
}

@end