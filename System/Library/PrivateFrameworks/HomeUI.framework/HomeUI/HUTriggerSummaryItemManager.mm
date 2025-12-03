@interface HUTriggerSummaryItemManager
- (BOOL)_isInEditMode;
- (BOOL)_shouldShowDeleteItem;
- (BOOL)_shouldShowDurationItems;
- (BOOL)_shouldShowTestItem;
- (BOOL)_showActionSetsInstructionItem;
- (BOOL)_showEnableSwitch;
- (BOOL)_showTriggerSummary;
- (HUTriggerSummaryItemManager)initWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate;
- (NSArray)overviewItemModules;
- (NSSet)prioritizedAccessories;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)set;
- (id)_staticItemsForHome:(id)home;
- (id)_triggerDeleteInstructionItemString;
- (id)_triggerServiceActionsInstructionDescription;
- (id)_triggerTestActionsInstructionDescription;
- (id)_unsupportedTriggers;
- (id)triggerCurrentDisplayedName;
- (void)setPrioritizedAccessories:(id)accessories;
- (void)triggerBuilderDidChange;
@end

@implementation HUTriggerSummaryItemManager

- (HUTriggerSummaryItemManager)initWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate
{
  builderCopy = builder;
  flowCopy = flow;
  delegateCopy = delegate;
  v12 = [[HUTriggerBuilderItem alloc] initWithTriggerBuilder:builderCopy nameType:4];
  v15.receiver = self;
  v15.super_class = HUTriggerSummaryItemManager;
  v13 = [(HFItemManager *)&v15 initWithDelegate:delegateCopy sourceItem:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_triggerBuilder, builder);
    objc_storeStrong(&v13->_currentFlow, flow);
  }

  return v13;
}

- (void)triggerBuilderDidChange
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v5 = [triggerBuilder naturalLanguageNameOfType:2];
  triggerBuilder2 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  [triggerBuilder2 setDisplayName:v5];

  triggerBuilder3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  LOBYTE(v5) = [triggerBuilder3 nameIsConfigured];

  if ((v5 & 1) == 0)
  {
    triggerBuilder4 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    v9 = [triggerBuilder4 naturalLanguageNameOfType:0];
    triggerBuilder5 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    [triggerBuilder5 setName:v9];
  }

  v11 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (id)triggerCurrentDisplayedName
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  nameIsConfigured = [triggerBuilder nameIsConfigured];
  triggerBuilder2 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v6 = triggerBuilder2;
  if (nameIsConfigured)
  {
    [triggerBuilder2 name];
  }

  else
  {
    [triggerBuilder2 displayName];
  }
  v7 = ;

  return v7;
}

- (void)setPrioritizedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  actionsModule = [(HUTriggerSummaryItemManager *)self actionsModule];

  if (actionsModule)
  {
    actionsModule2 = [(HUTriggerSummaryItemManager *)self actionsModule];
    [actionsModule2 setPrioritizedAccessories:accessoriesCopy];

    prioritizedAccessories = self->_prioritizedAccessories;
    self->_prioritizedAccessories = 0;
  }

  else
  {
    v7 = accessoriesCopy;
    prioritizedAccessories = self->_prioritizedAccessories;
    self->_prioritizedAccessories = v7;
  }
}

