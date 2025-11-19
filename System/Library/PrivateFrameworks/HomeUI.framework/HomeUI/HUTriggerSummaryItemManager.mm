@interface HUTriggerSummaryItemManager
- (BOOL)_isInEditMode;
- (BOOL)_shouldShowDeleteItem;
- (BOOL)_shouldShowDurationItems;
- (BOOL)_shouldShowTestItem;
- (BOOL)_showActionSetsInstructionItem;
- (BOOL)_showEnableSwitch;
- (BOOL)_showTriggerSummary;
- (HUTriggerSummaryItemManager)initWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5;
- (NSArray)overviewItemModules;
- (NSSet)prioritizedAccessories;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)a3;
- (id)_staticItemsForHome:(id)a3;
- (id)_triggerDeleteInstructionItemString;
- (id)_triggerServiceActionsInstructionDescription;
- (id)_triggerTestActionsInstructionDescription;
- (id)_unsupportedTriggers;
- (id)triggerCurrentDisplayedName;
- (void)setPrioritizedAccessories:(id)a3;
- (void)triggerBuilderDidChange;
@end

@implementation HUTriggerSummaryItemManager

- (HUTriggerSummaryItemManager)initWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[HUTriggerBuilderItem alloc] initWithTriggerBuilder:v9 nameType:4];
  v15.receiver = self;
  v15.super_class = HUTriggerSummaryItemManager;
  v13 = [(HFItemManager *)&v15 initWithDelegate:v11 sourceItem:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_triggerBuilder, a3);
    objc_storeStrong(&v13->_currentFlow, a4);
  }

  return v13;
}

- (void)triggerBuilderDidChange
{
  v4 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v5 = [v4 naturalLanguageNameOfType:2];
  v6 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  [v6 setDisplayName:v5];

  v7 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  LOBYTE(v5) = [v7 nameIsConfigured];

  if ((v5 & 1) == 0)
  {
    v8 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    v9 = [v8 naturalLanguageNameOfType:0];
    v10 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    [v10 setName:v9];
  }

  v11 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (id)triggerCurrentDisplayedName
{
  v3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v4 = [v3 nameIsConfigured];
  v5 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v6 = v5;
  if (v4)
  {
    [v5 name];
  }

  else
  {
    [v5 displayName];
  }
  v7 = ;

  return v7;
}

- (void)setPrioritizedAccessories:(id)a3
{
  v8 = a3;
  v4 = [(HUTriggerSummaryItemManager *)self actionsModule];

  if (v4)
  {
    v5 = [(HUTriggerSummaryItemManager *)self actionsModule];
    [v5 setPrioritizedAccessories:v8];

    prioritizedAccessories = self->_prioritizedAccessories;
    self->_prioritizedAccessories = 0;
  }

  else
  {
    v7 = v8;
    prioritizedAccessories = self->_prioritizedAccessories;
    self->_prioritizedAccessories = v7;
  }
}

- (NSSet)prioritizedAccessories
{
  v3 = [(HUTriggerSummaryItemManager *)self actionsModule];
  v4 = [v3 prioritizedAccessories];
  prioritizedAccessories = v4;
  if (!v4)
  {
    prioritizedAccessories = self->_prioritizedAccessories;
  }

  v6 = prioritizedAccessories;

  return prioritizedAccessories;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFItemManager *)self home];
  v6 = [v5 hf_supportsSharedEventAutomation];

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(HFItemManager *)self home];
    v10 = [v9 hf_prettyDescription];
    *buf = 138412290;
    v28 = v10;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_INFO, "Home %@ supports shared event automation", buf, 0xCu);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(HFItemManager *)self home];
    v10 = [v9 hf_prettyDescription];
    v11 = [(HFItemManager *)self home];
    v12 = [v11 residentDevices];
    v13 = [v12 hf_prettyDescription];
    *buf = 138412546;
    v28 = v10;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_INFO, "No resident on home %@ supports shared event automation; residents: %@", buf, 0x16u);
  }

