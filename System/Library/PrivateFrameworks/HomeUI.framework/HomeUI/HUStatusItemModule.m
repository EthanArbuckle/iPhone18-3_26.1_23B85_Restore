@interface HUStatusItemModule
- (HUStatusItemModule)initWithContext:(id)a3 itemUpdater:(id)a4;
- (id)_itemsToHideInSet:(id)a3;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)statusItems;
- (void)_invalidateItemsIfNecessary;
- (void)_updateInvalidationTimer;
- (void)updateNeedsInvalidation:(BOOL)a3 forStatusItem:(id)a4;
@end

@implementation HUStatusItemModule

- (HUStatusItemModule)initWithContext:(id)a3 itemUpdater:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUStatusItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
  }

  return v9;
}

- (id)buildItemProviders
{
  v26[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__HUStatusItemModule_buildItemProviders__block_invoke;
  aBlock[3] = &unk_277DBF620;
  objc_copyWeak(&v23, &location);
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc(MEMORY[0x277D14B60]);
  v5 = [(HUStatusItemModule *)self context];
  v6 = [v5 home];
  v7 = [(HUStatusItemModule *)self context];
  v8 = [v7 room];
  v9 = [v4 initWithHome:v6 room:v8 filter:v3];
  [(HUStatusItemModule *)self setStatusItemProvider:v9];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v25 = *MEMORY[0x277D13EA8];
  v26[0] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [v10 initWithResults:v11];
  [(HUStatusItemModule *)self setPlaceholderItem:v12];

  v13 = objc_alloc(MEMORY[0x277D14B40]);
  v14 = MEMORY[0x277CBEB98];
  v15 = [(HUStatusItemModule *)self placeholderItem];
  v16 = [v14 setWithObject:v15];
  v17 = [v13 initWithItems:v16];

  v18 = MEMORY[0x277CBEB98];
  v19 = [(HUStatusItemModule *)self statusItemProvider];
  v20 = [v18 setWithObjects:{v19, v17, 0}];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v20;
}

uint64_t __40__HUStatusItemModule_buildItemProviders__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained context];
  LODWORD(a2) = [v4 shouldHideStatusItemClass:a2];

  return a2 ^ 1;
}

- (id)_itemsToHideInSet:(id)a3
{
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(HFItemModule *)self allItems];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__HUStatusItemModule__itemsToHideInSet___block_invoke;
  v11[3] = &unk_277DBC410;
  v6 = v4;
  v12 = v6;
  v13 = v5;
  v7 = v5;
  [v7 na_each:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __40__HUStatusItemModule__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__HUStatusItemModule__itemsToHideInSet___block_invoke_2;
    v7[3] = &unk_277DB85D8;
    v8 = v3;
    v6 = [v4 na_filter:v7];
    [v5 unionSet:v6];
  }
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUStatusItemModule *)self statusItemProvider];
  v6 = [v5 items];
  v7 = [v6 na_setByIntersectingWithSet:v4];

  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"statusSection"];
  v9 = [v7 allObjects];
  v10 = [MEMORY[0x277D14B60] statusItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v8 setItems:v11];

  v12 = [v8 items];
  if ([v12 count])
  {
  }

  else
  {
    v13 = [(HUStatusItemModule *)self statusItemProvider];
    v14 = [v13 items];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [(HUStatusItemModule *)self placeholderItem];
      v23[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      [v8 setItems:v17];
    }
  }

  v18 = MEMORY[0x277D14778];
  v22 = v8;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v20 = [v18 filterSections:v19 toDisplayedItems:v4];

  return v20;
}

- (void)updateNeedsInvalidation:(BOOL)a3 forStatusItem:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@ Asked to update needsInvalidation: %@ for status item: %@", &v9, 0x20u);
  }

  [v6 setNeedsInvalidation:v4];
  [(HUStatusItemModule *)self _updateInvalidationTimer];
}

- (id)statusItems
{
  v2 = [(HFItemModule *)self allItems];
  v3 = [v2 na_filter:&__block_literal_global_272];

  return v3;
}

