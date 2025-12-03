@interface HFPredictionsItemProvider
- (HFPredictionsItemProvider)init;
- (HFPredictionsItemProvider)initWithHome:(id)home predictionsManager:(id)manager itemLimit:(unint64_t)limit;
- (id)_backFillPredictions:(id)predictions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fetchPredictions;
- (id)invalidationReasons;
- (id)itemConfidence:(id)confidence;
- (id)itemPriority:(id)priority;
- (id)reloadItems;
- (void)setFreezePredictions:(BOOL)predictions;
- (void)setThawPredictionsForNextReload:(BOOL)reload;
@end

@implementation HFPredictionsItemProvider

- (HFPredictionsItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_predictionsManager_itemLimit_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPredictionsItemProvider.m" lineNumber:50 description:{@"%s is unavailable; use %@ instead", "-[HFPredictionsItemProvider init]", v5}];

  return 0;
}

- (HFPredictionsItemProvider)initWithHome:(id)home predictionsManager:(id)manager itemLimit:(unint64_t)limit
{
  homeCopy = home;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = HFPredictionsItemProvider;
  v11 = [(HFItemProvider *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, home);
    v13 = [MEMORY[0x277CBEB58] set];
    allItems = v12->_allItems;
    v12->_allItems = v13;

    objc_storeStrong(&v12->_predictionsManager, manager);
    v12->_itemLimit = limit;
    hf_characteristicValueManager = [homeCopy hf_characteristicValueManager];
    valueSource = v12->_valueSource;
    v12->_valueSource = hf_characteristicValueManager;

    v12->_freezePredictions = 0;
    v12->_thawPredictionsForNextReload = 0;
    lastPredictions = v12->_lastPredictions;
    v12->_lastPredictions = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFPredictionsItemProvider *)self home];
  predictionsManager = [(HFPredictionsItemProvider *)self predictionsManager];
  v7 = [v4 initWithHome:home predictionsManager:predictionsManager itemLimit:{-[HFPredictionsItemProvider itemLimit](self, "itemLimit")}];

  return v7;
}

- (void)setFreezePredictions:(BOOL)predictions
{
  self->_freezePredictions = predictions;
  if (!predictions)
  {
    lastPredictions = self->_lastPredictions;
    self->_lastPredictions = 0;
  }
}

