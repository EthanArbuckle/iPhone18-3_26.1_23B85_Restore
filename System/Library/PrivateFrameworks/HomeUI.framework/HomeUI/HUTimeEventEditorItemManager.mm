@interface HUTimeEventEditorItemManager
- (HUTimeEventEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUTimeEventEditorItemManager)initWithTimeEvent:(id)a3 triggerBuilder:(id)a4 delegate:(id)a5;
- (NSSet)dateOptionsItems;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
- (id)defaultOffsetForSignificantEvent:(id)a3;
- (void)setDatePickerShown:(BOOL)a3;
- (void)setDefaultOffset:(id)a3 forSignificantEvent:(id)a4;
- (void)updateForSignificantEventOffsetChange;
@end

@implementation HUTimeEventEditorItemManager

- (HUTimeEventEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTimeEvent_triggerBuilder_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUTimeEventEditorItemManager.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HUTimeEventEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUTimeEventEditorItemManager)initWithTimeEvent:(id)a3 triggerBuilder:(id)a4 delegate:(id)a5
{
  v55[1] = *MEMORY[0x277D85DE8];
  v45 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"HUTimeEventEditorItemManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"triggerBuilder != nil"}];
  }

  v53.receiver = self;
  v53.super_class = HUTimeEventEditorItemManager;
  v12 = [(HFItemManager *)&v53 initWithDelegate:v11 sourceItem:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_triggerBuilder, a4);
    objc_storeStrong(&v13->_timeEvent, a3);
    v14 = [MEMORY[0x277CBEB38] dictionary];
    significantEventToDefaultOffsetMap = v13->_significantEventToDefaultOffsetMap;
    v13->_significantEventToDefaultOffsetMap = v14;

    v16 = [HUInstructionsItem alloc];
    v17 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorInstructionsTitle", @"HUTimerTriggerEditorInstructionsTitle", 1);
    v18 = [(HUInstructionsItem *)v16 initWithStyle:3 title:v17 description:0];
    instructionsItem = v13->_instructionsItem;
    v13->_instructionsItem = v18;

    objc_initWeak(&location, v13);
    v20 = objc_alloc(MEMORY[0x277D14B38]);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __74__HUTimeEventEditorItemManager_initWithTimeEvent_triggerBuilder_delegate___block_invoke;
    v49[3] = &unk_277DC1DE0;
    v21 = v13;
    v50 = v21;
    objc_copyWeak(&v51, &location);
    v22 = [v20 initWithResultsBlock:v49];
    sunriseOptionItem = v21->_sunriseOptionItem;
    v21->_sunriseOptionItem = v22;

    v24 = objc_alloc(MEMORY[0x277D14B38]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __74__HUTimeEventEditorItemManager_initWithTimeEvent_triggerBuilder_delegate___block_invoke_2;
    v46[3] = &unk_277DC1DE0;
    v25 = v21;
    v47 = v25;
    objc_copyWeak(&v48, &location);
    v26 = [v24 initWithResultsBlock:v46];
    sunsetOptionItem = v25->_sunsetOptionItem;
    v25->_sunsetOptionItem = v26;

    v28 = objc_alloc(MEMORY[0x277D14B38]);
    v54 = *MEMORY[0x277D13F60];
    v29 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorTimeOption", @"HUTimerTriggerEditorTimeOption", 1);
    v55[0] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v31 = [v28 initWithResults:v30];
    timeOptionItem = v25->_timeOptionItem;
    v25->_timeOptionItem = v31;

    v33 = objc_alloc(MEMORY[0x277D14B38]);
    v34 = [v33 initWithResults:MEMORY[0x277CBEC10]];
    datePickerItem = v25->_datePickerItem;
    v25->_datePickerItem = v34;

    v36 = [HUInstructionsItem alloc];
    v37 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorRepeatSectionTitle", @"HUTimerTriggerEditorRepeatSectionTitle", 1);
    v38 = [(HUInstructionsItem *)v36 initWithStyle:2 title:v37 description:0];
    recurrencesInstructionsItem = v25->_recurrencesInstructionsItem;
    v25->_recurrencesInstructionsItem = v38;

    v40 = objc_alloc(MEMORY[0x277D14B38]);
    v41 = [v40 initWithResults:MEMORY[0x277CBEC10]];
    recurrencesItem = v25->_recurrencesItem;
    v25->_recurrencesItem = v41;

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v51);

    objc_destroyWeak(&location);
  }

  return v13;
}

id __74__HUTimeEventEditorItemManager_initWithTimeEvent_triggerBuilder_delegate___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = [*(a1 + 32) timeEvent];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *MEMORY[0x277CD0FA8];
  v7 = [WeakRetained defaultOffsetForSignificantEvent:*MEMORY[0x277CD0FA8]];

  v8 = [v4 significantEvent];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    v10 = [v4 significantEventOffset];

    v7 = v10;
  }

  v11 = [MEMORY[0x277CD1EC0] hf_localizedStringForSignficantEvent:v6 offset:v7];
  v12 = MEMORY[0x277D2C900];
  v16 = *MEMORY[0x277D13F60];
  v17[0] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [v12 futureWithResult:v13];

  return v14;
}

