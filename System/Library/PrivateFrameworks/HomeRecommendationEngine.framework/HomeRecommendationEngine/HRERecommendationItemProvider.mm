@interface HRERecommendationItemProvider
+ (id)_highestRankRecommendations:(id)a3 forKeyGenerator:(id)a4;
+ (id)filterRecommendations:(id)a3;
- (HRERecommendationItemProvider)init;
- (HRERecommendationItemProvider)initWithHome:(id)a3 andAccessoryTypeGroup:(id)a4;
- (HRERecommendationItemProvider)initWithHome:(id)a3 andServiceLikeItems:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
- (id)reloadItemsWithRecommendations:(id)a3 filter:(id)a4 itemMap:(id)a5;
@end

@implementation HRERecommendationItemProvider

- (HRERecommendationItemProvider)initWithHome:(id)a3 andServiceLikeItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HRERecommendationItemProvider;
  v9 = [(HFItemProvider *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_serviceLikeItems, a4);
    accessoryTypeGroup = v10->_accessoryTypeGroup;
    v10->_accessoryTypeGroup = 0;

    v12 = objc_opt_new();
    recommendationItems = v10->_recommendationItems;
    v10->_recommendationItems = v12;

    v14 = objc_alloc_init(HRERecommendationEngine);
    recommendationEngine = v10->_recommendationEngine;
    v10->_recommendationEngine = v14;

    v10->_updatesDisabled = 0;
    v10->_engineOptions = 83;
    v10->_firstUpdateComplete = 0;
  }

  return v10;
}

- (HRERecommendationItemProvider)initWithHome:(id)a3 andAccessoryTypeGroup:(id)a4
{
  v7 = a4;
  v8 = [(HRERecommendationItemProvider *)self initWithHome:a3 andServiceLikeItems:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryTypeGroup, a4);
  }

  return v9;
}

- (HRERecommendationItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HRERecommendationItemProvider.m" lineNumber:52 description:{@"%s is unavailable; use %@ instead", "-[HRERecommendationItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HRERecommendationItemProvider *)self home];
  v6 = [(HRERecommendationItemProvider *)self serviceLikeItems];
  v7 = [v4 initWithHome:v5 andServiceLikeItems:v6];

  [v7 setEngineOptions:{-[HRERecommendationItemProvider engineOptions](self, "engineOptions")}];
  v8 = [(HRERecommendationItemProvider *)self filter];
  [v7 setFilter:v8];

  return v7;
}

- (id)reloadItems
{
  if ([(HRERecommendationItemProvider *)self updatesDisabled])
  {
    v3 = MEMORY[0x277D2C900];
    v4 = objc_alloc(MEMORY[0x277D14768]);
    v5 = [(HRERecommendationItemProvider *)self items];
    v6 = [v4 initWithAddedItems:0 removedItems:0 existingItems:v5];
    v7 = [v3 futureWithResult:v6];
  }

  else
  {
    v8 = [(HRERecommendationItemProvider *)self accessoryTypeGroup];
    v9 = [(HRERecommendationItemProvider *)self recommendationEngine];
    if (v8)
    {
      v10 = [(HRERecommendationItemProvider *)self accessoryTypeGroup];
      v11 = [(HRERecommendationItemProvider *)self home];
      [v9 recommendationsForAccessoryTypeGroup:v10 inHome:v11 options:{-[HRERecommendationItemProvider engineOptions](self, "engineOptions")}];
    }

    else
    {
      v10 = [(HRERecommendationItemProvider *)self serviceLikeItems];
      v11 = [(HRERecommendationItemProvider *)self home];
      [v9 generateRecommendationsForServiceLikeItems:v10 inHome:v11 options:{-[HRERecommendationItemProvider engineOptions](self, "engineOptions")}];
    }
    v12 = ;

    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__HRERecommendationItemProvider_reloadItems__block_invoke;
    v17[3] = &unk_279777268;
    objc_copyWeak(&v18, &location);
    v13 = [v12 flatMap:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__HRERecommendationItemProvider_reloadItems__block_invoke_7;
    v15[3] = &unk_279777290;
    objc_copyWeak(&v16, &location);
    v7 = [v13 flatMap:v15];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __44__HRERecommendationItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__HRERecommendationItemProvider_reloadItems__block_invoke_2;
  v17[3] = &unk_279776AD0;
  v17[4] = WeakRetained;
  v5 = [v3 na_filter:v17];
  v6 = [objc_opt_class() filterRecommendations:v5];

  v7 = [v3 na_dictionaryWithKeyGenerator:&__block_literal_global_13];

  v8 = [WeakRetained recommendationItems];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __44__HRERecommendationItemProvider_reloadItems__block_invoke_4;
  v15 = &unk_279777220;
  v16 = v7;
  v9 = v7;
  [v8 na_each:&v12];

  v10 = [WeakRetained reloadItemsWithRecommendations:v6 filter:&__block_literal_global_14_1 itemMap:{&__block_literal_global_17_0, v12, v13, v14, v15}];

  return v10;
}

uint64_t __44__HRERecommendationItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) filter];
  if (v4)
  {
    v5 = [*(a1 + 32) filter];
    v6 = (v5)[2](v5, v3);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void __44__HRERecommendationItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 recommendation];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (v7)
  {
    [v8 setRecommendation:v7];
  }
}