- (void)setThawPredictionsForNextReload:(BOOL)reload
{
  v9 = *MEMORY[0x277D85DE8];
  self->_thawPredictionsForNextReload = reload;
  if (reload)
  {
    v4 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ set to thaw predictions for next reload", &v7, 0xCu);
    }

    predictionsManager = [(HFPredictionsItemProvider *)self predictionsManager];
    [predictionsManager moduleDidUnfreezeItems];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)fetchPredictions
{
  v26 = *MEMORY[0x277D85DE8];
  if (-[HFPredictionsItemProvider freezePredictions](self, "freezePredictions") && !-[HFPredictionsItemProvider thawPredictionsForNextReload](self, "thawPredictionsForNextReload") && (-[HFPredictionsItemProvider lastPredictions](self, "lastPredictions"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v5 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      home = [(HFPredictionsItemProvider *)self home];
      lastPredictions = [(HFPredictionsItemProvider *)self lastPredictions];
      *buf = 138412802;
      selfCopy2 = self;
      v22 = 2112;
      v23 = home;
      v24 = 2112;
      v25 = lastPredictions;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to fetch predictions for home %@, but is frozen. Returning %@", buf, 0x20u);
    }

    v8 = MEMORY[0x277D2C900];
    lastPredictions2 = [(HFPredictionsItemProvider *)self lastPredictions];
    v10 = [v8 futureWithResult:lastPredictions2];
  }

  else
  {
    objc_initWeak(&location, self);
    if ([(HFPredictionsItemProvider *)self freezePredictions])
    {
      v11 = HFLogForCategory(0x38uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        home2 = [(HFPredictionsItemProvider *)self home];
        *buf = 138412546;
        selfCopy2 = self;
        v22 = 2112;
        v23 = home2;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@ thawing predictions to be recomputed for home %@", buf, 0x16u);
      }
    }

    predictionsManager = [(HFPredictionsItemProvider *)self predictionsManager];
    fetchUserActionPredictions = [predictionsManager fetchUserActionPredictions];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__HFPredictionsItemProvider_fetchPredictions__block_invoke;
    v17[3] = &unk_277DF52E0;
    objc_copyWeak(&v18, &location);
    v10 = [fetchUserActionPredictions flatMap:v17];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

id __45__HFPredictionsItemProvider_fetchPredictions__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained freezePredictions])
  {
    v5 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ saving and returning predictions after thawing %@", &v11, 0x16u);
    }

    [WeakRetained setThawPredictionsForNextReload:0];
    v6 = [WeakRetained predictionsManager];
    [v6 moduleDidFreezeItems];

    v7 = [v3 copy];
    [WeakRetained setLastPredictions:v7];
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__HFPredictionsItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v12, &location);
  v3 = _Block_copy(aBlock);
  fetchPredictions = [(HFPredictionsItemProvider *)self fetchPredictions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__HFPredictionsItemProvider_reloadItems__block_invoke_2;
  v8[3] = &unk_277DF6988;
  objc_copyWeak(&v10, &location);
  v5 = v3;
  v9 = v5;
  v6 = [fetchPredictions flatMap:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

HFHomeItem *__40__HFPredictionsItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
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

  if (v7)
  {
    v8 = [[HFHomeItem alloc] initWithHome:v7];
    goto LABEL_58;
  }

  v9 = [WeakRetained valueSource];
  objc_opt_class();
  v10 = v5;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    objc_opt_class();
    v13 = v10;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      if ([v15 hf_isRemoteControl])
      {
        v16 = HFTargetControlAccessoryItem;
LABEL_34:
        v8 = [[v16 alloc] initWithAccessory:v15 valueSource:v9];
LABEL_56:

        goto LABEL_57;
      }

      if ([v15 hf_isMediaAccessory] && (objc_msgSend(v15, "mediaProfile"), v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
      {
        v19 = [v15 mediaProfile];
        v20 = [[HFMediaAccessoryItem alloc] initWithValueSource:v9 mediaProfileContainer:v19];
      }

      else
      {
        if (![v15 hf_isMatterOnlyAccessory])
        {
          v16 = HFAccessoryItem;
          goto LABEL_34;
        }

        v19 = [[HFMatterAccessoryRepresentable alloc] initWithAccessory:v15];
        v20 = [HFAccessoryListUtilities accessoryRepresentableItemForAccessoryRepresentable:v19 valueSource:v9];
      }
    }

    else
    {
      objc_opt_class();
      v17 = v13;
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (!v19)
      {
        objc_opt_class();
        v22 = v17;
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (v24)
        {
          v8 = [[HFServiceGroupItem alloc] initWithValueSource:v9 serviceGroup:v24];
        }

        else
        {
          objc_opt_class();
          v25 = v22;
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;

          if (v27)
          {
            v8 = [[HFMediaAccessoryItem alloc] initWithValueSource:v9 mediaProfileContainer:v27];
            v24 = 0;
          }

          else
          {
            objc_opt_class();
            v28 = v25;
            if (objc_opt_isKindOfClass())
            {
              v29 = v28;
            }

            else
            {
              v29 = 0;
            }

            v30 = v29;

            if (v30)
            {
              v8 = [[HFMediaAccessoryItem alloc] initWithValueSource:v9 mediaProfileContainer:v30];
              v31 = v30;
              v24 = 0;
            }

            else
            {
              objc_opt_class();
              v32 = v28;
              if (objc_opt_isKindOfClass())
              {
                v33 = v32;
              }

              else
              {
                v33 = 0;
              }

              v34 = v33;

              if (v34)
              {
                v8 = [[HFPlaceholderItem alloc] initWithHomeKitObject:v34];
              }

              else
              {
                NSLog(&cfstr_UnsupportedHom.isa, v32);
                v8 = 0;
              }

              v35 = v34;
              v24 = 0;

              v31 = 0;
            }
          }
        }

        goto LABEL_55;
      }

      v20 = [objc_alloc(+[HFServiceItem itemClassForService:](HFServiceItem itemClassForService:{v19)), "initWithValueSource:service:", v9, v19}];
    }

    v8 = v20;
LABEL_55:

    goto LABEL_56;
  }

  v8 = [[HFActionSetItem alloc] initWithActionSet:v12 actionSetItemStyle:1 valueSource:v9];
LABEL_57:

LABEL_58:

  return v8;
}

id __40__HFPredictionsItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 na_safeSubarrayWithRange:{0, objc_msgSend(WeakRetained, "itemLimit")}];
  v6 = [WeakRetained transformedPredictions:v5];

  v7 = [WeakRetained _backFillPredictions:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__HFPredictionsItemProvider_reloadItems__block_invoke_3;
  v10[3] = &unk_277DF6988;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = *(a1 + 32);
  v8 = [v7 flatMap:v10];

  objc_destroyWeak(&v12);

  return v8;
}