uint64_t __33__HUStatusItemModule_statusItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateInvalidationTimer
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HUStatusItemModule *)self statusItems];
  v4 = [v3 na_filter:&__block_literal_global_95_2];
  v5 = [v4 allObjects];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_98_2];

  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [v7 invalidationDate];

    v9 = [(HUStatusItemModule *)self invalidationTimer];
    if (v9 && (-[HUStatusItemModule invalidationTimer](self, "invalidationTimer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isValid], v10, v9, v11))
    {
      v12 = [(HUStatusItemModule *)self invalidationTimer];
      v13 = [v12 fireDate];
      v14 = [v13 isEqualToDate:v8];

      if ((v14 & 1) == 0)
      {
        v15 = HFLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = self;
          v29 = 2112;
          v30 = v8;
          _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@ Updating item invalidation timer to fire at date: %@", buf, 0x16u);
        }

        v16 = [(HUStatusItemModule *)self invalidationTimer];
        [v16 setFireDate:v8];
      }
    }

    else
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = self;
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@ Scheduling item invalidation timer to fire at date: %@", buf, 0x16u);
      }

      [v8 timeIntervalSinceNow];
      v19 = v18;
      objc_initWeak(buf, self);
      v20 = MEMORY[0x277CBEBB8];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __46__HUStatusItemModule__updateInvalidationTimer__block_invoke_100;
      v25[3] = &unk_277DBC5E0;
      objc_copyWeak(&v26, buf);
      v21 = [v20 scheduledTimerWithTimeInterval:0 repeats:v25 block:v19];
      [(HUStatusItemModule *)self setInvalidationTimer:v21];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v22 = [(HUStatusItemModule *)self invalidationTimer];

    if (v22)
    {
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = self;
        _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@ Clearing item invalidation timer due to reason: No items pending invalidation.", buf, 0xCu);
      }

      v24 = [(HUStatusItemModule *)self invalidationTimer];
      [v24 invalidate];

      [(HUStatusItemModule *)self setInvalidationTimer:0];
    }
  }
}

BOOL __46__HUStatusItemModule__updateInvalidationTimer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isInvalidationPending])
  {
    v3 = [v2 invalidationDate];
    if (v3)
    {
    }

    else if ([v2 canScheduleInvalidation])
    {
      [v2 scheduleInvalidation];
    }

    v5 = [v2 latestResults];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D14068]];
    v7 = [v6 integerValue];

    v8 = [v2 latestResults];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D140C8]];
    v10 = [v9 integerValue];

    v11 = [v2 invalidationDate];
    if (v11)
    {

      if (v7 == 2 || v10 == 2)
      {
        [v2 setNeedsInvalidation:0];
      }
    }

    v12 = [v2 invalidationDate];
    v4 = v12 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __46__HUStatusItemModule__updateInvalidationTimer__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 invalidationDate];
  v6 = [v4 invalidationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __46__HUStatusItemModule__updateInvalidationTimer__block_invoke_100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInvalidationTimer:0];
  [WeakRetained _invalidateItemsIfNecessary];
  [WeakRetained _updateInvalidationTimer];
}

- (void)_invalidateItemsIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(HUStatusItemModule *)self statusItems];
  v5 = [v4 na_filter:&__block_literal_global_103_1];

  [v5 na_each:&__block_literal_global_107_4];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@ Invalidating status items: %@", &v10, 0x16u);
  }

  v7 = [MEMORY[0x277D14788] requestToUpdateItems:v5 senderSelector:a2];
  v8 = [(HFItemModule *)self itemUpdater];
  v9 = [v8 performItemUpdateRequest:v7];
}

BOOL __49__HUStatusItemModule__invalidateItemsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsInvalidation])
  {
    v3 = [v2 invalidationDate];
    if (v3)
    {
      v4 = [v2 invalidationDate];
      v5 = [MEMORY[0x277CBEAA8] date];
      v6 = [v4 compare:v5] != 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end