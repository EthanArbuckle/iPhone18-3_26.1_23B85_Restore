@interface HUAvailableRelatedTriggerItemProvider
- (BOOL)relatedItemsAffectedByTrigger:(id)trigger;
- (HUAvailableRelatedTriggerItemProvider)initWithHome:(id)home relatedItems:(id)items context:(id)context;
- (NSSet)itemProviders;
- (id)invalidationReasons;
- (id)itemsToHideInSet:(id)set;
- (id)recommendationsFilter;
- (id)reloadAvailableTriggerItemsWithObjects:(id)objects;
- (id)reloadItems;
- (void)_buildProviders;
- (void)disableUpdatesWithReason:(id)reason;
- (void)endDisableUpdatesWithReason:(id)reason;
- (void)setRecommendationsFilter:(id)filter;
- (void)setTriggerFilter:(id)filter;
@end

@implementation HUAvailableRelatedTriggerItemProvider

- (HUAvailableRelatedTriggerItemProvider)initWithHome:(id)home relatedItems:(id)items context:(id)context
{
  homeCopy = home;
  itemsCopy = items;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = HUAvailableRelatedTriggerItemProvider;
  v12 = [(HFItemProvider *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_relatedItems, items);
    objc_storeStrong(&v13->_home, home);
    objc_storeStrong(&v13->_context, context);
    v14 = [MEMORY[0x277CBEB58] set];
    triggerItems = v13->_triggerItems;
    v13->_triggerItems = v14;

    v16 = [MEMORY[0x277CBEB58] set];
    updatesDisabledReasons = v13->_updatesDisabledReasons;
    v13->_updatesDisabledReasons = v16;

    [(HUAvailableRelatedTriggerItemProvider *)v13 _buildProviders];
  }

  return v13;
}

- (void)_buildProviders
{
  v3 = [HUTriggerItemProvider alloc];
  home = [(HUAvailableRelatedTriggerItemProvider *)self home];
  v5 = [(HUTriggerItemProvider *)v3 initWithHome:home];
  [(HUAvailableRelatedTriggerItemProvider *)self setRelatedActiveTriggerItemProvider:v5];

  v6 = objc_alloc(MEMORY[0x277D17E58]);
  home2 = [(HUAvailableRelatedTriggerItemProvider *)self home];
  relatedItems = [(HUAvailableRelatedTriggerItemProvider *)self relatedItems];
  v9 = [v6 initWithHome:home2 andServiceLikeItems:relatedItems];
  [(HUAvailableRelatedTriggerItemProvider *)self setRecommendationItemProvider:v9];

  context = [(HUAvailableRelatedTriggerItemProvider *)self context];
  engineOptions = [context engineOptions];
  recommendationItemProvider = [(HUAvailableRelatedTriggerItemProvider *)self recommendationItemProvider];
  [recommendationItemProvider setEngineOptions:engineOptions | 0x80];
}

- (void)setTriggerFilter:(id)filter
{
  filterCopy = filter;
  v5 = _Block_copy(filterCopy);
  triggerFilter = self->_triggerFilter;
  self->_triggerFilter = v5;

  if (filterCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HUAvailableRelatedTriggerItemProvider_setTriggerFilter___block_invoke;
    v9[3] = &unk_277DC33F8;
    v10 = filterCopy;
    relatedActiveTriggerItemProvider = [(HUAvailableRelatedTriggerItemProvider *)self relatedActiveTriggerItemProvider];
    [relatedActiveTriggerItemProvider setFilter:v9];
  }

  else
  {
    relatedActiveTriggerItemProvider2 = [(HUAvailableRelatedTriggerItemProvider *)self relatedActiveTriggerItemProvider];
    [relatedActiveTriggerItemProvider2 setFilter:0];
  }
}

uint64_t __58__HUAvailableRelatedTriggerItemProvider_setTriggerFilter___block_invoke(uint64_t a1, void *a2)
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
    v7 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setRecommendationsFilter:(id)filter
{
  filterCopy = filter;
  recommendationItemProvider = [(HUAvailableRelatedTriggerItemProvider *)self recommendationItemProvider];
  [recommendationItemProvider setFilter:filterCopy];
}

- (id)recommendationsFilter
{
  recommendationItemProvider = [(HUAvailableRelatedTriggerItemProvider *)self recommendationItemProvider];
  filter = [recommendationItemProvider filter];

  return filter;
}

- (NSSet)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  recommendationItemProvider = [(HUAvailableRelatedTriggerItemProvider *)self recommendationItemProvider];
  relatedActiveTriggerItemProvider = [(HUAvailableRelatedTriggerItemProvider *)self relatedActiveTriggerItemProvider];
  v6 = [v3 setWithObjects:{recommendationItemProvider, relatedActiveTriggerItemProvider, 0}];

  return v6;
}

