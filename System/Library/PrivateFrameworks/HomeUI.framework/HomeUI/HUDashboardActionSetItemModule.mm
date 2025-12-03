@interface HUDashboardActionSetItemModule
+ (BOOL)homeHasEnoughActionSetsForPredictions:(id)predictions;
- (BOOL)showPredictedScenes;
- (BOOL)supportsReorderingForItem:(id)item;
- (HFPredictionsManager)predictionsManager;
- (HUDashboardActionSetItemModule)initWithContext:(id)context itemUpdater:(id)updater;
- (NSSet)predictedActionSetItems;
- (id)_itemComparator;
- (id)_itemsToHideInSet:(id)set;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (void)_fetchInitialPredictions;
- (void)_updateFilters;
- (void)dealloc;
- (void)executionEnvironmentDidEnterBackground:(id)background;
- (void)executionEnvironmentWillEnterForeground:(id)foreground;
- (void)predictionsManagerDidUpdatePredictions:(id)predictions;
@end

@implementation HUDashboardActionSetItemModule

- (HUDashboardActionSetItemModule)initWithContext:(id)context itemUpdater:(id)updater
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HUDashboardActionSetItemModule;
  v8 = [(HFItemModule *)&v12 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
    [(HUDashboardActionSetItemModule *)v9 _fetchInitialPredictions];
    mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
    [mEMORY[0x277D14670] addObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  [mEMORY[0x277D14670] removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUDashboardActionSetItemModule;
  [(HUDashboardActionSetItemModule *)&v4 dealloc];
}

+ (BOOL)homeHasEnoughActionSetsForPredictions:(id)predictions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  actionSets = [predictions actionSets];
  v4 = [actionSets countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(actionSets);
        }

        if ([*(*(&v9 + 1) + 8 * i) hf_isVisible])
        {
          if (v5 > 1)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }

          ++v5;
        }
      }

      v4 = [actionSets countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

- (NSSet)predictedActionSetItems
{
  predictedActionSetItemProvider = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  items = [predictedActionSetItemProvider items];
  v4 = items;
  if (items)
  {
    v5 = items;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v6 = v5;

  return v6;
}

- (HFPredictionsManager)predictionsManager
{
  predictedActionSetItemProvider = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  predictionsManager = [predictedActionSetItemProvider predictionsManager];

  return predictionsManager;
}

- (id)buildItemProviders
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_alloc(MEMORY[0x277D143A8]);
  context = [(HUDashboardActionSetItemModule *)self context];
  home = [context home];
  v7 = [v4 initWithHome:home actionSetItemStyle:1];
  [(HUDashboardActionSetItemModule *)self setActionSetItemProvider:v7];

  context2 = [(HUDashboardActionSetItemModule *)self context];
  room = [context2 room];
  actionSetItemProvider = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
  [actionSetItemProvider setRoom:room];

  context3 = [(HUDashboardActionSetItemModule *)self context];
  LODWORD(room) = [context3 includePredictedScenes];

  if (room)
  {
    v12 = objc_alloc(MEMORY[0x277D14950]);
    context4 = [(HUDashboardActionSetItemModule *)self context];
    home2 = [context4 home];
    v15 = [v12 initWithHome:home2 predictionsManagerDelegate:self itemCount:2];
    [(HUDashboardActionSetItemModule *)self setPredictedActionSetItemProvider:v15];
  }

  [(HUDashboardActionSetItemModule *)self _updateFilters];
  valueSource = [(HUDashboardActionSetItemModule *)self valueSource];

  if (valueSource)
  {
    valueSource2 = [(HUDashboardActionSetItemModule *)self valueSource];
    actionSetItemProvider2 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
    [actionSetItemProvider2 setValueSource:valueSource2];

    valueSource3 = [(HUDashboardActionSetItemModule *)self valueSource];
    predictedActionSetItemProvider = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
    [predictedActionSetItemProvider setValueSource:valueSource3];
  }

  actionSetItemProvider3 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
  [v3 na_safeAddObject:actionSetItemProvider3];

  predictedActionSetItemProvider2 = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  [v3 na_safeAddObject:predictedActionSetItemProvider2];

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"scenesSection"];
  v7 = _HULocalizedStringWithDefaultValue(@"HUGridScenesSectionTitle", @"HUGridScenesSectionTitle", 1);
  [v6 setHeaderTitle:v7];

  array = [MEMORY[0x277CBEB18] array];
  predictedActionSetItemProvider = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  orderedItems = [predictedActionSetItemProvider orderedItems];

  [array na_safeAddObjectsFromArray:orderedItems];
  actionSetItemProvider = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
  items = [actionSetItemProvider items];
  allObjects = [items allObjects];
  _itemComparator = [(HUDashboardActionSetItemModule *)self _itemComparator];
  v15 = [allObjects sortedArrayUsingComparator:_itemComparator];

  [array na_safeAddObjectsFromArray:v15];
  [v6 setItems:array];
  v16 = MEMORY[0x277D14778];
  v20[0] = v6;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18 = [v16 filterSections:v17 toDisplayedItems:itemsCopy];

  return v18;
}