LABEL_7:
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [(HUTriggerSummaryItemManager *)self _staticItemsForHome:v4];
  if ([v15 count])
  {
    v16 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v15];
    [v14 na_safeAddObject:v16];
  }

  v17 = [(HUTriggerSummaryItemManager *)self _unsupportedTriggers];
  if ([v17 count])
  {
    v18 = [(HUTriggerSummaryItemManager *)self _isInEditMode];

    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = objc_alloc(MEMORY[0x277D14B40]);
    v20 = [(HUTriggerSummaryItemManager *)self _unsupportedTriggers];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__HUTriggerSummaryItemManager__buildItemProvidersForHome___block_invoke;
    v25[3] = &unk_277DC3BE0;
    v26 = v4;
    v21 = [v20 na_map:v25];
    v22 = [v19 initWithItems:v21];
    [(HUTriggerSummaryItemManager *)self setUnsupportedItemProvider:v22];

    v23 = [(HUTriggerSummaryItemManager *)self unsupportedItemProvider];
    [v14 na_safeAddObject:v23];

    v17 = v26;
  }

LABEL_13:

  return v14;
}

id __58__HUTriggerSummaryItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14C60];
  v4 = a2;
  v5 = [[v3 alloc] initWithHome:*(a1 + 32) trigger:v4];

  return v5;
}