- (id)reloadItems
{
  updatesDisabledReasons = [(HUAvailableRelatedTriggerItemProvider *)self updatesDisabledReasons];
  v4 = [updatesDisabledReasons count];

  if (v4)
  {
    v5 = MEMORY[0x277D2C900];
    v6 = objc_alloc(MEMORY[0x277D14768]);
    triggerItems = [(HUAvailableRelatedTriggerItemProvider *)self triggerItems];
    v8 = [v6 initWithAddedItems:0 removedItems:0 existingItems:triggerItems];
    v9 = [v5 futureWithResult:v8];
  }

  else
  {
    itemProviders = [(HUAvailableRelatedTriggerItemProvider *)self itemProviders];
    v11 = [itemProviders na_map:&__block_literal_global_251];

    v12 = MEMORY[0x277D2C900];
    allObjects = [v11 allObjects];
    v14 = [v12 combineAllFutures:allObjects];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_2;
    v18[3] = &unk_277DB7A90;
    v18[4] = self;
    v15 = [v14 flatMap:v18];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_7;
    v17[3] = &unk_277DB7F80;
    v17[4] = self;
    v9 = [v15 flatMap:v17];
  }

  return v9;
}

id __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_3;
  v15[3] = &unk_277DC3440;
  v16 = v5;
  v17 = v4;
  v18 = v6;
  v7 = v6;
  v8 = v4;
  v9 = v5;
  [v3 na_each:v15];
  v10 = *(a1 + 32);
  v11 = [v8 setByAddingObjectsFromSet:v9];
  v12 = [v11 allObjects];
  v13 = [v10 reloadAvailableTriggerItemsWithObjects:v12];

  return v13;
}

void __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 existingItems];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_4;
  v11[3] = &unk_277DBAF68;
  v12 = a1[4];
  [v4 na_each:v11];

  v5 = [v3 addedItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_5;
  v9[3] = &unk_277DBAF68;
  v10 = a1[5];
  [v5 na_each:v9];

  v6 = [v3 removedItems];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_6;
  v7[3] = &unk_277DBAF68;
  v8 = a1[6];
  [v6 na_each:v7];
}

void __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if ([v6 conformsToProtocol:&unk_282571908])
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 na_safeAddObject:v5];
}

void __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if ([v6 conformsToProtocol:&unk_282571908])
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 na_safeAddObject:v5];
}

void __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_6(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if ([v6 conformsToProtocol:&unk_282571908])
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 na_safeAddObject:v5];
}

id __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 defaultActiveValue];

  if (v5)
  {
    v6 = [v3 addedItems];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_8;
    v13[3] = &unk_277DC3468;
    v13[4] = *(a1 + 32);
    [v6 na_each:v13];
  }

  v7 = [*(a1 + 32) triggerItems];
  v8 = [v3 addedItems];
  [v7 unionSet:v8];

  v9 = [*(a1 + 32) triggerItems];
  v10 = [v3 removedItems];
  [v9 minusSet:v10];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v11;
}

void __52__HUAvailableRelatedTriggerItemProvider_reloadItems__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 context];
  v4 = [v5 defaultActiveValue];
  [v3 setActive:{objc_msgSend(v4, "BOOLValue")}];
}

- (id)itemsToHideInSet:(id)set
{
  setCopy = set;
  triggerItems = [(HUAvailableRelatedTriggerItemProvider *)self triggerItems];
  v6 = [triggerItems na_setByIntersectingWithSet:setCopy];

  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [v6 na_filter:&__block_literal_global_64_1];
  triggerItems2 = [(HUAvailableRelatedTriggerItemProvider *)self triggerItems];
  v10 = [triggerItems2 na_filter:&__block_literal_global_66_5];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__HUAvailableRelatedTriggerItemProvider_itemsToHideInSet___block_invoke_3;
  v23[3] = &unk_277DC34B0;
  v23[4] = self;
  v11 = [v8 na_filter:v23];
  [v7 unionSet:v11];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__HUAvailableRelatedTriggerItemProvider_itemsToHideInSet___block_invoke_4;
  v22[3] = &unk_277DC34D8;
  v22[4] = self;
  v12 = [v10 na_dictionaryWithKeyGenerator:v22];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __58__HUAvailableRelatedTriggerItemProvider_itemsToHideInSet___block_invoke_5;
  v19 = &unk_277DC3500;
  selfCopy = self;
  v21 = v12;
  v13 = v12;
  v14 = [v8 na_filter:&v16];
  [v7 unionSet:{v14, v16, v17, v18, v19, selfCopy}];

  return v7;
}