- (NSSet)prioritizedAccessories
{
  actionsModule = [(HUTriggerSummaryItemManager *)self actionsModule];
  prioritizedAccessories = [actionsModule prioritizedAccessories];
  prioritizedAccessories = prioritizedAccessories;
  if (!prioritizedAccessories)
  {
    prioritizedAccessories = self->_prioritizedAccessories;
  }

  v6 = prioritizedAccessories;

  return prioritizedAccessories;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v31 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  home = [(HFItemManager *)self home];
  hf_supportsSharedEventAutomation = [home hf_supportsSharedEventAutomation];

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (hf_supportsSharedEventAutomation)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    home2 = [(HFItemManager *)self home];
    hf_prettyDescription = [home2 hf_prettyDescription];
    *buf = 138412290;
    v28 = hf_prettyDescription;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_INFO, "Home %@ supports shared event automation", buf, 0xCu);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    home2 = [(HFItemManager *)self home];
    hf_prettyDescription = [home2 hf_prettyDescription];
    home3 = [(HFItemManager *)self home];
    residentDevices = [home3 residentDevices];
    hf_prettyDescription2 = [residentDevices hf_prettyDescription];
    *buf = 138412546;
    v28 = hf_prettyDescription;
    v29 = 2112;
    v30 = hf_prettyDescription2;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_INFO, "No resident on home %@ supports shared event automation; residents: %@", buf, 0x16u);
  }

LABEL_7:
  array = [MEMORY[0x277CBEB18] array];
  v15 = [(HUTriggerSummaryItemManager *)self _staticItemsForHome:homeCopy];
  if ([v15 count])
  {
    v16 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v15];
    [array na_safeAddObject:v16];
  }

  _unsupportedTriggers = [(HUTriggerSummaryItemManager *)self _unsupportedTriggers];
  if ([_unsupportedTriggers count])
  {
    _isInEditMode = [(HUTriggerSummaryItemManager *)self _isInEditMode];

    if (!_isInEditMode)
    {
      goto LABEL_13;
    }

    v19 = objc_alloc(MEMORY[0x277D14B40]);
    _unsupportedTriggers2 = [(HUTriggerSummaryItemManager *)self _unsupportedTriggers];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__HUTriggerSummaryItemManager__buildItemProvidersForHome___block_invoke;
    v25[3] = &unk_277DC3BE0;
    v26 = homeCopy;
    v21 = [_unsupportedTriggers2 na_map:v25];
    v22 = [v19 initWithItems:v21];
    [(HUTriggerSummaryItemManager *)self setUnsupportedItemProvider:v22];

    unsupportedItemProvider = [(HUTriggerSummaryItemManager *)self unsupportedItemProvider];
    [array na_safeAddObject:unsupportedItemProvider];

    _unsupportedTriggers = v26;
  }

LABEL_13:

  return array;
}

id __58__HUTriggerSummaryItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14C60];
  v4 = a2;
  v5 = [[v3 alloc] initWithHome:*(a1 + 32) trigger:v4];

  return v5;
}