- (id)_staticItemsForHome:(id)a3
{
  v37[2] = *MEMORY[0x277D85DE8];
  v26 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D14C30]);
  v6 = [(HFItemManager *)self sourceItem];
  v7 = [v6 copy];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke;
  v33[3] = &unk_277DC37E0;
  objc_copyWeak(&v34, &location);
  v8 = [v5 initWithSourceItem:v7 transformationBlock:v33];
  [(HUTriggerSummaryItemManager *)self setEnableItem:v8];

  v9 = [(HUTriggerSummaryItemManager *)self enableItem];
  [v4 addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_2;
  v31[3] = &unk_277DB7448;
  objc_copyWeak(&v32, &location);
  v11 = [v10 initWithResultsBlock:v31];
  [(HUTriggerSummaryItemManager *)self setNamingRowItem:v11];

  v12 = [(HUTriggerSummaryItemManager *)self namingRowItem];
  [v4 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_3;
  v29[3] = &unk_277DB7448;
  objc_copyWeak(&v30, &location);
  v14 = [v13 initWithResultsBlock:v29];
  [(HUTriggerSummaryItemManager *)self setCreateActionButtonItem:v14];

  v15 = [(HUTriggerSummaryItemManager *)self createActionButtonItem];
  [v4 addObject:v15];

  v16 = objc_alloc(MEMORY[0x277D14B38]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __51__HUTriggerSummaryItemManager__staticItemsForHome___block_invoke_4;
  v27[3] = &unk_277DB7448;
  objc_copyWeak(&v28, &location);
  v17 = [v16 initWithResultsBlock:v27];
  [(HUTriggerSummaryItemManager *)self setTestTriggerItem:v17];

  v18 = [(HUTriggerSummaryItemManager *)self testTriggerItem];
  [v4 addObject:v18];

  v19 = objc_alloc(MEMORY[0x277D14B38]);
  v36[0] = *MEMORY[0x277D13F60];
  v20 = [(HUTriggerSummaryItemManager *)self _triggerDeleteInstructionItemString];
  v37[0] = v20;
  v36[1] = *MEMORY[0x277D13FB8];
  v21 = [MEMORY[0x277CCABB0] numberWithInt:{-[HUTriggerSummaryItemManager _shouldShowDeleteItem](self, "_shouldShowDeleteItem") ^ 1}];
  v37[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v23 = [v19 initWithResults:v22];
  [(HUTriggerSummaryItemManager *)self setDeleteTriggerItem:v23];

  v24 = [(HUTriggerSummaryItemManager *)self deleteTriggerItem];
  [v4 addObject:v24];

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

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [HUTriggerEventsItemModule alloc];
  v6 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v7 = [(HUTriggerEventsItemModule *)v5 initWithTriggerBuilder:v6 itemUpdater:self];
  [(HUTriggerSummaryItemManager *)self setEventsModule:v7];

  v8 = [(HUTriggerSummaryItemManager *)self _isInEditMode];
  if (v8)
  {
    v6 = [(HFItemManager *)self home];
    v9 = [v6 hf_currentUserIsAdministrator] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(HUTriggerSummaryItemManager *)self eventsModule];
  [v10 setHideAddEventButton:v9];

  if (v8)
  {
  }

  v11 = [(HUTriggerSummaryItemManager *)self eventsModule];
  [v4 na_safeAddObject:v11];

  v12 = [HUTriggerDurationItemModule alloc];
  v13 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v14 = [(HUTriggerDurationItemModule *)v12 initWithTriggerBuilder:v13 itemUpdater:self];
  [(HUTriggerSummaryItemManager *)self setDurationModule:v14];

  v15 = [(HUTriggerSummaryItemManager *)self durationModule];
  [v15 setItemManager:self];

  v16 = [(HUTriggerSummaryItemManager *)self durationModule];
  [v4 na_safeAddObject:v16];

  v17 = [HUTriggerActionSetsItemModule alloc];
  v18 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v19 = [(HUTriggerSummaryItemManager *)self currentFlow];
  v20 = [(HUTriggerActionSetsItemModule *)v17 initWithTriggerBuilder:v18 flow:v19 itemUpdater:self];
  [(HUTriggerSummaryItemManager *)self setActionsModule:v20];

  prioritizedAccessories = self->_prioritizedAccessories;
  v22 = [(HUTriggerSummaryItemManager *)self actionsModule];
  [v22 setPrioritizedAccessories:prioritizedAccessories];

  v23 = self->_prioritizedAccessories;
  self->_prioritizedAccessories = 0;

  v24 = [(HUTriggerSummaryItemManager *)self actionsModule];
  [v4 na_safeAddObject:v24];

  v25 = [HUTriggerMediaItemModule alloc];
  v26 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v27 = [(HUTriggerMediaItemModule *)v25 initWithTriggerBuilder:v26 itemUpdater:self];
  [(HUTriggerSummaryItemManager *)self setMediaModule:v27];

  v28 = [(HUTriggerSummaryItemManager *)self mediaModule];
  [v4 na_safeAddObject:v28];

  objc_opt_class();
  v29 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  if (_os_feature_enabled_impl() && v31)
  {
    v32 = [MEMORY[0x277CBEB58] set];
    v33 = [v31 eventTypes];
    v34 = [v33 count];

    if (v34 == 1)
    {
      v35 = [v31 eventTypes];
      v36 = [v35 containsObject:*MEMORY[0x277D13898]];

      if (v36)
      {
        v37 = &unk_2824924E0;
LABEL_16:
        [v32 addObject:v37];
        goto LABEL_17;
      }

      v38 = [v31 eventTypes];
      v39 = [v38 containsObject:*MEMORY[0x277D13890]];

      if (v39)
      {
        v37 = &unk_2824924F8;
        goto LABEL_16;
      }
    }

LABEL_17:
    v40 = [HUTriggerConditionEditorItemModule alloc];
    v41 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    v42 = [v41 home];
    v43 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    v44 = [v43 conditionCollection];
    v45 = [(HUTriggerConditionEditorItemModule *)v40 initWithItemUpdater:self home:v42 conditionCollection:v44 disallowedConditionTypes:v32];
    [(HUTriggerSummaryItemManager *)self setConditionModule:v45];

    v46 = [(HUTriggerSummaryItemManager *)self conditionModule];
    [v4 na_safeAddObject:v46];
  }

  return v4;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v49[11] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v48 = [v4 array];
  v6 = [(HUTriggerSummaryItemManager *)self eventsModule];
  v45 = [v6 buildSectionsWithDisplayedItems:v5];

  v7 = [(HUTriggerSummaryItemManager *)self actionsModule];
  v42 = [v7 buildSectionsWithDisplayedItems:v5];

  v8 = [(HUTriggerSummaryItemManager *)self mediaModule];
  v46 = [v8 buildSectionsWithDisplayedItems:v5];

  v9 = [(HUTriggerSummaryItemManager *)self durationModule];
  v47 = v5;
  v44 = [v9 buildSectionsWithDisplayedItems:v5];

  v10 = [(HUTriggerSummaryItemManager *)self conditionModule];
  v11 = [v10 buildSectionsWithDisplayedItems:v5];
  v12 = v11;
  v13 = MEMORY[0x277CBEBF8];
  if (v11)
  {
    v13 = v11;
  }

  v43 = v13;

  v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierEnable"];
  v15 = MEMORY[0x277CBEA60];
  v16 = [(HUTriggerSummaryItemManager *)self enableItem];
  v17 = [v15 na_arrayWithSafeObject:v16];
  [v14 setItems:v17];

  v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierNamingSection"];
  v19 = MEMORY[0x277CBEA60];
  v20 = [(HUTriggerSummaryItemManager *)self namingRowItem];
  v21 = [v19 na_arrayWithSafeObject:v20];
  [v18 setItems:v21];

  v22 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierAdd"];
  v23 = MEMORY[0x277CBEA60];
  v24 = [(HUTriggerSummaryItemManager *)self createActionButtonItem];
  v25 = [v23 na_arrayWithSafeObject:v24];
  [v22 setItems:v25];

  v26 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierTest"];
  v27 = MEMORY[0x277CBEA60];
  v28 = [(HUTriggerSummaryItemManager *)self testTriggerItem];
  v29 = [v27 na_arrayWithSafeObject:v28];
  [v26 setItems:v29];

  v30 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierUnsupportedItems"];
  v31 = [(HUTriggerSummaryItemManager *)self unsupportedItemProvider];
  v32 = [v31 items];
  v33 = [v32 allObjects];
  [v30 setItems:v33];

  v34 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerSummarySectionIdentifierDelete"];
  v35 = MEMORY[0x277CBEA60];
  v36 = [(HUTriggerSummaryItemManager *)self deleteTriggerItem];
  v37 = [v35 na_arrayWithSafeObject:v36];
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
  v39 = [v38 na_arrayByFlattening];
  [v48 addObjectsFromArray:v39];

  v40 = [MEMORY[0x277D14778] filterSections:v48 toDisplayedItems:v47];

  return v40;
}

- (id)_itemsToHideInSet:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUTriggerSummaryItemManager;
  v3 = [(HFItemManager *)&v6 _itemsToHideInSet:a3];
  v4 = [v3 mutableCopy];

  return v4;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v4 = [v3 home];
  v5 = [v2 futureWithResult:v4];

  return v5;
}

- (NSArray)overviewItemModules
{
  v2 = [(HFItemManager *)self itemModules];
  v3 = [v2 na_map:&__block_literal_global_264];

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
  v3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v4 = [v3 context];
  if ([v4 showTriggerSummary])
  {
    v5 = [(HUTriggerSummaryItemManager *)self currentFlow];
    v6 = [v5 isStandalone] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_showEnableSwitch
{
  v3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v4 = [v3 context];
  if ([v4 showTriggerEnableSwitch])
  {
    v5 = [(HUTriggerSummaryItemManager *)self currentFlow];
    v6 = [v5 isStandalone] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_shouldShowDurationItems
{
  v3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v4 = [v3 context];
  if ([v4 allowDurationEditing])
  {
    v5 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    v6 = [v5 supportsEndEvents];

    if (!v6)
    {
      return 0;
    }

    v3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    v7 = [v3 areActionsAffectedByEndEvents];
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)_isInEditMode
{
  v2 = [(HUTriggerSummaryItemManager *)self currentFlow];
  v3 = [v2 isSingleFlow];

  return v3;
}

- (BOOL)_shouldShowTestItem
{
  v3 = [(HUTriggerSummaryItemManager *)self currentFlow];
  if ([v3 isStandalone])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
    v6 = [v5 triggerActionSets];
    v7 = [v6 allActionBuilders];
    v4 = [v7 count] != 0;
  }

  return v4;
}

- (BOOL)_shouldShowDeleteItem
{
  v3 = [(HUTriggerSummaryItemManager *)self currentFlow];
  if ([v3 isStandalone])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HUTriggerSummaryItemManager *)self currentFlow];
    if ([v5 flowState] == 3)
    {
      v6 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
      v7 = [v6 context];
      if ([v7 showTriggerDeleteButton])
      {
        v8 = [(HFItemManager *)self home];
        v4 = [v8 hf_currentUserIsAdministrator];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_showActionSetsInstructionItem
{
  v3 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v4 = [v3 context];
  if ([v4 showActionSetsInstructions])
  {
    v5 = [(HUTriggerSummaryItemManager *)self currentFlow];
    v6 = [v5 isStandalone] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_unsupportedTriggers
{
  v2 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v3 = [v2 context];
  v4 = [v3 unsupportedTriggers];

  return v4;
}

- (id)_triggerTestActionsInstructionDescription
{
  v2 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v3 = [v2 context];
  v4 = [v3 testActionsInstructionDescription];

  return v4;
}

- (id)_triggerServiceActionsInstructionDescription
{
  v2 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v3 = [v2 context];
  v4 = [v3 serviceActionsInstructionDescription];

  return v4;
}

- (id)_triggerDeleteInstructionItemString
{
  v2 = [(HUTriggerSummaryItemManager *)self triggerBuilder];
  v3 = [v2 context];
  v4 = [v3 deleteInstructionDescription];

  return v4;
}

@end