- (id)_itemComparator
{
  v21.receiver = self;
  v21.super_class = HUDashboardActionSetItemModule;
  _itemComparator = [(HFItemModule *)&v21 _itemComparator];
  context = [(HUDashboardActionSetItemModule *)self context];
  accessoryTypeGroup = [context accessoryTypeGroup];

  if (accessoryTypeGroup)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    actionSetItemProvider = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
    items = [actionSetItemProvider items];
    allObjects = [items allObjects];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__HUDashboardActionSetItemModule__itemComparator__block_invoke;
    v18[3] = &unk_277DBDF90;
    v19 = accessoryTypeGroup;
    v10 = strongToStrongObjectsMapTable;
    v20 = v10;
    [allObjects na_each:v18];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__HUDashboardActionSetItemModule__itemComparator__block_invoke_2;
    v15[3] = &unk_277DBDFB8;
    v16 = v10;
    selfCopy = self;
    v11 = v10;
    v12 = _Block_copy(v15);

    _itemComparator = v12;
  }

  v13 = _Block_copy(_itemComparator);

  return v13;
}

void __49__HUDashboardActionSetItemModule__itemComparator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 actionSet];
  [v4 hf_percentOfAccessoryRepresentableObjectsAssociatedWithGroup:*(a1 + 32)];
  v6 = v5;

  v7 = *(a1 + 40);
  LODWORD(v8) = v6;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v7 setObject:v9 forKey:v3];
}

uint64_t __49__HUDashboardActionSetItemModule__itemComparator__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [v8 compare:v7];
  if (!v9)
  {
    v12.receiver = *(a1 + 40);
    v12.super_class = HUDashboardActionSetItemModule;
    v10 = objc_msgSendSuper2(&v12, sel__itemComparator);
    v9 = (v10)[2](v10, v5, v6);
  }

  return v9;
}

- (void)predictionsManagerDidUpdatePredictions:(id)predictions
{
  initialPredictionUpdateFuture = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
  isFinished = [initialPredictionUpdateFuture isFinished];

  if ((isFinished & 1) == 0)
  {
    initialPredictionUpdateFuture2 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
    [initialPredictionUpdateFuture2 finishWithNoResult];
  }
}

- (void)executionEnvironmentWillEnterForeground:(id)foreground
{
  v9 = *MEMORY[0x277D85DE8];
  initialPredictionUpdateFuture = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];

  if (!initialPredictionUpdateFuture)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "<HUDashboardActionSetItemModule %p>: Invalidating predictions and awaiting fetch", &v7, 0xCu);
    }

    predictedActionSetItemProvider = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
    [predictedActionSetItemProvider invalidatePredictions];

    [(HUDashboardActionSetItemModule *)self _fetchInitialPredictions];
  }
}

- (void)executionEnvironmentDidEnterBackground:(id)background
{
  initialPredictionUpdateFuture = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
  na_cancelledError = [MEMORY[0x277CCA9B8] na_cancelledError];
  [initialPredictionUpdateFuture finishWithError:na_cancelledError];

  [(HUDashboardActionSetItemModule *)self setInitialPredictionUpdateFuture:0];
}

