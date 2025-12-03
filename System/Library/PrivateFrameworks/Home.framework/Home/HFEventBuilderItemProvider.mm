@interface HFEventBuilderItemProvider
- (HFEventBuilderItemProvider)initWithEventBuilders:(id)builders inHome:(id)home;
- (HFEventBuilderItemProvider)initWithTriggerBuilder:(id)builder;
- (HFTriggerNaturalLanguageOptions)naturalLanguageOptions;
- (NSSet)eventBuilders;
- (id)_reloadItems;
- (id)eventBuilderGroupsForEventBuilders:(id)builders;
- (id)reloadBuilderGroups;
- (id)reloadItems;
- (unint64_t)nameType;
- (void)setNameType:(unint64_t)type;
@end

@implementation HFEventBuilderItemProvider

- (HFEventBuilderItemProvider)initWithTriggerBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = HFEventBuilderItemProvider;
  v6 = [(HFItemProvider *)&v12 init];
  if (v6)
  {
    home = [builderCopy home];
    home = v6->_home;
    v6->_home = home;

    objc_storeStrong(&v6->_triggerBuilder, builder);
    v9 = [MEMORY[0x277CBEB58] set];
    eventBuilderItems = v6->_eventBuilderItems;
    v6->_eventBuilderItems = v9;
  }

  return v6;
}

- (HFEventBuilderItemProvider)initWithEventBuilders:(id)builders inHome:(id)home
{
  buildersCopy = builders;
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HFEventBuilderItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_eventBuilders, builders);
    v11 = [MEMORY[0x277CBEB58] set];
    eventBuilderItems = v10->_eventBuilderItems;
    v10->_eventBuilderItems = v11;
  }

  return v10;
}

- (NSSet)eventBuilders
{
  eventBuilders = self->_eventBuilders;
  if (!eventBuilders)
  {
    v4 = MEMORY[0x277CBEB98];
    triggerBuilder = [(HFEventBuilderItemProvider *)self triggerBuilder];
    eventBuilders = [triggerBuilder eventBuilders];
    v7 = [v4 setWithArray:eventBuilders];
    v8 = self->_eventBuilders;
    self->_eventBuilders = v7;

    eventBuilders = self->_eventBuilders;
  }

  return eventBuilders;
}

- (HFTriggerNaturalLanguageOptions)naturalLanguageOptions
{
  naturalLanguageOptions = self->_naturalLanguageOptions;
  if (!naturalLanguageOptions)
  {
    v4 = [HFTriggerNaturalLanguageOptions alloc];
    home = [(HFEventBuilderItemProvider *)self home];
    v6 = [(HFTriggerNaturalLanguageOptions *)v4 initWithHome:home nameType:2];
    v7 = self->_naturalLanguageOptions;
    self->_naturalLanguageOptions = v6;

    naturalLanguageOptions = self->_naturalLanguageOptions;
  }

  return naturalLanguageOptions;
}

- (unint64_t)nameType
{
  naturalLanguageOptions = [(HFEventBuilderItemProvider *)self naturalLanguageOptions];
  nameType = [naturalLanguageOptions nameType];

  return nameType;
}

- (void)setNameType:(unint64_t)type
{
  naturalLanguageOptions = [(HFEventBuilderItemProvider *)self naturalLanguageOptions];
  [naturalLanguageOptions setNameType:type];
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  _reloadItems = [(HFEventBuilderItemProvider *)self _reloadItems];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__HFEventBuilderItemProvider_reloadItems__block_invoke;
  v6[3] = &unk_277DF30B8;
  objc_copyWeak(&v7, &location);
  v4 = [_reloadItems flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __41__HFEventBuilderItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained eventBuilderItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained eventBuilderItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)_reloadItems
{
  reloadBuilderGroups = [(HFEventBuilderItemProvider *)self reloadBuilderGroups];
  allObjects = [reloadBuilderGroups allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HFEventBuilderItemProvider__reloadItems__block_invoke_4;
  v7[3] = &unk_277DF9990;
  v7[4] = self;
  v5 = [(HFItemProvider *)self reloadItemsWithObjects:allObjects keyAdaptor:&__block_literal_global_80 itemAdaptor:&__block_literal_global_7_3 filter:&__block_literal_global_10_3 itemMap:v7];

  return v5;
}

id __42__HFEventBuilderItemProvider__reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBuilders];
  v5 = [HFEventBuilderItem eventBuilderItemForEventBuilders:v4];

  v6 = [v3 comparisonKey];

  [v5 setComparisonKey:v6];
  v7 = [*(a1 + 32) naturalLanguageOptions];
  v8 = [v7 copy];
  [v5 setNaturalLanguageOptions:v8];

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [*(a1 + 32) triggerBuilder];
  [v11 setContainingTriggerBuilder:v12];

  return v9;
}