id __74__HUTimeEventEditorItemManager_initWithTimeEvent_triggerBuilder_delegate___block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = [*(a1 + 32) timeEvent];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *MEMORY[0x277CD0FB0];
  v7 = [WeakRetained defaultOffsetForSignificantEvent:*MEMORY[0x277CD0FB0]];

  v8 = [v4 significantEvent];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    v10 = [v4 significantEventOffset];

    v7 = v10;
  }

  v11 = [MEMORY[0x277CD1EC0] hf_localizedStringForSignficantEvent:v6 offset:v7];
  v12 = MEMORY[0x277D2C900];
  v16 = *MEMORY[0x277D13F60];
  v17[0] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [v12 futureWithResult:v13];

  return v14;
}

- (void)setDatePickerShown:(BOOL)a3
{
  if (self->_datePickerShown != a3)
  {
    self->_datePickerShown = a3;
    v5 = [(HFItemManager *)self allItems];
    v6 = [(HUTimeEventEditorItemManager *)self datePickerItem];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      v8 = MEMORY[0x277CBEB98];
      v11 = [(HUTimeEventEditorItemManager *)self datePickerItem];
      v9 = [v8 setWithObject:v11];
      v10 = [(HFItemManager *)self updateResultsForItems:v9 senderSelector:a2];
    }
  }
}

- (NSSet)dateOptionsItems
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HUTimeEventEditorItemManager *)self sunriseOptionItem];
  v5 = [(HUTimeEventEditorItemManager *)self sunsetOptionItem];
  v6 = [(HUTimeEventEditorItemManager *)self timeOptionItem];
  v7 = [v3 setWithObjects:{v4, v5, v6, 0}];

  return v7;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B40]);
  v5 = MEMORY[0x277CBEB98];
  v6 = [(HUTimeEventEditorItemManager *)self instructionsItem];
  v7 = [(HUTimeEventEditorItemManager *)self sunriseOptionItem];
  v8 = [(HUTimeEventEditorItemManager *)self sunsetOptionItem];
  v9 = [(HUTimeEventEditorItemManager *)self timeOptionItem];
  v10 = [(HUTimeEventEditorItemManager *)self datePickerItem];
  v11 = [(HUTimeEventEditorItemManager *)self recurrencesInstructionsItem];
  v12 = [(HUTimeEventEditorItemManager *)self recurrencesItem];
  v13 = [v5 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, 0}];
  v14 = [v4 initWithItems:v13];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  return v15;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUTimeEventEditorItemManager *)self instructionsItem];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimeEventEditorSectionIdentifierInstructions"];
    v9 = [(HUTimeEventEditorItemManager *)self instructionsItem];
    v39[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v8 setItems:v10];

    [v5 addObject:v8];
  }

  v11 = [(HUTimeEventEditorItemManager *)self sunriseOptionItem];
  v38[0] = v11;
  v12 = [(HUTimeEventEditorItemManager *)self sunsetOptionItem];
  v38[1] = v12;
  v13 = [(HUTimeEventEditorItemManager *)self timeOptionItem];
  v38[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

  if ([(HUTimeEventEditorItemManager *)self datePickerShown])
  {
    v15 = [(HUTimeEventEditorItemManager *)self datePickerItem];
    v16 = [v14 arrayByAddingObject:v15];

    v14 = v16;
  }

  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __65__HUTimeEventEditorItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v34 = &unk_277DB85D8;
  v17 = v4;
  v35 = v17;
  v18 = [v14 na_filter:&v31];

  if ([v18 count])
  {
    v19 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimeEventEditorSectionIdentifierDate"];
    [v19 setItems:v18];
    [v5 addObject:v19];
  }

  v20 = [(HUTimeEventEditorItemManager *)self recurrencesInstructionsItem];
  v21 = [v17 containsObject:v20];

  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimeEventEditorSectionIdentifierRepeatInstructions"];
    v23 = [(HUTimeEventEditorItemManager *)self recurrencesInstructionsItem];
    v37 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [v22 setItems:v24];

    [v5 addObject:v22];
  }

  v25 = [(HUTimeEventEditorItemManager *)self recurrencesItem];
  v26 = [v17 containsObject:v25];

  if (v26)
  {
    v27 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimeEventEditorSectionIdentifierRepeat"];
    v28 = [(HUTimeEventEditorItemManager *)self recurrencesItem];
    v36 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    [v27 setItems:v29];

    [v5 addObject:v27];
  }

  return v5;
}

- (id)_itemsToHideInSet:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HUTimeEventEditorItemManager;
  v4 = [(HFItemManager *)&v9 _itemsToHideInSet:a3];
  v5 = [v4 mutableCopy];

  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v6 = [(HUTimeEventEditorItemManager *)self datePickerItem];
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (void)updateForSignificantEventOffsetChange
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [(HUTimeEventEditorItemManager *)self sunriseOptionItem];
  v6 = [(HUTimeEventEditorItemManager *)self sunsetOptionItem];
  v7 = [v4 setWithObjects:{v5, v6, 0}];
  v8 = [(HFItemManager *)self allItems];
  v10 = [v7 na_setByIntersectingWithSet:v8];

  v9 = [(HFItemManager *)self updateResultsForItems:v10 senderSelector:a2];
}

- (id)defaultOffsetForSignificantEvent:(id)a3
{
  v4 = a3;
  v5 = [(HUTimeEventEditorItemManager *)self significantEventToDefaultOffsetMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  }

  return v6;
}

- (void)setDefaultOffset:(id)a3 forSignificantEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUTimeEventEditorItemManager *)self significantEventToDefaultOffsetMap];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

@end