BOOL __58__HUAvailableRelatedTriggerItemProvider_itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 triggerItem];
  v3 = v2 != 0;

  return v3;
}

BOOL __58__HUAvailableRelatedTriggerItemProvider_itemsToHideInSet___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 recommendationItem];
  v3 = v2 != 0;

  return v3;
}

uint64_t __58__HUAvailableRelatedTriggerItemProvider_itemsToHideInSet___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 trigger];
  if (v3)
  {
    v4 = [*(a1 + 32) relatedItemsAffectedByTrigger:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __58__HUAvailableRelatedTriggerItemProvider_itemsToHideInSet___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 trigger];
  v4 = [*(a1 + 32) home];
  v5 = [v3 hre_triggerComparisonIdentifierInHome:v4];

  return v5;
}

uint64_t __58__HUAvailableRelatedTriggerItemProvider_itemsToHideInSet___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 triggerItem];

  if (v4 && ([v3 trigger], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEnabled"), v5, v6))
  {
    v7 = [v3 trigger];
    v8 = [*(a1 + 32) home];
    v9 = [v7 hre_triggerComparisonIdentifierInHome:v8];

    v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
    v11 = [v10 recommendationItem];
    v12 = [v11 recommendation];

    objc_opt_class();
    v13 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = MEMORY[0x277D14C48];
    v17 = [v3 trigger];
    v18 = [*(a1 + 32) home];
    v19 = objc_alloc_init(HUTriggerBuilderContext);
    v20 = [v16 triggerBuilderForTrigger:v17 inHome:v18 context:v19];

    v21 = [v15 compareForMatchingToTrigger:v20];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 hasNoDifferencesHigherThanPriority:0];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)relatedItemsAffectedByTrigger:(id)trigger
{
  triggerCopy = trigger;
  relatedItems = [(HUAvailableRelatedTriggerItemProvider *)self relatedItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HUAvailableRelatedTriggerItemProvider_relatedItemsAffectedByTrigger___block_invoke;
  v9[3] = &unk_277DC3528;
  v10 = triggerCopy;
  v6 = triggerCopy;
  v7 = [relatedItems na_any:v9];

  return v7;
}

uint64_t __71__HUAvailableRelatedTriggerItemProvider_relatedItemsAffectedByTrigger___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 homeKitObject];
  v4 = [v2 hf_affectsHomeKitObject:v3];

  return v4;
}

- (id)reloadAvailableTriggerItemsWithObjects:(id)objects
{
  v5[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__HUAvailableRelatedTriggerItemProvider_reloadAvailableTriggerItemsWithObjects___block_invoke_3;
  v6[3] = &unk_277DC3590;
  v6[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__HUAvailableRelatedTriggerItemProvider_reloadAvailableTriggerItemsWithObjects___block_invoke_4;
  v5[3] = &unk_277DC35B8;
  v3 = [(HFItemProvider *)self reloadItemsWithObjects:objects keyAdaptor:&__block_literal_global_74_2 itemAdaptor:&__block_literal_global_76_1 filter:v6 itemMap:v5];

  return v3;
}

uint64_t __80__HUAvailableRelatedTriggerItemProvider_reloadAvailableTriggerItemsWithObjects___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 trigger];
    v6 = [v4 relatedItemsAffectedByTrigger:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

HUAvailableTriggerItem *__80__HUAvailableRelatedTriggerItemProvider_reloadAvailableTriggerItemsWithObjects___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HUAvailableTriggerItem alloc];
  v5 = [*(a1 + 32) home];
  v6 = [*(a1 + 32) relatedItems];
  v7 = [(HUAvailableTriggerItem *)v4 initWithHome:v5 containingItem:v3 relatedToServiceLikeItems:v6];

  return v7;
}

- (id)invalidationReasons
{
  v8.receiver = self;
  v8.super_class = HUAvailableRelatedTriggerItemProvider;
  invalidationReasons = [(HFItemProvider *)&v8 invalidationReasons];
  itemProviders = [(HUAvailableRelatedTriggerItemProvider *)self itemProviders];
  v5 = [itemProviders na_flatMap:&__block_literal_global_85_1];
  v6 = [invalidationReasons setByAddingObjectsFromSet:v5];

  return v6;
}

- (void)disableUpdatesWithReason:(id)reason
{
  reasonCopy = reason;
  updatesDisabledReasons = [(HUAvailableRelatedTriggerItemProvider *)self updatesDisabledReasons];
  [updatesDisabledReasons addObject:reasonCopy];
}

- (void)endDisableUpdatesWithReason:(id)reason
{
  reasonCopy = reason;
  updatesDisabledReasons = [(HUAvailableRelatedTriggerItemProvider *)self updatesDisabledReasons];
  [updatesDisabledReasons removeObject:reasonCopy];
}

@end