id __40__HFPredictionsItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained reloadItemsWithHomeKitObjects:v3 filter:0 itemMap:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__HFPredictionsItemProvider_reloadItems__block_invoke_4;
  v8[3] = &unk_277DF30B8;
  objc_copyWeak(&v9, (a1 + 40));
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  return v6;
}

id __40__HFPredictionsItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained allItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained allItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

id __52__HFPredictionsItemProvider_transformedPredictions___block_invoke(uint64_t a1, void *a2)
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

  if (v5 && [v5 hf_isMediaAccessory] && (objc_msgSend(v5, "mediaProfile"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 mediaProfile];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

- (id)_backFillPredictions:(id)predictions
{
  v83 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(HFPredictionsItemProvider *)self setObjectPriorities:dictionary];

  v6 = [MEMORY[0x277CBEB40] orderedSetWithArray:predictionsCopy];
  v7 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v82 = predictionsCopy;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Initial predictions: %@", buf, 0xCu);
  }

  predictionsManager = [(HFPredictionsItemProvider *)self predictionsManager];
  filterTypes = [predictionsManager filterTypes];
  if ([filterTypes count])
  {
    predictionsManager2 = [(HFPredictionsItemProvider *)self predictionsManager];
    filterTypes2 = [predictionsManager2 filterTypes];
    v12 = [filterTypes2 containsObject:&unk_282524978];
  }

  else
  {
    v12 = 1;
  }

  v66 = predictionsCopy;
  if (_os_feature_enabled_impl())
  {
    predictionsManager3 = [(HFPredictionsItemProvider *)self predictionsManager];
    filterTypes3 = [predictionsManager3 filterTypes];
    if ([filterTypes3 count])
    {
      predictionsManager4 = [(HFPredictionsItemProvider *)self predictionsManager];
      [predictionsManager4 filterTypes];
      v17 = v16 = v6;
      v18 = [v17 containsObject:&unk_282524990];

      v6 = v16;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v67 = orderedSet;
  selfCopy = self;
  if (v12)
  {
    home = [(HFPredictionsItemProvider *)self home];
    hf_accessoryLikeObjects = [home hf_accessoryLikeObjects];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_2;
    v78[3] = &unk_277DFEBF0;
    v79 = &__block_literal_global_42_2;
    [hf_accessoryLikeObjects na_map:v78];
    v23 = v22 = v6;
    allObjects = [v23 allObjects];
    home2 = [(HFPredictionsItemProvider *)selfCopy home];
    hf_reorderableServicesList = [home2 hf_reorderableServicesList];
    [hf_reorderableServicesList sortedHomeKitObjectComparator];
    v28 = v27 = v18;
    v29 = [allObjects sortedArrayUsingComparator:v28];

    self = selfCopy;
    v6 = v22;

    orderedSet = v67;
    [v67 addObjectsFromArray:v29];
    home3 = [(HFPredictionsItemProvider *)selfCopy home];
    hf_orderedRooms = [home3 hf_orderedRooms];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_3;
    v76[3] = &unk_277DFEC40;
    v77 = &__block_literal_global_42_2;
    v32 = [hf_orderedRooms na_flatMap:v76];

    [v67 addObjectsFromArray:v32];
    v18 = v27;
  }

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  if (v18)
  {
    home4 = [(HFPredictionsItemProvider *)self home];
    hf_orderedActionSets = [home4 hf_orderedActionSets];
    v36 = [hf_orderedActionSets na_filter:&__block_literal_global_48_4];

    v37 = [v36 na_filter:&__block_literal_global_50_1];
    [orderedSet2 addObjectsFromArray:v37];
    v38 = [v36 na_filter:&__block_literal_global_52_3];
    [orderedSet2 addObjectsFromArray:v38];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_8;
  aBlock[3] = &unk_277DFEC68;
  v39 = v6;
  v74 = v39;
  selfCopy2 = self;
  v40 = _Block_copy(aBlock);
  v41 = [v39 count];
  if (v41 < [(HFPredictionsItemProvider *)self itemLimit])
  {
    do
    {
      if (![orderedSet count] && !objc_msgSend(orderedSet2, "count"))
      {
        break;
      }

      v40[2](v40, orderedSet);
      v40[2](v40, orderedSet);
      v40[2](v40, orderedSet2);
      v42 = [v39 count];
    }

    while (v42 < [(HFPredictionsItemProvider *)self itemLimit]);
  }

  v65 = orderedSet2;
  +[HFAnalyticsCCPredictionEvent sendMetricsForPredictionEventAtStage:withCount:](HFAnalyticsCCPredictionEvent, "sendMetricsForPredictionEventAtStage:withCount:", 3, [v39 count]);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if ([v39 count] && -[HFPredictionsItemProvider itemLimit](self, "itemLimit"))
    {
      v43 = 0;
      do
      {
        v44 = objc_alloc_init(HFPlaceholder);
        [v39 addObject:v44];

        ++v43;
      }

      while (v43 < [(HFPredictionsItemProvider *)self itemLimit]);
    }

    home5 = [(HFPredictionsItemProvider *)self home];
    [v39 insertObject:home5 atIndex:0];
  }

  v64 = v40;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v46 = v39;
  v47 = [v46 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v70;
    v50 = 1;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v70 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v52 = *(*(&v69 + 1) + 8 * i);
        objectPriorities = [(HFPredictionsItemProvider *)self objectPriorities];
        v54 = [MEMORY[0x277CCABB0] numberWithInteger:v50];
        uniqueIdentifier = [v52 uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];
        [objectPriorities setObject:v54 forKey:uUIDString];

        self = selfCopy;
        ++v50;
      }

      v48 = [v46 countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v48);
  }

  v57 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    array = [v46 array];
    *buf = 138412290;
    v82 = array;
    _os_log_impl(&dword_20D9BF000, v57, OS_LOG_TYPE_DEFAULT, "Backfilled predictions: %@", buf, 0xCu);
  }

  v59 = MEMORY[0x277D2C900];
  array2 = [v46 array];
  v61 = [v59 futureWithResult:array2];

  v62 = *MEMORY[0x277D85DE8];

  return v61;
}

