@interface HUTriggerTypePickerItemManager
- (BOOL)_hasMinimumRequiredTriggerableServices:(unint64_t)a3;
- (BOOL)_hasMinimumRequiredTriggeringServices:(int64_t)a3;
- (HUTriggerTypePickerItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_createCharacteristicItemForSource:(unint64_t)a3;
- (id)_createCustomItem;
- (id)_createLocationItemForType:(unint64_t)a3;
- (id)_createTimeItem;
- (id)_itemsToHideInSet:(id)a3;
@end

@implementation HUTriggerTypePickerItemManager

- (HUTriggerTypePickerItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUTriggerTypePickerItemManager;
  result = [(HFItemManager *)&v5 initWithDelegate:a3 sourceItem:a4];
  if (result)
  {
    result->_showSuggestedAutomations = 0;
  }

  return result;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HURecommendedTriggerItemModule alloc] initWithItemUpdater:self home:v4];

  [(HURecommendedTriggerItemModule *)v5 setHideSectionHeaderTitle:1];
  [(HURecommendedTriggerItemModule *)v5 setMaximumNumberOfShownRecommendations:0x7FFFFFFFFFFFFFFFLL];
  [(HURecommendedTriggerItemModule *)v5 setFilter:&__block_literal_global_298];
  [(HURecommendedTriggerItemModule *)v5 setConfigureBlock:&__block_literal_global_13_5];
  [(HURecommendedTriggerItemModule *)v5 setEngineOptions:[(HURecommendedTriggerItemModule *)v5 engineOptions]| 0x10];
  suggestedAutomationsModule = self->_suggestedAutomationsModule;
  self->_suggestedAutomationsModule = &v5->super;
  v7 = v5;

  v8 = [(HUTriggerTypePickerItemManager *)self suggestedAutomationsModule];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

uint64_t __59__HUTriggerTypePickerItemManager__buildItemModulesForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hu_asTriggerRecommendation];
  v3 = [v2 triggerBuilders];
  v4 = [v3 na_all:&__block_literal_global_10_2];

  return v4;
}

