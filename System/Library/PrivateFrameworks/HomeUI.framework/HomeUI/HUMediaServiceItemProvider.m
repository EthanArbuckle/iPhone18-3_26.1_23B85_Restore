@interface HUMediaServiceItemProvider
- (HUMediaServiceItemProvider)initWithHome:(id)a3 delegate:(id)a4;
- (HUMediaServiceItemProviderDelegate)delegate;
- (id)_fetchMediaServicesFuture;
- (id)reloadItems;
- (void)_notifyMediaServicesUpdated;
- (void)mediaServicesDidUpdate:(id)a3;
- (void)registerForExternalUpdates;
- (void)unregisterForExternalUpdates;
@end

@implementation HUMediaServiceItemProvider

uint64_t __44__HUMediaServiceItemProvider_itemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = *MEMORY[0x277D13F60];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v9 = [v5 latestResults];
  v10 = [v9 objectForKeyedSubscript:v7];

  v11 = objc_opt_class();
  v12 = v4;
  if (!v12)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;
  if (!v13)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];

LABEL_7:
    v14 = 0;
  }

  v17 = objc_opt_class();
  v18 = v5;
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v18;
    if (v19)
    {
      goto LABEL_15;
    }

    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v21 handleFailureInFunction:v22 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
  }

  v20 = 0;
LABEL_15:

  v23 = [v14 mediaService];
  v24 = [v23 isServiceRemovable];

  if (v24)
  {
    v25 = [v20 mediaService];
    v26 = [v25 isServiceRemovable];

    if (v26)
    {
      v27 = 0;
      if (v8 && v10)
      {
        v27 = [v8 compare:v10];
      }
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v27 = -1;
  }

  return v27;
}

- (HUMediaServiceItemProvider)initWithHome:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HUMediaServiceItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_opt_new();
    items = v10->_items;
    v10->_items = v11;
  }

  return v10;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [(HUMediaServiceItemProvider *)self _fetchMediaServicesFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__HUMediaServiceItemProvider_reloadItems__block_invoke;
  v6[3] = &unk_277DC3948;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = [v3 flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __41__HUMediaServiceItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__HUMediaServiceItemProvider_reloadItems__block_invoke_4;
  v10[3] = &unk_277DC3920;
  objc_copyWeak(&v11, (a1 + 40));
  v5 = [v4 reloadItemsWithObjects:v3 keyAdaptor:&__block_literal_global_4_3 itemAdaptor:&__block_literal_global_7_2 filter:0 itemMap:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HUMediaServiceItemProvider_reloadItems__block_invoke_6;
  v8[3] = &unk_277DB7FA8;
  objc_copyWeak(&v9, (a1 + 40));
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v11);

  return v6;
}

id __41__HUMediaServiceItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mediaService];
  v3 = [v2 bundleIdentifier];

  return v3;
}

HUMediaServiceItem *__41__HUMediaServiceItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__HUMediaServiceItemProvider_reloadItems__block_invoke_5;
  v11[3] = &unk_277DB85D8;
  v6 = v3;
  v12 = v6;
  v7 = [v5 na_firstObjectPassingTest:v11];

  if (!v7)
  {
    v8 = [HUMediaServiceItem alloc];
    v9 = [WeakRetained home];
    v7 = [(HUMediaServiceItem *)v8 initWithMediaService:v6 home:v9];
  }

  return v7;
}

uint64_t __41__HUMediaServiceItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
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

  v7 = [v6 mediaService];
  v8 = [v7 bundleIdentifier];
  v9 = [*(a1 + 32) bundleIdentifier];
  v10 = [v8 isEqualToString:v9];

  return v10;
}

id __41__HUMediaServiceItemProvider_reloadItems__block_invoke_6(uint64_t a1, void *a2)
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

- (void)registerForExternalUpdates
{
  v3 = [MEMORY[0x277D14820] sharedManager];
  [v3 addMediaServiceManagerObserver:self];
}

- (void)unregisterForExternalUpdates
{
  v3 = [MEMORY[0x277D14820] sharedManager];
  [v3 removeMediaServiceManagerObserver:self];
}

- (void)mediaServicesDidUpdate:(id)a3
{
  if (a3)
  {
    [(HUMediaServiceItemProvider *)self _notifyMediaServicesUpdated];
  }
}

- (id)_fetchMediaServicesFuture
{
  v3 = [MEMORY[0x277D14820] sharedManager];
  v4 = [(HUMediaServiceItemProvider *)self home];
  v5 = [v3 mediaServicesForHome:v4];

  v6 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__HUMediaServiceItemProvider__fetchMediaServicesFuture__block_invoke;
  v16[3] = &unk_277DB7580;
  v7 = v5;
  v17 = v7;
  v8 = [v6 futureWithBlock:v16];
  if (!v7 || ([MEMORY[0x277D14820] sharedManager], v9 = objc_claimAutoreleasedReturnValue(), -[HUMediaServiceItemProvider home](self, "home"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isRefreshNeededForHome:", v10), v10, v9, v11))
  {
    v12 = [MEMORY[0x277D14820] sharedManager];
    v13 = [(HUMediaServiceItemProvider *)self home];
    v14 = [v12 fetchMediaServicesForHome:v13];
  }

  return v8;
}

- (void)_notifyMediaServicesUpdated
{
  v3 = [(HUMediaServiceItemProvider *)self delegate];
  v4 = [v3 conformsToProtocol:&unk_2825186F0];

  if (v4)
  {
    v5 = [(HUMediaServiceItemProvider *)self delegate];
    [v5 mediaServiceItemProviderDidUpdateServices:self];
  }
}

- (HUMediaServiceItemProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end