- (void)_fetchInitialPredictions
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  context = [(HUDashboardActionSetItemModule *)self context];
  home = [context home];
  LOBYTE(v4) = [v4 homeHasEnoughActionSetsForPredictions:home];

  if (v4)
  {
    initialPredictionUpdateFuture = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];

    if (initialPredictionUpdateFuture)
    {
      initialPredictionUpdateFuture2 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
      na_cancelledError = [MEMORY[0x277CCA9B8] na_cancelledError];
      [initialPredictionUpdateFuture2 finishWithError:na_cancelledError];
    }

    v10 = objc_alloc_init(MEMORY[0x277D2C900]);
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__HUDashboardActionSetItemModule__fetchInitialPredictions__block_invoke;
    v25[3] = &unk_277DB7558;
    v12 = v10;
    v26 = v12;
    selfCopy = self;
    v13 = [mainThreadScheduler afterDelay:v25 performBlock:5.0];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = self;
      _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "<HUDashboardActionSetItemModule %p>: Awaiting prediction fetch", location, 0xCu);
    }

    v15 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HUDashboardActionSetItemModule *)self setInitialPredictionUpdateFuture:v15];

    initialPredictionUpdateFuture3 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__HUDashboardActionSetItemModule__fetchInitialPredictions__block_invoke_102;
    v23[3] = &unk_277DB7530;
    v17 = v13;
    v24 = v17;
    v18 = [initialPredictionUpdateFuture3 addCompletionBlock:v23];

    objc_initWeak(location, self);
    initialPredictionUpdateFuture4 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__HUDashboardActionSetItemModule__fetchInitialPredictions__block_invoke_2;
    v21[3] = &unk_277DB9D18;
    objc_copyWeak(v22, location);
    v22[1] = a2;
    v20 = [initialPredictionUpdateFuture4 addSuccessBlock:v21];

    objc_destroyWeak(v22);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = self;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "<HUDashboardActionSetItemModule %p>: Not fetching predictions", location, 0xCu);
    }
  }
}

void __58__HUDashboardActionSetItemModule__fetchInitialPredictions__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = HFLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = 134217984;
      v7 = v5;
      _os_log_error_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_ERROR, "<HUDashboardActionSetItemModule %p>: Prediction fetch timed out", &v6, 0xCu);
    }

    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA9B8] na_timeoutError];
    [v3 finishWithError:v4];
  }
}

void __58__HUDashboardActionSetItemModule__fetchInitialPredictions__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = WeakRetained;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "<HUDashboardActionSetItemModule %p>: Prediction fetch finished; reloading item provider", &v11, 0xCu);
  }

  v4 = MEMORY[0x277D14788];
  v5 = MEMORY[0x277CBEB98];
  v6 = [WeakRetained predictedActionSetItemProvider];
  v7 = [v5 setWithObject:v6];
  v8 = [v4 requestToReloadItemProviders:v7 senderSelector:*(a1 + 40)];

  v9 = [WeakRetained itemUpdater];
  v10 = [v9 performItemUpdateRequest:v8];
}

- (BOOL)showPredictedScenes
{
  context = [(HUDashboardActionSetItemModule *)self context];
  home = [context home];
  hf_showPredictedScenesOnDashboard = [home hf_showPredictedScenesOnDashboard];

  return hf_showPredictedScenesOnDashboard;
}

- (void)_updateFilters
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v5, &location);
  v3 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider:v4];
  [v3 setFilter:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __48__HUDashboardActionSetItemModule__updateFilters__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained context];
  v6 = [v5 shouldHideHomeKitObject:v3];

  return v6 ^ 1u;
}

- (id)_itemsToHideInSet:(id)set
{
  if (-[HUDashboardActionSetItemModule showPredictedScenes](self, "showPredictedScenes", set) && (-[HUDashboardActionSetItemModule context](self, "context"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 includePredictedScenes], v4, v5))
  {
    predictedActionSetItems = [(HUDashboardActionSetItemModule *)self predictedActionSetItems];
    v7 = [predictedActionSetItems na_map:&__block_literal_global_126];

    actionSetItemProvider = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
    items = [actionSetItemProvider items];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HUDashboardActionSetItemModule__itemsToHideInSet___block_invoke_2;
    v13[3] = &unk_277DBE000;
    v14 = v7;
    v10 = v7;
    predictedActionSetItems2 = [items na_filter:v13];
  }

  else
  {
    predictedActionSetItems2 = [(HUDashboardActionSetItemModule *)self predictedActionSetItems];
  }

  return predictedActionSetItems2;
}

id __52__HUDashboardActionSetItemModule__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actionSet];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

uint64_t __52__HUDashboardActionSetItemModule__itemsToHideInSet___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 actionSet];
  v4 = [v3 uniqueIdentifier];
  v5 = [v2 containsObject:v4];

  return v5;
}

- (BOOL)supportsReorderingForItem:(id)item
{
  itemCopy = item;
  predictedActionSetItemProvider = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  items = [predictedActionSetItemProvider items];
  v7 = [items containsObject:itemCopy];

  if (v7)
  {
    return 0;
  }

  context = [(HUDashboardActionSetItemModule *)self context];
  accessoryTypeGroup = [context accessoryTypeGroup];
  if (accessoryTypeGroup)
  {
    supportsReordering = 0;
  }

  else
  {
    supportsReordering = [(HFItemModule *)self supportsReordering];
  }

  return supportsReordering;
}

@end