BOOL __59__HUTriggerTypePickerItemManager__buildItemModulesForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 trigger];
  v3 = v2 == 0;

  return v3;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v34[8] = *MEMORY[0x277D85DE8];
  v4 = [HUInstructionsItem alloc];
  v5 = _HULocalizedStringWithDefaultValue(@"HUTriggerTypePickerEventsSectionTitle", @"HUTriggerTypePickerEventsSectionTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUTriggerTypePickerEventsSectionDescription", @"HUTriggerTypePickerEventsSectionDescription", 1);
  v7 = [(HUInstructionsItem *)v4 initWithStyle:0 title:v5 description:v6];
  [(HUTriggerTypePickerItemManager *)self setEventsInstructionsItem:v7];

  v8 = [HUInstructionsItem alloc];
  v9 = _HULocalizedStringWithDefaultValue(@"HUTriggerTypePickerSuggestionsSectionTitle", @"HUTriggerTypePickerSuggestionsSectionTitle", 1);
  v10 = _HULocalizedStringWithDefaultValue(@"HUTriggerTypePickerSuggestionsSectionDescription", @"HUTriggerTypePickerSuggestionsSectionDescription", 1);
  v11 = [(HUInstructionsItem *)v8 initWithStyle:0 title:v9 description:v10];
  [(HUTriggerTypePickerItemManager *)self setSuggestionsInstructionsItem:v11];

  v12 = [(HUTriggerTypePickerItemManager *)self _createLocationItemForType:1];
  [(HUTriggerTypePickerItemManager *)self setLeavingLocationTriggerItem:v12];

  v13 = [(HUTriggerTypePickerItemManager *)self _createLocationItemForType:0];
  [(HUTriggerTypePickerItemManager *)self setArrivingAtLocationTriggerItem:v13];

  v14 = [(HUTriggerTypePickerItemManager *)self _createTimeItem];
  [(HUTriggerTypePickerItemManager *)self setTimerTriggerItem:v14];

  v15 = [(HUTriggerTypePickerItemManager *)self _createCharacteristicItemForSource:1];
  [(HUTriggerTypePickerItemManager *)self setCharacteristicTriggerItem:v15];

  v16 = [(HUTriggerTypePickerItemManager *)self _createCharacteristicItemForSource:0];
  [(HUTriggerTypePickerItemManager *)self setAlarmTriggerItem:v16];

  v17 = [(HUTriggerTypePickerItemManager *)self _createCustomItem];
  [(HUTriggerTypePickerItemManager *)self setCustomAutomationItem:v17];

  v31 = objc_alloc(MEMORY[0x277D14B40]);
  v18 = MEMORY[0x277CBEB98];
  v32 = [(HUTriggerTypePickerItemManager *)self eventsInstructionsItem];
  v34[0] = v32;
  v19 = [(HUTriggerTypePickerItemManager *)self leavingLocationTriggerItem];
  v34[1] = v19;
  v20 = [(HUTriggerTypePickerItemManager *)self arrivingAtLocationTriggerItem];
  v34[2] = v20;
  v21 = [(HUTriggerTypePickerItemManager *)self timerTriggerItem];
  v34[3] = v21;
  v22 = [(HUTriggerTypePickerItemManager *)self characteristicTriggerItem];
  v34[4] = v22;
  v23 = [(HUTriggerTypePickerItemManager *)self alarmTriggerItem];
  v34[5] = v23;
  v24 = [(HUTriggerTypePickerItemManager *)self customAutomationItem];
  v34[6] = v24;
  v25 = [(HUTriggerTypePickerItemManager *)self suggestionsInstructionsItem];
  v34[7] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];
  v27 = [v18 setWithArray:v26];
  v28 = [v31 initWithItems:v27];

  v33 = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];

  return v29;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerTypePickerSectionIdentifierEventsInstructions"];
  v26 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerTypePickerSectionIdentifierTriggerTypes"];
  v25 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerTypePickerSectionIdentifierSuggestionsInstructions"];
  v6 = [(HUTriggerTypePickerItemManager *)self suggestedAutomationsModule];

  v24 = v4;
  if (v6)
  {
    v7 = [(HUTriggerTypePickerItemManager *)self suggestedAutomationsModule];
    v23 = [v7 buildSectionsWithDisplayedItems:v4];
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v8 = [(HUTriggerTypePickerItemManager *)self eventsInstructionsItem];
  v30[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v5 setItems:v9];

  v10 = [(HUTriggerTypePickerItemManager *)self arrivingAtLocationTriggerItem];
  v29[0] = v10;
  v11 = [(HUTriggerTypePickerItemManager *)self leavingLocationTriggerItem];
  v29[1] = v11;
  v12 = [(HUTriggerTypePickerItemManager *)self timerTriggerItem];
  v29[2] = v12;
  v13 = [(HUTriggerTypePickerItemManager *)self characteristicTriggerItem];
  v29[3] = v13;
  v14 = [(HUTriggerTypePickerItemManager *)self alarmTriggerItem];
  v29[4] = v14;
  v15 = [(HUTriggerTypePickerItemManager *)self customAutomationItem];
  v29[5] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:6];
  [v26 setItems:v16];

  v17 = [(HUTriggerTypePickerItemManager *)self suggestionsInstructionsItem];
  v28 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  [v25 setItems:v18];

  v27[0] = v5;
  v27[1] = v26;
  v27[2] = v25;
  v27[3] = v23;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  v20 = [v19 na_arrayByFlattening];

  v21 = [MEMORY[0x277D14778] filterSections:v20 toDisplayedItems:v24];

  return v21;
}

- (id)_itemsToHideInSet:(id)a3
{
  v13.receiver = self;
  v13.super_class = HUTriggerTypePickerItemManager;
  v4 = [(HFItemManager *)&v13 _itemsToHideInSet:a3];
  v5 = [v4 mutableCopy];

  if (![(HUTriggerTypePickerItemManager *)self showSuggestedAutomations])
  {
    v6 = [(HUTriggerTypePickerItemManager *)self suggestedAutomationsModule];
    v7 = [v6 allItems];
    [v5 unionSet:v7];
  }

  v8 = [(HUTriggerTypePickerItemManager *)self suggestedAutomationsModule];
  v9 = [v8 allItems];
  v10 = [v9 na_setByRemovingObjectsFromSet:v5];

  if (![v10 count])
  {
    v11 = [(HUTriggerTypePickerItemManager *)self suggestionsInstructionsItem];
    [v5 addObject:v11];
  }

  return v5;
}

