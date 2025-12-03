@interface HUTimeEventEditorItemManager
- (HUTimeEventEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUTimeEventEditorItemManager)initWithTimeEvent:(id)event triggerBuilder:(id)builder delegate:(id)delegate;
- (NSSet)dateOptionsItems;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (id)defaultOffsetForSignificantEvent:(id)event;
- (void)setDatePickerShown:(BOOL)shown;
- (void)setDefaultOffset:(id)offset forSignificantEvent:(id)event;
- (void)updateForSignificantEventOffsetChange;
@end

@implementation HUTimeEventEditorItemManager

- (HUTimeEventEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTimeEvent_triggerBuilder_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimeEventEditorItemManager.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HUTimeEventEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUTimeEventEditorItemManager)initWithTimeEvent:(id)event triggerBuilder:(id)builder delegate:(id)delegate
{
  v55[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  builderCopy = builder;
  delegateCopy = delegate;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimeEventEditorItemManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"triggerBuilder != nil"}];
  }

  v53.receiver = self;
  v53.super_class = HUTimeEventEditorItemManager;
  v12 = [(HFItemManager *)&v53 initWithDelegate:delegateCopy sourceItem:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_triggerBuilder, builder);
    objc_storeStrong(&v13->_timeEvent, event);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    significantEventToDefaultOffsetMap = v13->_significantEventToDefaultOffsetMap;
    v13->_significantEventToDefaultOffsetMap = dictionary;

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

- (void)setDatePickerShown:(BOOL)shown
{
  if (self->_datePickerShown != shown)
  {
    self->_datePickerShown = shown;
    allItems = [(HFItemManager *)self allItems];
    datePickerItem = [(HUTimeEventEditorItemManager *)self datePickerItem];
    v7 = [allItems containsObject:datePickerItem];

    if (v7)
    {
      v8 = MEMORY[0x277CBEB98];
      datePickerItem2 = [(HUTimeEventEditorItemManager *)self datePickerItem];
      v9 = [v8 setWithObject:datePickerItem2];
      v10 = [(HFItemManager *)self updateResultsForItems:v9 senderSelector:a2];
    }
  }
}

