@interface HFHomeStatusItemManager
- (HFHomeStatusItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HFHomeStatusItemManager)initWithRoom:(id)room delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_itemsToHideInSet:(id)set;
- (id)matchingItemForHomeKitObject:(id)object;
- (id)statusItems;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items;
- (void)_invalidateItemsIfNecessary;
- (void)_updateInvalidationTimer;
@end

@implementation HFHomeStatusItemManager

- (HFHomeStatusItemManager)initWithRoom:(id)room delegate:(id)delegate
{
  roomCopy = room;
  v11.receiver = self;
  v11.super_class = HFHomeStatusItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_room, room);
  }

  return v9;
}

- (HFHomeStatusItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithRoom_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomeStatusItemManager.m" lineNumber:40 description:{@"%s is unavailable; use %@ instead", "-[HFHomeStatusItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v12[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [HFStatusItemProvider alloc];
  room = [(HFHomeStatusItemManager *)self room];
  v7 = [(HFStatusItemProvider *)v5 initWithHome:homeCopy room:room];

  [(HFHomeStatusItemManager *)self setStatusItemProvider:v7];
  statusItemProvider = [(HFHomeStatusItemManager *)self statusItemProvider];
  v12[0] = statusItemProvider;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_itemsToHideInSet:(id)set
{
  allItems = [(HFItemManager *)self allItems];
  v17.receiver = self;
  v17.super_class = HFHomeStatusItemManager;
  v5 = [(HFItemManager *)&v17 _itemsToHideInSet:allItems];
  v6 = [v5 mutableCopy];

  allItems2 = [(HFItemManager *)self allItems];
  v8 = [allItems2 na_setByRemovingObjectsFromSet:v6];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__HFHomeStatusItemManager__itemsToHideInSet___block_invoke;
  v14[3] = &unk_277DFB148;
  v9 = v6;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  [v10 na_each:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __45__HFHomeStatusItemManager__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__HFHomeStatusItemManager__itemsToHideInSet___block_invoke_2;
    v7[3] = &unk_277DF4B70;
    v8 = v3;
    v6 = [v4 na_filter:v7];
    [v5 unionSet:v6];
  }
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items
{
  v4.receiver = self;
  v4.super_class = HFHomeStatusItemManager;
  [(HFItemManager *)&v4 _didFinishUpdateTransactionWithAffectedItems:items];
  [(HFHomeStatusItemManager *)self _updateInvalidationTimer];
}

- (id)matchingItemForHomeKitObject:(id)object
{
  objectCopy = object;
  allItems = [(HFItemManager *)self allItems];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HFHomeStatusItemManager_matchingItemForHomeKitObject___block_invoke;
  v12[3] = &unk_277DF4B70;
  v6 = objectCopy;
  v13 = v6;
  v7 = [allItems na_firstObjectPassingTest:v12];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HFHomeStatusItemManager;
    v8 = [(HFItemManager *)&v11 matchingItemForHomeKitObject:v6];
  }

  v9 = v8;

  return v9;
}

uint64_t __56__HFHomeStatusItemManager_matchingItemForHomeKitObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:@"representedHomeKitObjects"];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HFHomeStatusItemManager_matchingItemForHomeKitObject___block_invoke_2;
  v7[3] = &unk_277DF7C90;
  v8 = *(a1 + 32);
  v5 = [v4 na_any:v7];

  return v5;
}

uint64_t __56__HFHomeStatusItemManager_matchingItemForHomeKitObject___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isEqual:v3] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = [v3 accessory];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v5 = [v3 hf_linkedAccessory];
    }

    v6 = v5;
    if (v5)
    {
      v4 = [*(a1 + 32) isEqual:v5];

      goto LABEL_11;
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = 1;
LABEL_11:

  return v4;
}

- (id)statusItems
{
  allItems = [(HFItemManager *)self allItems];
  v3 = [allItems na_filter:&__block_literal_global_166];

  return v3;
}