- (id)_createCustomItem
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D14B38]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HUTriggerTypePickerItemManager__createCustomItem__block_invoke;
  v5[3] = &unk_277DB7448;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithResultsBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __51__HUTriggerTypePickerItemManager__createCustomItem__block_invoke(uint64_t a1)
{
  v13[6] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12[0] = *MEMORY[0x277D13F60];
  v2 = _HULocalizedStringWithDefaultValue(@"HUEventTypePickerCustomButtonTitle", @"HUEventTypePickerCustomButtonTitle", 1);
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D13E20];
  v3 = _HULocalizedStringWithDefaultValue(@"HUEventTypePickerCustomButtonDescription", @"HUEventTypePickerCustomButtonDescription", 1);
  v13[1] = v3;
  v12[2] = *MEMORY[0x277D13E88];
  v4 = objc_alloc(MEMORY[0x277D14728]);
  v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13A30]];
  v13[2] = v5;
  v12[3] = *MEMORY[0x277D13EA8];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "_hasMinimumRequiredTriggerableServices:", 1) ^ 1}];
  v13[3] = v6;
  v12[4] = *MEMORY[0x277D13DA0];
  v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v13[4] = v7;
  v12[5] = *MEMORY[0x277D13FB8];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:_os_feature_enabled_impl() ^ 1];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

- (id)_createTimeItem
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D14B38]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HUTriggerTypePickerItemManager__createTimeItem__block_invoke;
  v5[3] = &unk_277DB7448;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithResultsBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __49__HUTriggerTypePickerItemManager__createTimeItem__block_invoke(uint64_t a1)
{
  v12[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11[0] = *MEMORY[0x277D13F60];
  v2 = _HULocalizedStringWithDefaultValue(@"HUEventTypePickerTimerButtonTitle", @"HUEventTypePickerTimerButtonTitle", 1);
  v12[0] = v2;
  v11[1] = *MEMORY[0x277D13E20];
  v3 = _HULocalizedStringWithDefaultValue(@"HUEventTypePickerTimerButtonDescription", @"HUEventTypePickerTimerButtonDescription", 1);
  v12[1] = v3;
  v11[2] = *MEMORY[0x277D13E88];
  v4 = objc_alloc(MEMORY[0x277D14728]);
  v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13B08]];
  v12[2] = v5;
  v11[3] = *MEMORY[0x277D13EA8];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "_hasMinimumRequiredTriggerableServices:", 1) ^ 1}];
  v12[3] = v6;
  v11[4] = *MEMORY[0x277D13DA0];
  v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v8];

  return v9;
}

- (id)_createLocationItemForType:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HUTriggerTypePickerItemManager__createLocationItemForType___block_invoke;
  v7[3] = &unk_277DB8F60;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 initWithResultsBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

id __61__HUTriggerTypePickerItemManager__createLocationItemForType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_opt_new();
  if (*(a1 + 40) == 1)
  {
    v4 = @"HUEventTypePickerLeavingLocationButtonTitle";
  }

  else
  {
    v4 = @"HUEventTypePickerArrivingAtLocationButtonTitle";
  }

  v5 = 1;
  v6 = _HULocalizedStringWithDefaultValue(v4, v4, 1);
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

  if (*(a1 + 40) == 1)
  {
    v7 = @"HUEventTypePickerLeavingLocationButtonDescription";
  }

  else
  {
    v7 = @"HUEventTypePickerArrivingAtLocationButtonDescription";
  }

  v8 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v9 = MEMORY[0x277D13A98];
  if (*(a1 + 40) != 1)
  {
    v9 = MEMORY[0x277D13A70];
  }

  v10 = *v9;
  v11 = [objc_alloc(MEMORY[0x277D14728]) initWithImageIdentifier:v10];
  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13E88]];

  v12 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__HUTriggerTypePickerItemManager__createLocationItemForType___block_invoke_2;
  v18[3] = &unk_277DBF828;
  v18[4] = WeakRetained;
  v13 = __61__HUTriggerTypePickerItemManager__createLocationItemForType___block_invoke_2(v18);
  v14 = MEMORY[0x277CCABB0];
  if (v13)
  {
    v5 = [WeakRetained _hasMinimumRequiredTriggerableServices:1] ^ 1;
  }

  v15 = [v14 numberWithInt:v5];
  [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v16 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v16;
}