uint64_t __50__HFPredictionsItemProvider__backFillPredictions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 homeKitObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [v2 homeKitObject];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 hf_showsAsAccessoryInControlCentre];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      v9 = 1;
      goto LABEL_7;
    }

    v6 = [v2 homeKitObject];
    v7 = [v6 hf_showsAsServiceInControlCentre];
  }

  v9 = v7;

LABEL_7:
  return v9;
}

id __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_effectiveIsFavorite] && (*(*(a1 + 32) + 16))())
  {
    v4 = [v3 homeKitObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_accessoryLikeObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_4;
  v11[3] = &unk_277DFEC18;
  v12 = *(a1 + 32);
  v5 = [v4 na_map:v11];
  v6 = [v5 allObjects];
  v7 = [v3 hf_reorderableServicesList];

  v8 = [v7 sortedHomeKitObjectComparator];
  v9 = [v6 sortedArrayUsingComparator:v8];

  return v9;
}

id __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_effectiveShowInHomeDashboard] && (*(*(a1 + 32) + 16))())
  {
    v4 = [v3 homeKitObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

void __50__HFPredictionsItemProvider__backFillPredictions___block_invoke_8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) count];
  if (v4 < [*(a1 + 40) itemLimit])
  {
    v5 = [v3 firstObject];
    if (v5)
    {
      v6 = HFLogForCategory(0x38uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Backfilling %@", &v8, 0xCu);
      }

      [*(a1 + 32) addObject:v5];
      [v3 removeObjectAtIndex:0];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)invalidationReasons
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFPredictionsItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"actionSet";
  v8[1] = @"home";
  v8[2] = @"user";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)itemPriority:(id)priority
{
  priorityCopy = priority;
  objectPriorities = [(HFPredictionsItemProvider *)self objectPriorities];
  homeKitObject = [priorityCopy homeKitObject];

  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v9 = [objectPriorities objectForKey:uUIDString];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  }

  v11 = v10;

  return v11;
}

- (id)itemConfidence:(id)confidence
{
  homeKitObject = [confidence homeKitObject];
  if (homeKitObject)
  {
    predictionsManager = [(HFPredictionsItemProvider *)self predictionsManager];
    v6 = [predictionsManager predictionConfidenceForObject:homeKitObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end