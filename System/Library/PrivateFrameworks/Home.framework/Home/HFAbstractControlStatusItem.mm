@interface HFAbstractControlStatusItem
+ (BOOL)_isControlItem:(id)item identicalToControlItem:(id)controlItem;
+ (BOOL)_isControlItem:(id)item similarToControlItem:(id)controlItem;
+ (NSSet)serviceTypes;
- (id)_aggregatedValueSourceWithServiceItems:(id)items;
- (id)_buildControlItemsForServices:(id)services;
- (id)_buildServiceItemsForServices:(id)services;
- (id)_primaryServiceDescriptorForServices:(id)services;
- (id)standardResultsForBatchReadResponse:(id)response serviceTypes:(id)types;
@end

@implementation HFAbstractControlStatusItem

- (id)standardResultsForBatchReadResponse:(id)response serviceTypes:(id)types
{
  v20.receiver = self;
  v20.super_class = HFAbstractControlStatusItem;
  v5 = [(HFStatusItem *)&v20 standardResultsForBatchReadResponse:response serviceTypes:types];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"representedHomeKitObjects"];
  v8 = v7;
  if (v7)
  {
    anyObject = [v7 anyObject];
    v10 = objc_opt_class();
    v11 = objc_opt_class();

    if (v10 == v11)
    {
      v12 = [(HFAbstractControlStatusItem *)self _buildControlItemsForServices:v8];
      latestResults = [(HFItem *)self latestResults];
      v14 = [latestResults objectForKeyedSubscript:@"childItems"];
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

- (id)_buildServiceItemsForServices:(id)services
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__HFAbstractControlStatusItem__buildServiceItemsForServices___block_invoke;
  v5[3] = &unk_277DF4A10;
  v5[4] = self;
  v3 = [services na_map:v5];

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

- (id)_buildControlItemsForServices:(id)services
{
  v54[1] = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v5 = [(HFAbstractControlStatusItem *)self _buildServiceItemsForServices:servicesCopy];
  if ([v5 count])
  {
    v29 = servicesCopy;
    v6 = [(HFAbstractControlStatusItem *)self _aggregatedValueSourceWithServiceItems:v5];
    anyObject = [v5 anyObject];
    v53 = HFItemUpdateOptionDisableOptionalData;
    v54[0] = MEMORY[0x277CBEC38];
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v31 = v33 = anyObject;
    v27 = [anyObject createControlItemsWithOptions:?];
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
                    characteristicOptions = [v16 characteristicOptions];
                    v19 = [characteristicOptions characteristicTypesForUsage:0];
                    v20 = [v19 count];

                    if (v20)
                    {
                      if ([objc_opt_class() _isControlItem:v17 identicalToControlItem:v16])
                      {
                        [v37 addObject:v17];
                      }

                      else
                      {
                        characteristicOptions2 = [v16 characteristicOptions];
                        characteristicOptions3 = [v17 characteristicOptions];
                        v23 = [characteristicOptions2 optionsByIntersectingWithOptions:characteristicOptions3];

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
    servicesCopy = v29;
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

+ (BOOL)_isControlItem:(id)item similarToControlItem:(id)controlItem
{
  itemCopy = item;
  controlItemCopy = controlItem;
  if ([itemCopy isMemberOfClass:objc_opt_class()])
  {
    characteristicOptions = [itemCopy characteristicOptions];
    v8 = [characteristicOptions objectForKeyedSubscript:&unk_282523550];
    characteristicOptions2 = [controlItemCopy characteristicOptions];
    v10 = [characteristicOptions2 objectForKeyedSubscript:&unk_282523550];
    v11 = [v8 intersectsSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_isControlItem:(id)item identicalToControlItem:(id)controlItem
{
  itemCopy = item;
  controlItemCopy = controlItem;
  if ([itemCopy isMemberOfClass:objc_opt_class()])
  {
    characteristicOptions = [itemCopy characteristicOptions];
    characteristicOptions2 = [controlItemCopy characteristicOptions];
    v9 = [characteristicOptions isEqual:characteristicOptions2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_primaryServiceDescriptorForServices:(id)services
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [services na_map:&__block_literal_global_12_0];
  anyObject = [v4 anyObject];
  if ([v4 count] != 1)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138413058;
      selfCopy = self;
      v11 = 2048;
      v12 = [v4 count];
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = anyObject;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@ Invalid number of service descriptors (expected 1, found %lu): %@. Defaulting to %@.", &v9, 0x2Au);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return anyObject;
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

- (id)_aggregatedValueSourceWithServiceItems:(id)items
{
  v4 = [items na_flatMap:&__block_literal_global_15_0];
  v5 = [(HFAbstractControlStatusItem *)self _primaryServiceDescriptorForServices:v4];
  v6 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  valueSource = [(HFStatusItem *)self valueSource];
  v8 = [(HFSimpleAggregatedCharacteristicValueSource *)v6 initWithValueSource:valueSource services:v4 primaryServiceDescriptor:v5];

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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAbstractControlStatusItem.m" lineNumber:179 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractControlStatusItem serviceTypes]", objc_opt_class()}];

  return 0;
}

@end