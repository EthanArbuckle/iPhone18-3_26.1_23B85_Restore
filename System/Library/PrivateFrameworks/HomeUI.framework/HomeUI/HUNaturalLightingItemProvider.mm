@interface HUNaturalLightingItemProvider
- (HUNaturalLightingItemProvider)initWithHome:(id)a3;
- (id)invalidationReasons;
- (id)reloadItems;
- (id)sourceItemForHomeKitObject:(id)a3;
@end

@implementation HUNaturalLightingItemProvider

- (HUNaturalLightingItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUNaturalLightingItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    naturalLightingItems = v7->_naturalLightingItems;
    v7->_naturalLightingItems = v8;
  }

  return v7;
}

- (id)reloadItems
{
  v3 = [(HUNaturalLightingItemProvider *)self home];
  v4 = [v3 hf_homeKitObjectsSupportingNaturalLighting];

  v5 = [v4 allObjects];
  v10[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__HUNaturalLightingItemProvider_reloadItems__block_invoke;
  v11[3] = &unk_277DB83E8;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HUNaturalLightingItemProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DBCDF8;
  v6 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v5 filter:v11 itemMap:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HUNaturalLightingItemProvider_reloadItems__block_invoke_3;
  v9[3] = &unk_277DB7F80;
  v9[4] = self;
  v7 = [v6 flatMap:v9];

  return v7;
}

uint64_t __44__HUNaturalLightingItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) homeKitObjectFilter];
  if (v4)
  {
    v5 = [*(a1 + 32) homeKitObjectFilter];
    v6 = (v5)[2](v5, v3);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

HUNaturalLightingItem *__44__HUNaturalLightingItemProvider_reloadItems__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) sourceItemForHomeKitObject:a2];
  if (v3)
  {
    v4 = [HUNaturalLightingItem alloc];
    v5 = [*(a1 + 32) defaultSelectedValue];
    v6 = -[HUNaturalLightingItem initWithSourceItem:defaultSelected:](v4, "initWithSourceItem:defaultSelected:", v3, [v5 BOOLValue]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __44__HUNaturalLightingItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 naturalLightingItems];
  v6 = [v4 addedItems];
  [v5 unionSet:v6];

  v7 = [*(a1 + 32) naturalLightingItems];
  v8 = [v4 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

- (id)sourceItemForHomeKitObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D148D0]);
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v7)
  {
    v11 = [MEMORY[0x277D14AC8] serviceItemForService:v7 valueSource:v4];
LABEL_11:
    v12 = v11;
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D142E8]) initWithAccessory:v10 valueSource:v4];
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)invalidationReasons
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUNaturalLightingItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = [v2 mutableCopy];

  v4 = *MEMORY[0x277D13B68];
  v8[0] = *MEMORY[0x277D13B70];
  v8[1] = v4;
  v8[2] = *MEMORY[0x277D13B28];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v3 addObjectsFromArray:v5];

  return v3;
}

@end