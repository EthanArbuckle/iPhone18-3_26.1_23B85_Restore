@interface HUAppleMusicAccountItemProvider
- (HUAppleMusicAccountItemProvider)initWithMediaProfileContainer:(id)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUAppleMusicAccountItemProvider

- (HUAppleMusicAccountItemProvider)initWithMediaProfileContainer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUAppleMusicAccountItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaProfileContainer, a3);
    v8 = objc_opt_new();
    items = v7->_items;
    v7->_items = v8;
  }

  return v7;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277D14808] sharedDispatcher];
  v4 = [v3 appleMusicMagicAuthCapableAccounts];

  v5 = [(HUAppleMusicAccountItemProvider *)self filter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__HUAppleMusicAccountItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DBFE20;
  objc_copyWeak(&v12, &location);
  v6 = [(HFItemProvider *)self reloadItemsWithObjects:v4 keyAdaptor:&__block_literal_global_163 itemAdaptor:&__block_literal_global_4_1 filter:v5 itemMap:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HUAppleMusicAccountItemProvider_reloadItems__block_invoke_5;
  v9[3] = &unk_277DB7FA8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v7;
}

id __46__HUAppleMusicAccountItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  v3 = [v2 identifier];

  return v3;
}

HUAppleMusicAccountItem *__46__HUAppleMusicAccountItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__HUAppleMusicAccountItemProvider_reloadItems__block_invoke_4;
  v11[3] = &unk_277DBFDF8;
  v6 = v3;
  v12 = v6;
  v7 = [v5 na_firstObjectPassingTest:v11];

  if (!v7)
  {
    v8 = [HUAppleMusicAccountItem alloc];
    v9 = [WeakRetained mediaProfileContainer];
    v7 = [(HUAppleMusicAccountItem *)v8 initWithMediaProfileContainer:v9 account:v6];
  }

  return v7;
}

uint64_t __46__HUAppleMusicAccountItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

id __46__HUAppleMusicAccountItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained items];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUAppleMusicAccountItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B38];
  v8[0] = *MEMORY[0x277D13B28];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v2 setByAddingObjectsFromArray:v4];

  return v5;
}

@end