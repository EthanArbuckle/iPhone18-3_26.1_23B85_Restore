@interface HUDashboardActionSetItemModule
+ (BOOL)homeHasEnoughActionSetsForPredictions:(id)a3;
- (BOOL)showPredictedScenes;
- (BOOL)supportsReorderingForItem:(id)a3;
- (HFPredictionsManager)predictionsManager;
- (HUDashboardActionSetItemModule)initWithContext:(id)a3 itemUpdater:(id)a4;
- (NSSet)predictedActionSetItems;
- (id)_itemComparator;
- (id)_itemsToHideInSet:(id)a3;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (void)_fetchInitialPredictions;
- (void)_updateFilters;
- (void)dealloc;
- (void)executionEnvironmentDidEnterBackground:(id)a3;
- (void)executionEnvironmentWillEnterForeground:(id)a3;
- (void)predictionsManagerDidUpdatePredictions:(id)a3;
@end

@implementation HUDashboardActionSetItemModule

- (HUDashboardActionSetItemModule)initWithContext:(id)a3 itemUpdater:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HUDashboardActionSetItemModule;
  v8 = [(HFItemModule *)&v12 initWithItemUpdater:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
    [(HUDashboardActionSetItemModule *)v9 _fetchInitialPredictions];
    v10 = [MEMORY[0x277D14670] sharedInstance];
    [v10 addObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D14670] sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUDashboardActionSetItemModule;
  [(HUDashboardActionSetItemModule *)&v4 dealloc];
}

+ (BOOL)homeHasEnoughActionSetsForPredictions:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 actionSets];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  v3 = [v2 items];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  v3 = [v2 predictionsManager];

  return v3;
}

- (id)buildItemProviders
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_alloc(MEMORY[0x277D143A8]);
  v5 = [(HUDashboardActionSetItemModule *)self context];
  v6 = [v5 home];
  v7 = [v4 initWithHome:v6 actionSetItemStyle:1];
  [(HUDashboardActionSetItemModule *)self setActionSetItemProvider:v7];

  v8 = [(HUDashboardActionSetItemModule *)self context];
  v9 = [v8 room];
  v10 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
  [v10 setRoom:v9];

  v11 = [(HUDashboardActionSetItemModule *)self context];
  LODWORD(v9) = [v11 includePredictedScenes];

  if (v9)
  {
    v12 = objc_alloc(MEMORY[0x277D14950]);
    v13 = [(HUDashboardActionSetItemModule *)self context];
    v14 = [v13 home];
    v15 = [v12 initWithHome:v14 predictionsManagerDelegate:self itemCount:2];
    [(HUDashboardActionSetItemModule *)self setPredictedActionSetItemProvider:v15];
  }

  [(HUDashboardActionSetItemModule *)self _updateFilters];
  v16 = [(HUDashboardActionSetItemModule *)self valueSource];

  if (v16)
  {
    v17 = [(HUDashboardActionSetItemModule *)self valueSource];
    v18 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
    [v18 setValueSource:v17];

    v19 = [(HUDashboardActionSetItemModule *)self valueSource];
    v20 = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
    [v20 setValueSource:v19];
  }

  v21 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
  [v3 na_safeAddObject:v21];

  v22 = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  [v3 na_safeAddObject:v22];

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"scenesSection"];
  v7 = _HULocalizedStringWithDefaultValue(@"HUGridScenesSectionTitle", @"HUGridScenesSectionTitle", 1);
  [v6 setHeaderTitle:v7];

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  v10 = [v9 orderedItems];

  [v8 na_safeAddObjectsFromArray:v10];
  v11 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
  v12 = [v11 items];
  v13 = [v12 allObjects];
  v14 = [(HUDashboardActionSetItemModule *)self _itemComparator];
  v15 = [v13 sortedArrayUsingComparator:v14];

  [v8 na_safeAddObjectsFromArray:v15];
  [v6 setItems:v8];
  v16 = MEMORY[0x277D14778];
  v20[0] = v6;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18 = [v16 filterSections:v17 toDisplayedItems:v5];

  return v18;
}