- (NSSet)dateOptionsItems
{
  v3 = MEMORY[0x277CBEB98];
  sunriseOptionItem = [(HUTimeEventEditorItemManager *)self sunriseOptionItem];
  sunsetOptionItem = [(HUTimeEventEditorItemManager *)self sunsetOptionItem];
  timeOptionItem = [(HUTimeEventEditorItemManager *)self timeOptionItem];
  v7 = [v3 setWithObjects:{sunriseOptionItem, sunsetOptionItem, timeOptionItem, 0}];

  return v7;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B40]);
  v5 = MEMORY[0x277CBEB98];
  instructionsItem = [(HUTimeEventEditorItemManager *)self instructionsItem];
  sunriseOptionItem = [(HUTimeEventEditorItemManager *)self sunriseOptionItem];
  sunsetOptionItem = [(HUTimeEventEditorItemManager *)self sunsetOptionItem];
  timeOptionItem = [(HUTimeEventEditorItemManager *)self timeOptionItem];
  datePickerItem = [(HUTimeEventEditorItemManager *)self datePickerItem];
  recurrencesInstructionsItem = [(HUTimeEventEditorItemManager *)self recurrencesInstructionsItem];
  recurrencesItem = [(HUTimeEventEditorItemManager *)self recurrencesItem];
  v13 = [v5 setWithObjects:{instructionsItem, sunriseOptionItem, sunsetOptionItem, timeOptionItem, datePickerItem, recurrencesInstructionsItem, recurrencesItem, 0}];
  v14 = [v4 initWithItems:v13];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  return v15;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v39[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  instructionsItem = [(HUTimeEventEditorItemManager *)self instructionsItem];
  v7 = [itemsCopy containsObject:instructionsItem];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimeEventEditorSectionIdentifierInstructions"];
    instructionsItem2 = [(HUTimeEventEditorItemManager *)self instructionsItem];
    v39[0] = instructionsItem2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v8 setItems:v10];

    [v5 addObject:v8];
  }

  sunriseOptionItem = [(HUTimeEventEditorItemManager *)self sunriseOptionItem];
  v38[0] = sunriseOptionItem;
  sunsetOptionItem = [(HUTimeEventEditorItemManager *)self sunsetOptionItem];
  v38[1] = sunsetOptionItem;
  timeOptionItem = [(HUTimeEventEditorItemManager *)self timeOptionItem];
  v38[2] = timeOptionItem;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

  if ([(HUTimeEventEditorItemManager *)self datePickerShown])
  {
    datePickerItem = [(HUTimeEventEditorItemManager *)self datePickerItem];
    v16 = [v14 arrayByAddingObject:datePickerItem];

    v14 = v16;
  }

  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __65__HUTimeEventEditorItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v34 = &unk_277DB85D8;
  v17 = itemsCopy;
  v35 = v17;
  v18 = [v14 na_filter:&v31];

  if ([v18 count])
  {
    v19 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimeEventEditorSectionIdentifierDate"];
    [v19 setItems:v18];
    [v5 addObject:v19];
  }

  recurrencesInstructionsItem = [(HUTimeEventEditorItemManager *)self recurrencesInstructionsItem];
  v21 = [v17 containsObject:recurrencesInstructionsItem];

  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimeEventEditorSectionIdentifierRepeatInstructions"];
    recurrencesInstructionsItem2 = [(HUTimeEventEditorItemManager *)self recurrencesInstructionsItem];
    v37 = recurrencesInstructionsItem2;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [v22 setItems:v24];

    [v5 addObject:v22];
  }

  recurrencesItem = [(HUTimeEventEditorItemManager *)self recurrencesItem];
  v26 = [v17 containsObject:recurrencesItem];

  if (v26)
  {
    v27 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimeEventEditorSectionIdentifierRepeat"];
    recurrencesItem2 = [(HUTimeEventEditorItemManager *)self recurrencesItem];
    v36 = recurrencesItem2;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    [v27 setItems:v29];

    [v5 addObject:v27];
  }

  return v5;
}

- (id)_itemsToHideInSet:(id)set
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HUTimeEventEditorItemManager;
  v4 = [(HFItemManager *)&v9 _itemsToHideInSet:set];
  v5 = [v4 mutableCopy];

  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    datePickerItem = [(HUTimeEventEditorItemManager *)self datePickerItem];
    v10[0] = datePickerItem;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (void)updateForSignificantEventOffsetChange
{
  v4 = MEMORY[0x277CBEB98];
  sunriseOptionItem = [(HUTimeEventEditorItemManager *)self sunriseOptionItem];
  sunsetOptionItem = [(HUTimeEventEditorItemManager *)self sunsetOptionItem];
  v7 = [v4 setWithObjects:{sunriseOptionItem, sunsetOptionItem, 0}];
  allItems = [(HFItemManager *)self allItems];
  v10 = [v7 na_setByIntersectingWithSet:allItems];

  v9 = [(HFItemManager *)self updateResultsForItems:v10 senderSelector:a2];
}

- (id)defaultOffsetForSignificantEvent:(id)event
{
  eventCopy = event;
  significantEventToDefaultOffsetMap = [(HUTimeEventEditorItemManager *)self significantEventToDefaultOffsetMap];
  v6 = [significantEventToDefaultOffsetMap objectForKeyedSubscript:eventCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  }

  return v6;
}

- (void)setDefaultOffset:(id)offset forSignificantEvent:(id)event
{
  eventCopy = event;
  offsetCopy = offset;
  significantEventToDefaultOffsetMap = [(HUTimeEventEditorItemManager *)self significantEventToDefaultOffsetMap];
  [significantEventToDefaultOffsetMap setObject:offsetCopy forKeyedSubscript:eventCopy];
}

@end