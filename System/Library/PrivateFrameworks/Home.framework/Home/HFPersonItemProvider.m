@interface HFPersonItemProvider
- (HFPersonItemProvider)initWithHome:(id)a3 personManager:(id)a4;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFPersonItemProvider

- (HFPersonItemProvider)initWithHome:(id)a3 personManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HFPersonItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_personManager, a4);
    v11 = [MEMORY[0x277CBEB58] set];
    personItems = v10->_personItems;
    v10->_personItems = v11;
  }

  return v10;
}

- (id)reloadItems
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [(HFPersonItemProvider *)self personManager];

  if (v4)
  {
    v5 = [(HFPersonItemProvider *)self personManager];
    v6 = [v3 completionHandlerAdapter];
    [v5 fetchAllPersonsWithCompletion:v6];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __35__HFPersonItemProvider_reloadItems__block_invoke;
    v12[3] = &unk_277DFC8D8;
    v12[4] = self;
    v7 = [v3 flatMap:v12];
  }

  else
  {
    v8 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@: Person manager is nil", buf, 0xCu);
    }

    v9 = [[HFItemProviderReloadResults alloc] initWithAddedItems:0 removedItems:0 existingItems:0];
    [v3 finishWithResult:v9];
    v7 = v3;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

id __35__HFPersonItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 allObjects];
  v5 = [*(a1 + 32) filter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__HFPersonItemProvider_reloadItems__block_invoke_2;
  v11[3] = &unk_277DF5828;
  v11[4] = *(a1 + 32);
  v6 = [v3 reloadItemsWithHomeKitObjects:v4 filter:v5 itemMap:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HFPersonItemProvider_reloadItems__block_invoke_3;
  v10[3] = &unk_277DF6960;
  v10[4] = *(a1 + 32);
  v7 = [v6 flatMap:v10];
  v8 = [v7 recover:&__block_literal_global_180];

  return v8;
}

HFPersonItem *__35__HFPersonItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
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

  v7 = [HFPersonItem alloc];
  v8 = [*(a1 + 32) personManager];
  v9 = [*(a1 + 32) home];
  v10 = [(HFPersonItem *)v7 initWithPerson:v6 fromPersonManager:v8 home:v9];

  return v10;
}

id __35__HFPersonItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 personItems];
  v6 = [v4 addedItems];
  [v5 unionSet:v6];

  v7 = [*(a1 + 32) personItems];
  v8 = [v4 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

id __35__HFPersonItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Person fetch failed with error %@", &v8, 0xCu);
  }

  v4 = [[HFItemProviderReloadResults alloc] initWithAddedItems:0 removedItems:0 existingItems:0];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFPersonItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"person"];

  return v3;
}

@end