- (id)_itemComparator
{
  v21.receiver = self;
  v21.super_class = HUDashboardActionSetItemModule;
  v3 = [(HFItemModule *)&v21 _itemComparator];
  v4 = [(HUDashboardActionSetItemModule *)self context];
  v5 = [v4 accessoryTypeGroup];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v7 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
    v8 = [v7 items];
    v9 = [v8 allObjects];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__HUDashboardActionSetItemModule__itemComparator__block_invoke;
    v18[3] = &unk_277DBDF90;
    v19 = v5;
    v10 = v6;
    v20 = v10;
    [v9 na_each:v18];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__HUDashboardActionSetItemModule__itemComparator__block_invoke_2;
    v15[3] = &unk_277DBDFB8;
    v16 = v10;
    v17 = self;
    v11 = v10;
    v12 = _Block_copy(v15);

    v3 = v12;
  }

  v13 = _Block_copy(v3);

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

- (void)predictionsManagerDidUpdatePredictions:(id)a3
{
  v4 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
  v5 = [v4 isFinished];

  if ((v5 & 1) == 0)
  {
    v6 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
    [v6 finishWithNoResult];
  }
}

- (void)executionEnvironmentWillEnterForeground:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];

  if (!v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "<HUDashboardActionSetItemModule %p>: Invalidating predictions and awaiting fetch", &v7, 0xCu);
    }

    v6 = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
    [v6 invalidatePredictions];

    [(HUDashboardActionSetItemModule *)self _fetchInitialPredictions];
  }
}

- (void)executionEnvironmentDidEnterBackground:(id)a3
{
  v4 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
  v5 = [MEMORY[0x277CCA9B8] na_cancelledError];
  [v4 finishWithError:v5];

  [(HUDashboardActionSetItemModule *)self setInitialPredictionUpdateFuture:0];
}

- (void)_fetchInitialPredictions
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = [(HUDashboardActionSetItemModule *)self context];
  v6 = [v5 home];
  LOBYTE(v4) = [v4 homeHasEnoughActionSetsForPredictions:v6];

  if (v4)
  {
    v7 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];

    if (v7)
    {
      v8 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
      v9 = [MEMORY[0x277CCA9B8] na_cancelledError];
      [v8 finishWithError:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x277D2C900]);
    v11 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__HUDashboardActionSetItemModule__fetchInitialPredictions__block_invoke;
    v25[3] = &unk_277DB7558;
    v12 = v10;
    v26 = v12;
    v27 = self;
    v13 = [v11 afterDelay:v25 performBlock:5.0];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = self;
      _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "<HUDashboardActionSetItemModule %p>: Awaiting prediction fetch", location, 0xCu);
    }

    v15 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HUDashboardActionSetItemModule *)self setInitialPredictionUpdateFuture:v15];

    v16 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__HUDashboardActionSetItemModule__fetchInitialPredictions__block_invoke_102;
    v23[3] = &unk_277DB7530;
    v17 = v13;
    v24 = v17;
    v18 = [v16 addCompletionBlock:v23];

    objc_initWeak(location, self);
    v19 = [(HUDashboardActionSetItemModule *)self initialPredictionUpdateFuture];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__HUDashboardActionSetItemModule__fetchInitialPredictions__block_invoke_2;
    v21[3] = &unk_277DB9D18;
    objc_copyWeak(v22, location);
    v22[1] = a2;
    v20 = [v19 addSuccessBlock:v21];

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
  v2 = [(HUDashboardActionSetItemModule *)self context];
  v3 = [v2 home];
  v4 = [v3 hf_showPredictedScenesOnDashboard];

  return v4;
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

- (id)_itemsToHideInSet:(id)a3
{
  if (-[HUDashboardActionSetItemModule showPredictedScenes](self, "showPredictedScenes", a3) && (-[HUDashboardActionSetItemModule context](self, "context"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 includePredictedScenes], v4, v5))
  {
    v6 = [(HUDashboardActionSetItemModule *)self predictedActionSetItems];
    v7 = [v6 na_map:&__block_literal_global_126];

    v8 = [(HUDashboardActionSetItemModule *)self actionSetItemProvider];
    v9 = [v8 items];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HUDashboardActionSetItemModule__itemsToHideInSet___block_invoke_2;
    v13[3] = &unk_277DBE000;
    v14 = v7;
    v10 = v7;
    v11 = [v9 na_filter:v13];
  }

  else
  {
    v11 = [(HUDashboardActionSetItemModule *)self predictedActionSetItems];
  }

  return v11;
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

- (BOOL)supportsReorderingForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUDashboardActionSetItemModule *)self predictedActionSetItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    return 0;
  }

  v9 = [(HUDashboardActionSetItemModule *)self context];
  v10 = [v9 accessoryTypeGroup];
  if (v10)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(HFItemModule *)self supportsReordering];
  }

  return v8;
}

@end