uint64_t __38__HFHomeStatusItemManager_statusItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateInvalidationTimer
{
  v32 = *MEMORY[0x277D85DE8];
  statusItems = [(HFHomeStatusItemManager *)self statusItems];
  v4 = [statusItems na_filter:&__block_literal_global_25_12];
  allObjects = [v4 allObjects];
  v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_28_4];

  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    invalidationDate = [firstObject invalidationDate];

    invalidationTimer = [(HFHomeStatusItemManager *)self invalidationTimer];
    if (invalidationTimer && (-[HFHomeStatusItemManager invalidationTimer](self, "invalidationTimer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isValid], v10, invalidationTimer, v11))
    {
      invalidationTimer2 = [(HFHomeStatusItemManager *)self invalidationTimer];
      fireDate = [invalidationTimer2 fireDate];
      v14 = [fireDate isEqualToDate:invalidationDate];

      if ((v14 & 1) == 0)
      {
        v15 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy3 = self;
          v30 = 2112;
          v31 = invalidationDate;
          _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@ Updating item invalidation timer to fire at date: %@", buf, 0x16u);
        }

        invalidationTimer3 = [(HFHomeStatusItemManager *)self invalidationTimer];
        [invalidationTimer3 setFireDate:invalidationDate];
      }
    }

    else
    {
      v17 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v30 = 2112;
        v31 = invalidationDate;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@ Scheduling item invalidation timer to fire at date: %@", buf, 0x16u);
      }

      [invalidationDate timeIntervalSinceNow];
      v19 = v18;
      objc_initWeak(buf, self);
      v20 = MEMORY[0x277CBEBB8];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __51__HFHomeStatusItemManager__updateInvalidationTimer__block_invoke_30;
      v26[3] = &unk_277DF9BF0;
      objc_copyWeak(&v27, buf);
      v21 = [v20 scheduledTimerWithTimeInterval:0 repeats:v26 block:v19];
      [(HFHomeStatusItemManager *)self setInvalidationTimer:v21];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    invalidationTimer4 = [(HFHomeStatusItemManager *)self invalidationTimer];

    if (invalidationTimer4)
    {
      v23 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "%@ Clearing item invalidation timer due to reason: No items pending invalidation.", buf, 0xCu);
      }

      invalidationTimer5 = [(HFHomeStatusItemManager *)self invalidationTimer];
      [invalidationTimer5 invalidate];

      [(HFHomeStatusItemManager *)self setInvalidationTimer:0];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

BOOL __51__HFHomeStatusItemManager__updateInvalidationTimer__block_invoke(uint64_t a1, void *a2)
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
    v6 = [v5 objectForKeyedSubscript:@"state"];
    v7 = [v6 integerValue];

    v8 = [v2 latestResults];
    v9 = [v8 objectForKeyedSubscript:@"transitioningState"];
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

uint64_t __51__HFHomeStatusItemManager__updateInvalidationTimer__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 invalidationDate];
  v6 = [v4 invalidationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __51__HFHomeStatusItemManager__updateInvalidationTimer__block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInvalidationTimer:0];
  [WeakRetained _invalidateItemsIfNecessary];
  [WeakRetained _updateInvalidationTimer];
}

- (void)_invalidateItemsIfNecessary
{
  v13 = *MEMORY[0x277D85DE8];
  statusItems = [(HFHomeStatusItemManager *)self statusItems];
  v5 = [statusItems na_filter:&__block_literal_global_33_3];

  [v5 na_each:&__block_literal_global_37_5];
  v6 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@ Invalidating status items: %@", &v9, 0x16u);
  }

  v7 = [(HFItemManager *)self updateResultsForItems:v5 senderSelector:a2];
  v8 = *MEMORY[0x277D85DE8];
}

BOOL __54__HFHomeStatusItemManager__invalidateItemsIfNecessary__block_invoke(uint64_t a1, void *a2)
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