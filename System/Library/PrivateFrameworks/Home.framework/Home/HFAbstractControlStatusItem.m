@interface HFAbstractControlStatusItem
+ (BOOL)_isControlItem:(id)a3 identicalToControlItem:(id)a4;
+ (BOOL)_isControlItem:(id)a3 similarToControlItem:(id)a4;
+ (NSSet)serviceTypes;
- (id)_aggregatedValueSourceWithServiceItems:(id)a3;
- (id)_buildControlItemsForServices:(id)a3;
- (id)_buildServiceItemsForServices:(id)a3;
- (id)_primaryServiceDescriptorForServices:(id)a3;
- (id)standardResultsForBatchReadResponse:(id)a3 serviceTypes:(id)a4;
@end

@implementation HFAbstractControlStatusItem

- (id)standardResultsForBatchReadResponse:(id)a3 serviceTypes:(id)a4
{
  v20.receiver = self;
  v20.super_class = HFAbstractControlStatusItem;
  v5 = [(HFStatusItem *)&v20 standardResultsForBatchReadResponse:a3 serviceTypes:a4];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"representedHomeKitObjects"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 anyObject];
    v10 = objc_opt_class();
    v11 = objc_opt_class();

    if (v10 == v11)
    {
      v12 = [(HFAbstractControlStatusItem *)self _buildControlItemsForServices:v8];
      v13 = [(HFItem *)self latestResults];
      v14 = [v13 objectForKeyedSubscript:@"childItems"];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [MEMORY[0x277CBEB98] set];
      }

      v17 = v16;

      v18 = [v17 na_setByDiffingWithSet:v12];
      [v6 setObject:v18 forKeyedSubscript:@"childItems"];

      if ([v12 count])
      {
        [v6 setObject:&unk_282523538 forKeyedSubscript:@"statusItemCategory"];
      }
    }
  }

  return v6;
}

- (id)_buildServiceItemsForServices:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__HFAbstractControlStatusItem__buildServiceItemsForServices___block_invoke;
  v5[3] = &unk_277DF4A10;
  v5[4] = self;
  v3 = [a3 na_map:v5];

  return v3;
}

id __61__HFAbstractControlStatusItem__buildServiceItemsForServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [HFServiceItem serviceItemForService:v3 valueSource:v4];

  return v5;
}

- (id)_buildControlItemsForServices:(id)a3
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFAbstractControlStatusItem *)self _buildServiceItemsForServices:v4];
  if ([v5 count])
  {
    v29 = v4;
    v6 = [(HFAbstractControlStatusItem *)self _aggregatedValueSourceWithServiceItems:v5];
    v7 = [v5 anyObject];
    v53 = HFItemUpdateOptionDisableOptionalData;
    v54[0] = MEMORY[0x277CBEC38];
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v31 = v33 = v7;
    v27 = [v7 createControlItemsWithOptions:?];
    v8 = [v27 na_filter:&__block_literal_global_24];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __61__HFAbstractControlStatusItem__buildControlItemsForServices___block_invoke_2;
    v49[3] = &unk_277DF4A58;
    v36 = v6;
    v50 = v36;
    v9 = [v8 na_map:v49];
    v39 = [v9 mutableCopy];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = v5;
    obj = v5;
    v34 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v34)
    {
      v32 = *v46;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          if (v11 != v33)
          {
            v35 = i;
            v37 = [MEMORY[0x277CBEB58] set];
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v38 = [v11 createControlItemsWithOptions:v31];
            v12 = [v38 countByEnumeratingWithState:&v41 objects:v51 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v42;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v42 != v14)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v16 = *(*(&v41 + 1) + 8 * j);
                  v40[0] = MEMORY[0x277D85DD0];
                  v40[1] = 3221225472;
                  v40[2] = __61__HFAbstractControlStatusItem__buildControlItemsForServices___block_invoke_3;
                  v40[3] = &unk_277DF4A80;
                  v40[4] = self;
                  v40[5] = v16;
                  v17 = [v39 na_firstObjectPassingTest:v40];
                  if (v17)
                  {
                    v18 = [v16 characteristicOptions];
                    v19 = [v18 characteristicTypesForUsage:0];
                    v20 = [v19 count];

                    if (v20)
                    {
                      if ([objc_opt_class() _isControlItem:v17 identicalToControlItem:v16])
                      {
                        [v37 addObject:v17];
                      }

                      else
                      {
                        v21 = [v16 characteristicOptions];
                        v22 = [v17 characteristicOptions];
                        v23 = [v21 optionsByIntersectingWithOptions:v22];

                        if ([v17 canCopyWithCharacteristicOptions:v23])
                        {
                          v24 = [v17 copyWithCharacteristicOptions:v23 valueSource:v36];
                          [v37 addObject:v24];
                        }
                      }
                    }
                  }
                }

                v13 = [v38 countByEnumeratingWithState:&v41 objects:v51 count:16];
              }

              while (v13);
            }

            v39 = v37;
            i = v35;
          }
        }

        v34 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v34);
    }

    v5 = v28;
    v4 = v29;
  }

  else
  {
    v39 = [MEMORY[0x277CBEB98] set];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v39;
}

BOOL __61__HFAbstractControlStatusItem__buildControlItemsForServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 characteristicTypesForUsage:0];
  v4 = [v3 count] != 0;

  return v4;
}

id __61__HFAbstractControlStatusItem__buildControlItemsForServices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithValueSource:*(a1 + 32)];

  return v2;
}

uint64_t __61__HFAbstractControlStatusItem__buildControlItemsForServices___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _isControlItem:v4 similarToControlItem:*(a1 + 40)];

  return v5;
}

+ (BOOL)_isControlItem:(id)a3 similarToControlItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v7 = [v5 characteristicOptions];
    v8 = [v7 objectForKeyedSubscript:&unk_282523550];
    v9 = [v6 characteristicOptions];
    v10 = [v9 objectForKeyedSubscript:&unk_282523550];
    v11 = [v8 intersectsSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_isControlItem:(id)a3 identicalToControlItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v7 = [v5 characteristicOptions];
    v8 = [v6 characteristicOptions];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_primaryServiceDescriptorForServices:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 na_map:&__block_literal_global_12_0];
  v5 = [v4 anyObject];
  if ([v4 count] != 1)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138413058;
      v10 = self;
      v11 = 2048;
      v12 = [v4 count];
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@ Invalid number of service descriptors (expected 1, found %lu): %@. Defaulting to %@.", &v9, 0x2Au);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

id __68__HFAbstractControlStatusItem__primaryServiceDescriptorForServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isChildService])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 hf_serviceDescriptor];
  }

  return v3;
}

- (id)_aggregatedValueSourceWithServiceItems:(id)a3
{
  v4 = [a3 na_flatMap:&__block_literal_global_15_0];
  v5 = [(HFAbstractControlStatusItem *)self _primaryServiceDescriptorForServices:v4];
  v6 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v7 = [(HFStatusItem *)self valueSource];
  v8 = [(HFSimpleAggregatedCharacteristicValueSource *)v6 initWithValueSource:v7 services:v4 primaryServiceDescriptor:v5];

  return v8;
}

id __70__HFAbstractControlStatusItem__aggregatedValueSourceWithServiceItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 service];
  v4 = [v3 hf_childServices];
  v5 = [v2 service];

  v6 = [v4 setByAddingObject:v5];

  return v6;
}

+ (NSSet)serviceTypes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HFAbstractControlStatusItem.m" lineNumber:179 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractControlStatusItem serviceTypes]", objc_opt_class()}];

  return 0;
}

@end