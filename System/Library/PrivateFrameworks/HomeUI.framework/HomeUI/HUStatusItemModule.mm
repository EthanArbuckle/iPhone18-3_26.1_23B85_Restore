@interface HUStatusItemModule
- (HUStatusItemModule)initWithContext:(id)context itemUpdater:(id)updater;
- (id)_itemsToHideInSet:(id)set;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)statusItems;
- (void)_invalidateItemsIfNecessary;
- (void)_updateInvalidationTimer;
- (void)updateNeedsInvalidation:(BOOL)invalidation forStatusItem:(id)item;
@end

@implementation HUStatusItemModule

- (HUStatusItemModule)initWithContext:(id)context itemUpdater:(id)updater
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HUStatusItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
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
  context = [(HUStatusItemModule *)self context];
  home = [context home];
  context2 = [(HUStatusItemModule *)self context];
  room = [context2 room];
  v9 = [v4 initWithHome:home room:room filter:v3];
  [(HUStatusItemModule *)self setStatusItemProvider:v9];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v25 = *MEMORY[0x277D13EA8];
  v26[0] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [v10 initWithResults:v11];
  [(HUStatusItemModule *)self setPlaceholderItem:v12];

  v13 = objc_alloc(MEMORY[0x277D14B40]);
  v14 = MEMORY[0x277CBEB98];
  placeholderItem = [(HUStatusItemModule *)self placeholderItem];
  v16 = [v14 setWithObject:placeholderItem];
  v17 = [v13 initWithItems:v16];

  v18 = MEMORY[0x277CBEB98];
  statusItemProvider = [(HUStatusItemModule *)self statusItemProvider];
  v20 = [v18 setWithObjects:{statusItemProvider, v17, 0}];

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

- (id)_itemsToHideInSet:(id)set
{
  v4 = [MEMORY[0x277CBEB58] set];
  allItems = [(HFItemModule *)self allItems];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__HUStatusItemModule__itemsToHideInSet___block_invoke;
  v11[3] = &unk_277DBC410;
  v6 = v4;
  v12 = v6;
  v13 = allItems;
  v7 = allItems;
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

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  statusItemProvider = [(HUStatusItemModule *)self statusItemProvider];
  items = [statusItemProvider items];
  v7 = [items na_setByIntersectingWithSet:itemsCopy];

  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"statusSection"];
  allObjects = [v7 allObjects];
  statusItemComparator = [MEMORY[0x277D14B60] statusItemComparator];
  v11 = [allObjects sortedArrayUsingComparator:statusItemComparator];
  [v8 setItems:v11];

  items2 = [v8 items];
  if ([items2 count])
  {
  }

  else
  {
    statusItemProvider2 = [(HUStatusItemModule *)self statusItemProvider];
    items3 = [statusItemProvider2 items];
    v15 = [items3 count];

    if (v15)
    {
      placeholderItem = [(HUStatusItemModule *)self placeholderItem];
      v23[0] = placeholderItem;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      [v8 setItems:v17];
    }
  }

  v18 = MEMORY[0x277D14778];
  v22 = v8;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v20 = [v18 filterSections:v19 toDisplayedItems:itemsCopy];

  return v20;
}

- (void)updateNeedsInvalidation:(BOOL)invalidation forStatusItem:(id)item
{
  invalidationCopy = invalidation;
  v15 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:invalidationCopy];
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@ Asked to update needsInvalidation: %@ for status item: %@", &v9, 0x20u);
  }

  [itemCopy setNeedsInvalidation:invalidationCopy];
  [(HUStatusItemModule *)self _updateInvalidationTimer];
}

- (id)statusItems
{
  allItems = [(HFItemModule *)self allItems];
  v3 = [allItems na_filter:&__block_literal_global_272];

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
  statusItems = [(HUStatusItemModule *)self statusItems];
  v4 = [statusItems na_filter:&__block_literal_global_95_2];
  allObjects = [v4 allObjects];
  v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_98_2];

  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    invalidationDate = [firstObject invalidationDate];

    invalidationTimer = [(HUStatusItemModule *)self invalidationTimer];
    if (invalidationTimer && (-[HUStatusItemModule invalidationTimer](self, "invalidationTimer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isValid], v10, invalidationTimer, v11))
    {
      invalidationTimer2 = [(HUStatusItemModule *)self invalidationTimer];
      fireDate = [invalidationTimer2 fireDate];
      v14 = [fireDate isEqualToDate:invalidationDate];

      if ((v14 & 1) == 0)
      {
        v15 = HFLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy3 = self;
          v29 = 2112;
          v30 = invalidationDate;
          _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@ Updating item invalidation timer to fire at date: %@", buf, 0x16u);
        }

        invalidationTimer3 = [(HUStatusItemModule *)self invalidationTimer];
        [invalidationTimer3 setFireDate:invalidationDate];
      }
    }

    else
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v29 = 2112;
        v30 = invalidationDate;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@ Scheduling item invalidation timer to fire at date: %@", buf, 0x16u);
      }

      [invalidationDate timeIntervalSinceNow];
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
    invalidationTimer4 = [(HUStatusItemModule *)self invalidationTimer];

    if (invalidationTimer4)
    {
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@ Clearing item invalidation timer due to reason: No items pending invalidation.", buf, 0xCu);
      }

      invalidationTimer5 = [(HUStatusItemModule *)self invalidationTimer];
      [invalidationTimer5 invalidate];

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
  statusItems = [(HUStatusItemModule *)self statusItems];
  v5 = [statusItems na_filter:&__block_literal_global_103_1];

  [v5 na_each:&__block_literal_global_107_4];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@ Invalidating status items: %@", &v10, 0x16u);
  }

  v7 = [MEMORY[0x277D14788] requestToUpdateItems:v5 senderSelector:a2];
  itemUpdater = [(HFItemModule *)self itemUpdater];
  v9 = [itemUpdater performItemUpdateRequest:v7];
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