- (id)reloadBuilderGroups
{
  lastUpdateEventBuilders = [(HFEventBuilderItemProvider *)self lastUpdateEventBuilders];
  v4 = lastUpdateEventBuilders;
  if (lastUpdateEventBuilders)
  {
    v5 = lastUpdateEventBuilders;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v6 = v5;

  eventBuilders = [(HFEventBuilderItemProvider *)self eventBuilders];
  v8 = [HFSetDiff diffFromSet:v6 toSet:eventBuilders];

  lastUpdateEventGroups = [(HFEventBuilderItemProvider *)self lastUpdateEventGroups];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__HFEventBuilderItemProvider_reloadBuilderGroups__block_invoke;
  v24[3] = &unk_277DF99B8;
  v10 = v8;
  v25 = v10;
  v11 = [lastUpdateEventGroups na_filter:v24];

  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CBEB58] set];
  }

  v15 = v14;

  additions = [v10 additions];
  v17 = [additions mutableCopy];

  updates = [v10 updates];
  [v17 unionSet:updates];

  v19 = [(HFEventBuilderItemProvider *)self eventBuilderGroupsForEventBuilders:v17];
  [v15 unionSet:v19];

  v20 = [v15 copy];
  [(HFEventBuilderItemProvider *)self setLastUpdateEventGroups:v20];

  eventBuilders2 = [(HFEventBuilderItemProvider *)self eventBuilders];
  v22 = [eventBuilders2 copy];
  [(HFEventBuilderItemProvider *)self setLastUpdateEventBuilders:v22];

  return v15;
}

uint64_t __49__HFEventBuilderItemProvider_reloadBuilderGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBuilders];
  v5 = [*(a1 + 32) additions];
  if ([v4 intersectsSet:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 eventBuilders];
    v8 = [*(a1 + 32) deletions];
    if ([v7 intersectsSet:v8])
    {
      v6 = 0;
    }

    else
    {
      v9 = [v3 eventBuilders];
      v10 = [*(a1 + 32) updates];
      v6 = [v9 intersectsSet:v10] ^ 1;
    }
  }

  return v6;
}

- (id)eventBuilderGroupsForEventBuilders:(id)builders
{
  v4 = MEMORY[0x277CBEB58];
  buildersCopy = builders;
  v6 = [v4 set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke;
  v21[3] = &unk_277DF9A08;
  v21[4] = self;
  v22 = dictionary;
  v8 = dictionary;
  [buildersCopy na_each:v21];
  v9 = [buildersCopy mutableCopy];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_3;
  v18[3] = &unk_277DF9A98;
  v18[4] = self;
  v19 = v9;
  v10 = v6;
  v20 = v10;
  v11 = v9;
  [v8 na_each:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_7;
  v16[3] = &unk_277DF4D70;
  v12 = v10;
  v17 = v12;
  [v11 na_each:v16];
  v13 = v17;
  v14 = v12;

  return v12;
}

void __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [*(a1 + 32) home];
    v8 = [v6 characteristic];
    v9 = [v8 service];
    v10 = [v7 hf_serviceGroupsForService:v9];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_2;
    v11[3] = &unk_277DF99E0;
    v12 = *(a1 + 40);
    v13 = v4;
    [v10 na_each:v11];
  }
}

void __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  v11 = v8;

  [v11 addObject:*(a1 + 40)];
  v9 = *(a1 + 32);
  v10 = [v4 uniqueIdentifier];

  [v9 setObject:v11 forKeyedSubscript:v10];
}

void __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 home];
  v9 = [v8 hf_serviceGroupWithIdentifier:v7];

  if ([v5 count] >= 2)
  {
    v10 = [v5 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_22_3];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_5;
    v11[3] = &unk_277DF9A70;
    v12 = v5;
    v13 = v9;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    [v10 enumerateKeysAndObjectsUsingBlock:v11];
  }
}

id __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 triggerValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v4 = MEMORY[0x277CCACA8];
    v5 = v2;
    v6 = [v5 thresholdRange];
    v7 = [v6 minValue];
    v8 = [v5 thresholdRange];
    v9 = [v8 maxValue];
    v3 = [v4 stringWithFormat:@"%@-%@", v7, v9];
  }

  v10 = [v2 characteristic];

  v11 = 0;
  if (v3 && v10)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = [v10 characteristicType];
    v11 = [v12 stringWithFormat:@"%@:%@:%@", v13, v14, v3];
  }

LABEL_9:

  return v11;
}

void __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([*(a1 + 32) count] >= 2)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v7 = [v6 na_map:&__block_literal_global_32_0];
    v8 = MEMORY[0x277CBEB98];
    v9 = [*(a1 + 40) services];
    v10 = [v8 setWithArray:v9];
    v11 = [v7 isEqualToSet:v10];

    if (v11)
    {
      v12 = *(a1 + 48);
      v13 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
      [v12 minusSet:v13];

      v14 = [HFEventBuilderItemProviderEventGroup eventGroupWithBuilders:v6];
      [v14 setComparisonKey:v15];
      [*(a1 + 56) addObject:v14];
    }
  }
}

id __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 service];

  return v3;
}

void __65__HFEventBuilderItemProvider_eventBuilderGroupsForEventBuilders___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = [v3 setWithObject:v4];
  v7 = [HFEventBuilderItemProviderEventGroup eventGroupWithBuilders:v5];

  v6 = [v4 comparisonKey];

  [v7 setComparisonKey:v6];
  [*(a1 + 32) addObject:v7];
}

@end