uint64_t __61__HUTriggerTypePickerItemManager__createLocationItemForType___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D14CE8] supportsBeingCurrentLocationDevice])
  {
    v2 = [MEMORY[0x277D147A8] sharedDispatcher];
    v3 = [v2 authorizationStatus];

    v4 = HFLocationServicesAvailableForAuthorizationStatus();
    v5 = MEMORY[0x277CD1D20];
    v6 = [*(a1 + 32) home];
    LOBYTE(v5) = [v5 hf_presenceDisableReasonsForHome:v6];

    v7 = v5 & 2;
    if ((v5 & 2) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4;
    }

    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109888;
      v11[1] = v8;
      v12 = 1024;
      v13 = v3;
      v14 = 1024;
      v15 = v4;
      v16 = 1024;
      v17 = v7 >> 1;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Location automations allowed=%{BOOL}d, locationServicesAuthStatus=%d, locationServicesEnabled=%{BOOL}d, homeKitLocationServicesDisabled=%{BOOL}d", v11, 0x1Au);
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Location automations disabled because supportsBeingCurrentLocationDevice us false", v11, 2u);
    }

    v8 = 1;
  }

  return v8;
}

- (id)_createCharacteristicItemForSource:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HUTriggerTypePickerItemManager__createCharacteristicItemForSource___block_invoke;
  v7[3] = &unk_277DB8F60;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 initWithResultsBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

id __69__HUTriggerTypePickerItemManager__createCharacteristicItemForSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = @"HUEventTypePickerCharacteristicButtonTitle";
  }

  else
  {
    v5 = @"HUEventTypePickerAlarmButtonTitle";
  }

  if (v4)
  {
    v6 = @"HUEventTypePickerCharacteristicButtonDescription";
  }

  else
  {
    v6 = @"HUEventTypePickerAlarmButtonDescription";
  }

  if (v4)
  {
    v7 = MEMORY[0x277D13AF8];
  }

  else
  {
    v7 = MEMORY[0x277D13B00];
  }

  v8 = 1;
  v9 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v10 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v11 = MEMORY[0x277D14728];
  v12 = *v7;
  v13 = [[v11 alloc] initWithImageIdentifier:v12];

  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E88]];
  v14 = MEMORY[0x277CCABB0];
  v15 = *(a1 + 40);
  v16 = [WeakRetained home];
  if ([HUCharacteristicTriggerServicePickerViewController canPickServicesFromSource:v15 home:v16])
  {
    v8 = 1;
    if ([WeakRetained _hasMinimumRequiredTriggeringServices:1])
    {
      v8 = [WeakRetained _hasMinimumRequiredTriggerableServices:2] ^ 1;
    }
  }

  v17 = [v14 numberWithInt:v8];
  [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v3 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v21 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v21;
}

- (BOOL)_hasMinimumRequiredTriggeringServices:(int64_t)a3
{
  v4 = [(HFItemManager *)self home];
  v5 = [v4 hf_allVisibleServices];
  LOBYTE(a3) = [v5 count] >= a3;

  return a3;
}

- (BOOL)_hasMinimumRequiredTriggerableServices:(unint64_t)a3
{
  v5 = [(HFItemManager *)self home];
  if ([v5 hf_enabledResidentsSupportsMediaActions])
  {
    v6 = [(HFItemManager *)self home];
    v7 = [v6 hf_mediaAccessories];
    v8 = [v7 count];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 hf_allVisibleServices];
  v10 = [v9 count] + v8;

  return v10 >= a3;
}

@end