- (id)_staticItemsForHome:(id)home
{
  v37[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v4 = [MEMORY[0x277CBEB58] set];
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D14C30]);
  sourceItem = [(HFItemManager *)self sourceItem];
  v7 = [sourceItem copy];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke;
  v33[3] = &unk_277DC37E0;
  objc_copyWeak(&v34, &location);
  v8 = [v5 initWithSourceItem:v7 transformationBlock:v33];
  [(HUTriggerSummaryItemManager *)self setEnableItem:v8];

  enableItem = [(HUTriggerSummaryItemManager *)self enableItem];
  [v4 addObject:enableItem];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_2;
  v31[3] = &unk_277DB7448;
  objc_copyWeak(&v32, &location);
  v11 = [v10 initWithResultsBlock:v31];
  [(HUTriggerSummaryItemManager *)self setNamingRowItem:v11];

  namingRowItem = [(HUTriggerSummaryItemManager *)self namingRowItem];
  [v4 addObject:namingRowItem];

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_3;
  v29[3] = &unk_277DB7448;
  objc_copyWeak(&v30, &location);
  v14 = [v13 initWithResultsBlock:v29];
  [(HUTriggerSummaryItemManager *)self setCreateActionButtonItem:v14];

  createActionButtonItem = [(HUTriggerSummaryItemManager *)self createActionButtonItem];
  [v4 addObject:createActionButtonItem];

  v16 = objc_alloc(MEMORY[0x277D14B38]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_4;
  v27[3] = &unk_277DB7448;
  objc_copyWeak(&v28, &location);
  v17 = [v16 initWithResultsBlock:v27];
  [(HUTriggerSummaryItemManager *)self setTestTriggerItem:v17];

  testTriggerItem = [(HUTriggerSummaryItemManager *)self testTriggerItem];
  [v4 addObject:testTriggerItem];

  v19 = objc_alloc(MEMORY[0x277D14B38]);
  v36[0] = *MEMORY[0x277D13F60];
  _triggerDeleteInstructionItemString = [(HUTriggerSummaryItemManager *)self _triggerDeleteInstructionItemString];
  v37[0] = _triggerDeleteInstructionItemString;
  v36[1] = *MEMORY[0x277D13FB8];
  v21 = [MEMORY[0x277CCABB0] numberWithInt:{-[HUTriggerSummaryItemManager _shouldShowDeleteItem](self, "_shouldShowDeleteItem") ^ 1}];
  v37[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v23 = [v19 initWithResults:v22];
  [(HUTriggerSummaryItemManager *)self setDeleteTriggerItem:v23];

  deleteTriggerItem = [(HUTriggerSummaryItemManager *)self deleteTriggerItem];
  [v4 addObject:deleteTriggerItem];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  return v4;
}

id __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v4 mutableCopy];
  v7 = 1;
  v8 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryEnableSwitchTitle", @"HUTriggerSummaryEnableSwitchTitle", 1);
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v6 setObject:@"HUTriggerSummaryEnableSwitchTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
  v9 = MEMORY[0x277CCABB0];
  v10 = [v4 objectForKeyedSubscript:@"activeForceDisableReasons"];

  v11 = [v10 integerValue];
  if (!v11)
  {
    v2 = [WeakRetained home];
    v7 = [v2 hf_currentUserIsAdministrator] ^ 1;
  }

  v12 = [v9 numberWithInt:v7];
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  if (!v11)
  {
  }

  v13 = MEMORY[0x277CCABB0];
  if ([WeakRetained _isInEditMode])
  {
    v14 = [WeakRetained _showEnableSwitch] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = [v13 numberWithInt:v14];
  [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  return v6;
}

id __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v3 = [WeakRetained triggerBuilder];
  v4 = [v3 nameIsConfigured];

  if (v4)
  {
    v5 = [WeakRetained triggerBuilder];
    v6 = [v5 name];
    [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  v7 = [WeakRetained triggerBuilder];
  v8 = [v7 displayName];
  [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13F70]];

  v9 = MEMORY[0x277CCABB0];
  v10 = [WeakRetained currentFlow];
  v11 = [v9 numberWithBool:{objc_msgSend(v10, "isStandalone")}];
  [v2 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v12 = MEMORY[0x277D2C900];
  v13 = [v2 copy];
  v14 = [v12 futureWithResult:v13];

  return v14;
}

id __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_3(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = MEMORY[0x277D2C900];
  v14[0] = *MEMORY[0x277D13F60];
  v5 = [WeakRetained _triggerServiceActionsInstructionDescription];
  v15[0] = v5;
  v14[1] = *MEMORY[0x277D13FB8];
  v6 = MEMORY[0x277CCABB0];
  v7 = [WeakRetained _isInEditMode];
  if (v7)
  {
    v1 = [WeakRetained home];
    if ([v1 hf_currentUserIsAdministrator])
    {
      v2 = [WeakRetained triggerBuilder];
      v8 = [v2 isShortcutOwned];
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  v10 = [v6 numberWithInt:v8];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [v4 futureWithResult:v11];

  if (v9)
  {
  }

  if (v7)
  {
  }

  return v12;
}

id __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_4(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v8[0] = *MEMORY[0x277D13F60];
  v3 = [WeakRetained _triggerTestActionsInstructionDescription];
  v9[0] = v3;
  v8[1] = *MEMORY[0x277D13FB8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "_shouldShowTestItem") ^ 1}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

- (id)_buildItemModulesForHome:(id)home
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = [HUTriggerEventsItemModule alloc];
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v7 = [(HUTriggerEventsItemModule *)v5 initWithTriggerBuilder:triggerBuilder itemUpdater:self];
  [(HUTriggerSummaryItemManager *)self setEventsModule:v7];

  _isInEditMode = [(HUTriggerSummaryItemManager *)self _isInEditMode];
  if (_isInEditMode)
  {
    triggerBuilder = [(HFItemManager *)self home];
    v9 = [triggerBuilder hf_currentUserIsAdministrator] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  eventsModule = [(HUTriggerSummaryItemManager *)self eventsModule];
  [eventsModule setHideAddEventButton:v9];

  if (_isInEditMode)
  {
  }

  eventsModule2 = [(HUTriggerSummaryItemManager *)self eventsModule];
  [array na_safeAddObject:eventsModule2];

  v12 = [HUTriggerDurationItemModule alloc];
  triggerBuilder2 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v14 = [(HUTriggerDurationItemModule *)v12 initWithTriggerBuilder:triggerBuilder2 itemUpdater:self];
  [(HUTriggerSummaryItemManager *)self setDurationModule:v14];

  durationModule = [(HUTriggerSummaryItemManager *)self durationModule];
  [durationModule setItemManager:self];

  durationModule2 = [(HUTriggerSummaryItemManager *)self durationModule];
  [array na_safeAddObject:durationModule2];

  v17 = [HUTriggerActionSetsItemModule alloc];
  triggerBuilder3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  currentFlow = [(HUTriggerSummaryItemManager *)self currentFlow];
  v20 = [(HUTriggerActionSetsItemModule *)v17 initWithTriggerBuilder:triggerBuilder3 flow:currentFlow itemUpdater:self];
  [(HUTriggerSummaryItemManager *)self setActionsModule:v20];

  prioritizedAccessories = self->_prioritizedAccessories;
  actionsModule = [(HUTriggerSummaryItemManager *)self actionsModule];
  [actionsModule setPrioritizedAccessories:prioritizedAccessories];

  v23 = self->_prioritizedAccessories;
  self->_prioritizedAccessories = 0;

  actionsModule2 = [(HUTriggerSummaryItemManager *)self actionsModule];
  [array na_safeAddObject:actionsModule2];

  v25 = [HUTriggerMediaItemModule alloc];
  triggerBuilder4 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v27 = [(HUTriggerMediaItemModule *)v25 initWithTriggerBuilder:triggerBuilder4 itemUpdater:self];
  [(HUTriggerSummaryItemManager *)self setMediaModule:v27];

  mediaModule = [(HUTriggerSummaryItemManager *)self mediaModule];
  [array na_safeAddObject:mediaModule];

  objc_opt_class();
  triggerBuilder5 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v30 = triggerBuilder5;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  if (_os_feature_enabled_impl() && v31)
  {
    v32 = [MEMORY[0x277CBEB58] set];
    eventTypes = [v31 eventTypes];
    v34 = [eventTypes count];

    if (v34 == 1)
    {
      eventTypes2 = [v31 eventTypes];
      v36 = [eventTypes2 containsObject:*MEMORY[0x277D13898]];

      if (v36)
      {
        v37 = &unk_2824924E0;
LABEL_16:
        [v32 addObject:v37];
        goto LABEL_17;
      }

      eventTypes3 = [v31 eventTypes];
      v39 = [eventTypes3 containsObject:*MEMORY[0x277D13890]];

      if (v39)
      {
        v37 = &unk_2824924F8;
        goto LABEL_16;
      }
    }

LABEL_17:
    v40 = [HUTriggerConditionEditorItemModule alloc];
    triggerBuilder6 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    home = [triggerBuilder6 home];
    triggerBuilder7 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    conditionCollection = [triggerBuilder7 conditionCollection];
    v45 = [(HUTriggerConditionEditorItemModule *)v40 initWithItemUpdater:self home:home conditionCollection:conditionCollection disallowedConditionTypes:v32];
    [(HUTriggerSummaryItemManager *)self setConditionModule:v45];

    conditionModule = [(HUTriggerSummaryItemManager *)self conditionModule];
    [array na_safeAddObject:conditionModule];
  }

  return array;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v49[11] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  eventsModule = [(HUTriggerSummaryItemManager *)self eventsModule];
  v45 = [eventsModule buildSectionsWithDisplayedItems:itemsCopy];

  actionsModule = [(HUTriggerSummaryItemManager *)self actionsModule];
  v42 = [actionsModule buildSectionsWithDisplayedItems:itemsCopy];

  mediaModule = [(HUTriggerSummaryItemManager *)self mediaModule];
  v46 = [mediaModule buildSectionsWithDisplayedItems:itemsCopy];

  durationModule = [(HUTriggerSummaryItemManager *)self durationModule];
  v47 = itemsCopy;
  v44 = [durationModule buildSectionsWithDisplayedItems:itemsCopy];

  conditionModule = [(HUTriggerSummaryItemManager *)self conditionModule];
  v11 = [conditionModule buildSectionsWithDisplayedItems:itemsCopy];
  v12 = v11;
  v13 = MEMORY[0x277CBEBF8];
  if (v11)
  {
    v13 = v11;
  }

  v43 = v13;

  v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierEnable"];
  v15 = MEMORY[0x277CBEA60];
  enableItem = [(HUTriggerSummaryItemManager *)self enableItem];
  v17 = [v15 na_arrayWithSafeObject:enableItem];
  [v14 setItems:v17];

  v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierNamingSection"];
  v19 = MEMORY[0x277CBEA60];
  namingRowItem = [(HUTriggerSummaryItemManager *)self namingRowItem];
  v21 = [v19 na_arrayWithSafeObject:namingRowItem];
  [v18 setItems:v21];

  v22 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierAdd"];
  v23 = MEMORY[0x277CBEA60];
  createActionButtonItem = [(HUTriggerSummaryItemManager *)self createActionButtonItem];
  v25 = [v23 na_arrayWithSafeObject:createActionButtonItem];
  [v22 setItems:v25];

  v26 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierTest"];
  v27 = MEMORY[0x277CBEA60];
  testTriggerItem = [(HUTriggerSummaryItemManager *)self testTriggerItem];
  v29 = [v27 na_arrayWithSafeObject:testTriggerItem];
  [v26 setItems:v29];

  v30 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierUnsupportedItems"];
  unsupportedItemProvider = [(HUTriggerSummaryItemManager *)self unsupportedItemProvider];
  items = [unsupportedItemProvider items];
  allObjects = [items allObjects];
  [v30 setItems:allObjects];

  v34 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierDelete"];
  v35 = MEMORY[0x277CBEA60];
  deleteTriggerItem = [(HUTriggerSummaryItemManager *)self deleteTriggerItem];
  v37 = [v35 na_arrayWithSafeObject:deleteTriggerItem];
  [v34 setItems:v37];

  v49[0] = v14;
  v49[1] = v18;
  v49[2] = v45;
  v49[3] = v22;
  v49[4] = v42;
  v49[5] = v46;
  v49[6] = v26;
  v49[7] = v44;
  v49[8] = v43;
  v49[9] = v30;
  v49[10] = v34;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:11];
  na_arrayByFlattening = [v38 na_arrayByFlattening];
  [array addObjectsFromArray:na_arrayByFlattening];

  v40 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:v47];

  return v40;
}

- (id)_itemsToHideInSet:(id)set
{
  v6.receiver = self;
  v6.super_class = HUTriggerSummaryItemManager;
  v3 = [(HFItemManager *)&v6 _itemsToHideInSet:set];
  v4 = [v3 mutableCopy];

  return v4;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  home = [triggerBuilder home];
  v5 = [v2 futureWithResult:home];

  return v5;
}

- (NSArray)overviewItemModules
{
  itemModules = [(HFItemManager *)self itemModules];
  v3 = [itemModules na_map:&__block_literal_global_264];

  return v3;
}

void *__50__HUTriggerSummaryItemManager_overviewItemModules__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2824F7458])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)_showTriggerSummary
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  context = [triggerBuilder context];
  if ([context showTriggerSummary])
  {
    currentFlow = [(HUTriggerSummaryItemManager *)self currentFlow];
    v6 = [currentFlow isStandalone] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_showEnableSwitch
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  context = [triggerBuilder context];
  if ([context showTriggerEnableSwitch])
  {
    currentFlow = [(HUTriggerSummaryItemManager *)self currentFlow];
    v6 = [currentFlow isStandalone] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_shouldShowDurationItems
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  context = [triggerBuilder context];
  if ([context allowDurationEditing])
  {
    triggerBuilder2 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    supportsEndEvents = [triggerBuilder2 supportsEndEvents];

    if (!supportsEndEvents)
    {
      return 0;
    }

    triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    areActionsAffectedByEndEvents = [triggerBuilder areActionsAffectedByEndEvents];
  }

  else
  {

    areActionsAffectedByEndEvents = 0;
  }

  return areActionsAffectedByEndEvents;
}

- (BOOL)_isInEditMode
{
  currentFlow = [(HUTriggerSummaryItemManager *)self currentFlow];
  isSingleFlow = [currentFlow isSingleFlow];

  return isSingleFlow;
}

- (BOOL)_shouldShowTestItem
{
  currentFlow = [(HUTriggerSummaryItemManager *)self currentFlow];
  if ([currentFlow isStandalone])
  {
    v4 = 0;
  }

  else
  {
    triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    triggerActionSets = [triggerBuilder triggerActionSets];
    allActionBuilders = [triggerActionSets allActionBuilders];
    v4 = [allActionBuilders count] != 0;
  }

  return v4;
}

- (BOOL)_shouldShowDeleteItem
{
  currentFlow = [(HUTriggerSummaryItemManager *)self currentFlow];
  if ([currentFlow isStandalone])
  {
    hf_currentUserIsAdministrator = 0;
  }

  else
  {
    currentFlow2 = [(HUTriggerSummaryItemManager *)self currentFlow];
    if ([currentFlow2 flowState] == 3)
    {
      triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
      context = [triggerBuilder context];
      if ([context showTriggerDeleteButton])
      {
        home = [(HFItemManager *)self home];
        hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];
      }

      else
      {
        hf_currentUserIsAdministrator = 0;
      }
    }

    else
    {
      hf_currentUserIsAdministrator = 0;
    }
  }

  return hf_currentUserIsAdministrator;
}

- (BOOL)_showActionSetsInstructionItem
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  context = [triggerBuilder context];
  if ([context showActionSetsInstructions])
  {
    currentFlow = [(HUTriggerSummaryItemManager *)self currentFlow];
    v6 = [currentFlow isStandalone] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_unsupportedTriggers
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  context = [triggerBuilder context];
  unsupportedTriggers = [context unsupportedTriggers];

  return unsupportedTriggers;
}

- (id)_triggerTestActionsInstructionDescription
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  context = [triggerBuilder context];
  testActionsInstructionDescription = [context testActionsInstructionDescription];

  return testActionsInstructionDescription;
}

- (id)_triggerServiceActionsInstructionDescription
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  context = [triggerBuilder context];
  serviceActionsInstructionDescription = [context serviceActionsInstructionDescription];

  return serviceActionsInstructionDescription;
}

- (id)_triggerDeleteInstructionItemString
{
  triggerBuilder = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  context = [triggerBuilder context];
  deleteInstructionDescription = [context deleteInstructionDescription];

  return deleteInstructionDescription;
}

@end