HRERecommendationItem *__44__HRERecommendationItemProvider_reloadItems__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HRERecommendationItem alloc] initWithRecommendation:v2];

  return v3;
}

id __44__HRERecommendationItemProvider_reloadItems__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained recommendationItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained recommendationItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  [WeakRetained setFirstUpdateComplete:1];
  v9 = [WeakRetained configureBlock];

  if (v9)
  {
    v10 = [v3 addedItems];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__HRERecommendationItemProvider_reloadItems__block_invoke_8;
    v13[3] = &unk_279777220;
    v13[4] = WeakRetained;
    [v10 na_each:v13];
  }

  v11 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v11;
}

void __44__HRERecommendationItemProvider_reloadItems__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 configureBlock];
  v4[2](v4, v3);
}

- (id)reloadItemsWithRecommendations:(id)a3 filter:(id)a4 itemMap:(id)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HRERecommendationItemProvider_reloadItemsWithRecommendations_filter_itemMap___block_invoke_2;
  v7[3] = &unk_2797772B8;
  v7[4] = self;
  v7[5] = a2;
  v5 = [(HFItemProvider *)self reloadItemsWithObjects:a3 keyAdaptor:&__block_literal_global_22_1 itemAdaptor:v7 filter:a4 itemMap:a5];

  return v5;
}

id __79__HRERecommendationItemProvider_reloadItemsWithRecommendations_filter_itemMap___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HRERecommendationItemProvider.m" lineNumber:118 description:@"HRERecommendationItemProvider expects all existing items to be recommendation items"];
  }

  v4 = [v3 recommendation];
  v5 = [v4 uniqueIdentifier];

  return v5;
}

- (id)items
{
  v2 = [(HRERecommendationItemProvider *)self recommendationItems];
  v3 = [v2 copy];

  return v3;
}

- (id)invalidationReasons
{
  v12[8] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HRERecommendationItemProvider;
  v2 = [(HFItemProvider *)&v11 invalidationReasons];
  v3 = *MEMORY[0x277D13B30];
  v12[0] = *MEMORY[0x277D13B80];
  v12[1] = v3;
  v4 = *MEMORY[0x277D13B70];
  v12[2] = *MEMORY[0x277D13B68];
  v12[3] = v4;
  v5 = *MEMORY[0x277D13B28];
  v12[4] = *MEMORY[0x277D13B90];
  v12[5] = v5;
  v6 = *MEMORY[0x277D13B88];
  v12[6] = *MEMORY[0x277D13B48];
  v12[7] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:8];
  v8 = [v2 setByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)filterRecommendations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 na_filter:&__block_literal_global_31_0];

    v6 = [a1 _highestRankRecommendations:v5 forKeyGenerator:&__block_literal_global_35];

    v7 = [a1 _highestRankRecommendations:v6 forKeyGenerator:&__block_literal_global_37_0];

    v8 = [a1 _highestRankRecommendations:v7 forKeyGenerator:&__block_literal_global_40_0];

    v9 = v8;
    v4 = v9;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

uint64_t __55__HRERecommendationItemProvider_filterRecommendations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 home];
    v4 = [v3 hf_hasEnabledResident];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id __55__HRERecommendationItemProvider_filterRecommendations___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 selectedTriggerBuilder];
  v7 = [v6 trigger];
  v8 = [v7 uniqueIdentifier];
  v9 = [v8 UUIDString];

  return v9;
}

id __55__HRERecommendationItemProvider_filterRecommendations___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 selectedActionSetBuilder];
  v7 = [v6 actionSet];
  v8 = [v7 uniqueIdentifier];
  v9 = [v8 UUIDString];

  return v9;
}

id __55__HRERecommendationItemProvider_filterRecommendations___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 selectedActionSetBuilder];
  v7 = [v6 actionSet];

  if (v7)
  {
    v8 = [v7 name];
  }

  else
  {
    v9 = [v5 selectedActionSetBuilder];
    v8 = [v9 name];
  }

  return v8;
}

+ (id)_highestRankRecommendations:(id)a3 forKeyGenerator:(id)a4
{
  v5 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__HRERecommendationItemProvider__highestRankRecommendations_forKeyGenerator___block_invoke;
  v14[3] = &unk_279777300;
  v15 = v5;
  v6 = v5;
  v7 = [a3 na_dictionaryByBucketingObjectsUsingKeyGenerator:v14];
  v8 = [v7 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HRERecommendationItemProvider__highestRankRecommendations_forKeyGenerator___block_invoke_2;
  v12[3] = &unk_279777328;
  v13 = v7;
  v9 = v7;
  v10 = [v8 na_flatMap:v12];

  return v10;
}

__CFString *__77__HRERecommendationItemProvider__highestRankRecommendations_forKeyGenerator___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"(null)";
  }

  return v3;
}

id __77__HRERecommendationItemProvider__highestRankRecommendations_forKeyGenerator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqual:@"(null)"])
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];

    v7 = [v5 setWithArray:v6];
    v8 = [HRERecommendation highestRankInRecommendations:v7];
    v4 = [v8 allObjects];

    v3 = v6;
  }

  return v4;
}

@end