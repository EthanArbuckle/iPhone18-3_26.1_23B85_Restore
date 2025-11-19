@interface HUEventTypePickerItemManager
- (BOOL)_hasMinimumRequiredTriggerableServices:(unint64_t)a3;
- (BOOL)_hasMinimumRequiredTriggeringServices:(int64_t)a3;
- (HUEventTypePickerItemManager)initWithTriggerBuilder:(id)a3 delegate:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_createCharacteristicItemForSource:(unint64_t)a3;
- (id)_createLocationItemForType:(unint64_t)a3;
- (id)_createTimeItem;
@end

@implementation HUEventTypePickerItemManager

- (HUEventTypePickerItemManager)initWithTriggerBuilder:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUEventTypePickerItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_triggerBuilder, a3);
  }

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"HUEventTypePickerSectionIdentifierInstructions"];
  v7 = [(HUEventTypePickerItemManager *)self instructionsItem];
  v22[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v6 setItems:v8];

  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEventTypePickerSectionIdentifierTriggerTypes"];
  v10 = [(HUEventTypePickerItemManager *)self leavingLocationEventItem];
  v21[0] = v10;
  v11 = [(HUEventTypePickerItemManager *)self arrivingAtLocationEventItem];
  v21[1] = v11;
  v12 = [(HUEventTypePickerItemManager *)self timerEventItem];
  v21[2] = v12;
  v13 = [(HUEventTypePickerItemManager *)self characteristicEventItem];
  v21[3] = v13;
  v14 = [(HUEventTypePickerItemManager *)self alarmEventItem];
  v21[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
  [v9 setItems:v15];

  v16 = MEMORY[0x277D14778];
  v20[0] = v6;
  v20[1] = v9;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [v16 filterSections:v17 toDisplayedItems:v5];

  return v18;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v26[6] = *MEMORY[0x277D85DE8];
  v4 = [HUInstructionsItem alloc];
  v5 = _HULocalizedStringWithDefaultValue(@"HUEventTypePickerInstructionsDescription", @"HUEventTypePickerInstructionsDescription", 1);
  v6 = [(HUInstructionsItem *)v4 initWithStyle:0 title:0 description:v5];
  [(HUEventTypePickerItemManager *)self setInstructionsItem:v6];

  v7 = [(HUEventTypePickerItemManager *)self _createLocationItemForType:1];
  [(HUEventTypePickerItemManager *)self setLeavingLocationEventItem:v7];

  v8 = [(HUEventTypePickerItemManager *)self _createLocationItemForType:0];
  [(HUEventTypePickerItemManager *)self setArrivingAtLocationEventItem:v8];

  v9 = [(HUEventTypePickerItemManager *)self _createTimeItem];
  [(HUEventTypePickerItemManager *)self setTimerEventItem:v9];

  v10 = [(HUEventTypePickerItemManager *)self _createCharacteristicItemForSource:1];
  [(HUEventTypePickerItemManager *)self setCharacteristicEventItem:v10];

  v11 = [(HUEventTypePickerItemManager *)self _createCharacteristicItemForSource:0];
  [(HUEventTypePickerItemManager *)self setAlarmEventItem:v11];

  v12 = objc_alloc(MEMORY[0x277D14B40]);
  v13 = MEMORY[0x277CBEB98];
  v14 = [(HUEventTypePickerItemManager *)self instructionsItem];
  v26[0] = v14;
  v15 = [(HUEventTypePickerItemManager *)self leavingLocationEventItem];
  v26[1] = v15;
  v16 = [(HUEventTypePickerItemManager *)self arrivingAtLocationEventItem];
  v26[2] = v16;
  v17 = [(HUEventTypePickerItemManager *)self timerEventItem];
  v26[3] = v17;
  v18 = [(HUEventTypePickerItemManager *)self characteristicEventItem];
  v26[4] = v18;
  v19 = [(HUEventTypePickerItemManager *)self alarmEventItem];
  v26[5] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];
  v21 = [v13 setWithArray:v20];
  v22 = [v12 initWithItems:v21];

  v25 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

  return v23;
}

- (id)_createTimeItem
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D14B38]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HUEventTypePickerItemManager__createTimeItem__block_invoke;
  v5[3] = &unk_277DB7448;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithResultsBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __47__HUEventTypePickerItemManager__createTimeItem__block_invoke(uint64_t a1)
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
  v7[2] = __59__HUEventTypePickerItemManager__createLocationItemForType___block_invoke;
  v7[3] = &unk_277DB8F60;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 initWithResultsBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

id __59__HUEventTypePickerItemManager__createLocationItemForType___block_invoke(uint64_t a1)
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
  v18[2] = __59__HUEventTypePickerItemManager__createLocationItemForType___block_invoke_2;
  v18[3] = &unk_277DBF828;
  v18[4] = WeakRetained;
  v13 = __59__HUEventTypePickerItemManager__createLocationItemForType___block_invoke_2(v18);
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

uint64_t __59__HUEventTypePickerItemManager__createLocationItemForType___block_invoke_2(uint64_t a1)
{
  if (![MEMORY[0x277D14CE8] supportsBeingCurrentLocationDevice])
  {
    return 1;
  }

  v2 = [MEMORY[0x277D147A8] sharedDispatcher];
  [v2 authorizationStatus];

  v3 = HFLocationServicesAvailableForAuthorizationStatus();
  v4 = MEMORY[0x277CD1D20];
  v5 = [*(a1 + 32) home];
  LOBYTE(v4) = [v4 hf_presenceDisableReasonsForHome:v5];

  if ((v4 & 2) != 0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (id)_createCharacteristicItemForSource:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HUEventTypePickerItemManager__createCharacteristicItemForSource___block_invoke;
  v7[3] = &unk_277DB8F60;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 initWithResultsBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

id __67__HUEventTypePickerItemManager__createCharacteristicItemForSource___block_invoke(uint64_t a1)
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