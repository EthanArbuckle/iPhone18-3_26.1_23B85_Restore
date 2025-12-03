@interface HUTimerTriggerEditorItemManager
- (HUTimerTriggerEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUTimerTriggerEditorItemManager)initWithTimerTriggerBuilder:(id)builder delegate:(id)delegate;
- (NSSet)dateOptionsItems;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (id)defaultOffsetForSignificantEvent:(id)event;
- (void)setDatePickerShown:(BOOL)shown;
- (void)setDefaultOffset:(id)offset forSignificantEvent:(id)event;
- (void)updateForSignificantEventOffsetChange;
@end

@implementation HUTimerTriggerEditorItemManager

- (HUTimerTriggerEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTimerTriggerBuilder_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimerTriggerEditorItemManager.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HUTimerTriggerEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUTimerTriggerEditorItemManager)initWithTimerTriggerBuilder:(id)builder delegate:(id)delegate
{
  v57[1] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  delegateCopy = delegate;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimerTriggerEditorItemManager.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"timerTriggerBuilder != nil"}];
  }

  v55.receiver = self;
  v55.super_class = HUTimerTriggerEditorItemManager;
  v10 = [(HFItemManager *)&v55 initWithDelegate:delegateCopy sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_timerTriggerBuilder, builder);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    significantEventToDefaultOffsetMap = v11->_significantEventToDefaultOffsetMap;
    v11->_significantEventToDefaultOffsetMap = dictionary;

    v14 = [HUTriggerConditionEditorItemModule alloc];
    home = [builderCopy home];
    conditionCollection = [builderCopy conditionCollection];
    v17 = [MEMORY[0x277CBEB98] setWithObject:&unk_282492168];
    v18 = [(HUTriggerConditionEditorItemModule *)v14 initWithItemUpdater:v11 home:home conditionCollection:conditionCollection disallowedConditionTypes:v17];
    conditionModule = v11->_conditionModule;
    v11->_conditionModule = v18;

    v20 = [HUInstructionsItem alloc];
    v21 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorInstructionsTitle", @"HUTimerTriggerEditorInstructionsTitle", 1);
    v22 = [(HUInstructionsItem *)v20 initWithStyle:3 title:v21 description:0];
    instructionsItem = v11->_instructionsItem;
    v11->_instructionsItem = v22;

    objc_initWeak(&location, v11);
    v24 = objc_alloc(MEMORY[0x277D14B38]);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __72__HUTimerTriggerEditorItemManager_initWithTimerTriggerBuilder_delegate___block_invoke;
    v51[3] = &unk_277DC1DE0;
    v25 = builderCopy;
    v52 = v25;
    objc_copyWeak(&v53, &location);
    v26 = [v24 initWithResultsBlock:v51];
    sunriseOptionItem = v11->_sunriseOptionItem;
    v11->_sunriseOptionItem = v26;

    v28 = objc_alloc(MEMORY[0x277D14B38]);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __72__HUTimerTriggerEditorItemManager_initWithTimerTriggerBuilder_delegate___block_invoke_2;
    v48[3] = &unk_277DC1DE0;
    v49 = v25;
    objc_copyWeak(&v50, &location);
    v29 = [v28 initWithResultsBlock:v48];
    sunsetOptionItem = v11->_sunsetOptionItem;
    v11->_sunsetOptionItem = v29;

    v31 = objc_alloc(MEMORY[0x277D14B38]);
    v56 = *MEMORY[0x277D13F60];
    v32 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorTimeOption", @"HUTimerTriggerEditorTimeOption", 1);
    v57[0] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v34 = [v31 initWithResults:v33];
    timeOptionItem = v11->_timeOptionItem;
    v11->_timeOptionItem = v34;

    v36 = objc_alloc(MEMORY[0x277D14B38]);
    v37 = [v36 initWithResults:MEMORY[0x277CBEC10]];
    datePickerItem = v11->_datePickerItem;
    v11->_datePickerItem = v37;

    v39 = [HUInstructionsItem alloc];
    v40 = _HULocalizedStringWithDefaultValue(@"HUTimerTriggerEditorRepeatSectionTitle", @"HUTimerTriggerEditorRepeatSectionTitle", 1);
    v41 = [(HUInstructionsItem *)v39 initWithStyle:2 title:v40 description:0];
    recurrencesInstructionsItem = v11->_recurrencesInstructionsItem;
    v11->_recurrencesInstructionsItem = v41;

    v43 = objc_alloc(MEMORY[0x277D14B38]);
    v44 = [v43 initWithResults:MEMORY[0x277CBEC10]];
    recurrencesItem = v11->_recurrencesItem;
    v11->_recurrencesItem = v44;

    objc_destroyWeak(&v50);
    objc_destroyWeak(&v53);

    objc_destroyWeak(&location);
  }

  return v11;
}

id __72__HUTimerTriggerEditorItemManager_initWithTimerTriggerBuilder_delegate___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = [*(a1 + 32) eventBuilder];
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

id __72__HUTimerTriggerEditorItemManager_initWithTimerTriggerBuilder_delegate___block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = [*(a1 + 32) eventBuilder];
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
    datePickerItem = [(HUTimerTriggerEditorItemManager *)self datePickerItem];
    v7 = [allItems containsObject:datePickerItem];

    if (v7)
    {
      v8 = MEMORY[0x277CBEB98];
      datePickerItem2 = [(HUTimerTriggerEditorItemManager *)self datePickerItem];
      v9 = [v8 setWithObject:datePickerItem2];
      v10 = [(HFItemManager *)self updateResultsForItems:v9 senderSelector:a2];
    }
  }
}

- (NSSet)dateOptionsItems
{
  v3 = MEMORY[0x277CBEB98];
  sunriseOptionItem = [(HUTimerTriggerEditorItemManager *)self sunriseOptionItem];
  sunsetOptionItem = [(HUTimerTriggerEditorItemManager *)self sunsetOptionItem];
  timeOptionItem = [(HUTimerTriggerEditorItemManager *)self timeOptionItem];
  v7 = [v3 setWithObjects:{sunriseOptionItem, sunsetOptionItem, timeOptionItem, 0}];

  return v7;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B40]);
  v5 = MEMORY[0x277CBEB98];
  instructionsItem = [(HUTimerTriggerEditorItemManager *)self instructionsItem];
  sunriseOptionItem = [(HUTimerTriggerEditorItemManager *)self sunriseOptionItem];
  sunsetOptionItem = [(HUTimerTriggerEditorItemManager *)self sunsetOptionItem];
  timeOptionItem = [(HUTimerTriggerEditorItemManager *)self timeOptionItem];
  datePickerItem = [(HUTimerTriggerEditorItemManager *)self datePickerItem];
  recurrencesInstructionsItem = [(HUTimerTriggerEditorItemManager *)self recurrencesInstructionsItem];
  recurrencesItem = [(HUTimerTriggerEditorItemManager *)self recurrencesItem];
  v13 = [v5 setWithObjects:{instructionsItem, sunriseOptionItem, sunsetOptionItem, timeOptionItem, datePickerItem, recurrencesInstructionsItem, recurrencesItem, 0}];
  v14 = [v4 initWithItems:v13];

  v21[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  conditionModule = [(HUTimerTriggerEditorItemManager *)self conditionModule];
  itemProviders = [conditionModule itemProviders];
  allObjects = [itemProviders allObjects];
  v19 = [v15 arrayByAddingObjectsFromArray:allObjects];

  return v19;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v41[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  instructionsItem = [(HUTimerTriggerEditorItemManager *)self instructionsItem];
  v7 = [itemsCopy containsObject:instructionsItem];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimerTriggerEditorSectionIdentifierInstructions"];
    instructionsItem2 = [(HUTimerTriggerEditorItemManager *)self instructionsItem];
    v41[0] = instructionsItem2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    [v8 setItems:v10];

    [v5 addObject:v8];
  }

  sunriseOptionItem = [(HUTimerTriggerEditorItemManager *)self sunriseOptionItem];
  v40[0] = sunriseOptionItem;
  sunsetOptionItem = [(HUTimerTriggerEditorItemManager *)self sunsetOptionItem];
  v40[1] = sunsetOptionItem;
  timeOptionItem = [(HUTimerTriggerEditorItemManager *)self timeOptionItem];
  v40[2] = timeOptionItem;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];

  if ([(HUTimerTriggerEditorItemManager *)self datePickerShown])
  {
    datePickerItem = [(HUTimerTriggerEditorItemManager *)self datePickerItem];
    v16 = [v14 arrayByAddingObject:datePickerItem];

    v14 = v16;
  }

  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __68__HUTimerTriggerEditorItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v36 = &unk_277DB85D8;
  v17 = itemsCopy;
  v37 = v17;
  v18 = [v14 na_filter:&v33];

  if ([v18 count])
  {
    v19 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimerTriggerEditorSectionIdentifierDate"];
    [v19 setItems:v18];
    [v5 addObject:v19];
  }

  recurrencesInstructionsItem = [(HUTimerTriggerEditorItemManager *)self recurrencesInstructionsItem];
  v21 = [v17 containsObject:recurrencesInstructionsItem];

  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimerTriggerEditorSectionIdentifierRepeatInstructions"];
    recurrencesInstructionsItem2 = [(HUTimerTriggerEditorItemManager *)self recurrencesInstructionsItem];
    v39 = recurrencesInstructionsItem2;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    [v22 setItems:v24];

    [v5 addObject:v22];
  }

  recurrencesItem = [(HUTimerTriggerEditorItemManager *)self recurrencesItem];
  v26 = [v17 containsObject:recurrencesItem];

  if (v26)
  {
    v27 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTimerTriggerEditorSectionIdentifierRepeat"];
    recurrencesItem2 = [(HUTimerTriggerEditorItemManager *)self recurrencesItem];
    v38 = recurrencesItem2;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    [v27 setItems:v29];

    [v5 addObject:v27];
  }

  conditionModule = [(HUTimerTriggerEditorItemManager *)self conditionModule];
  v31 = [conditionModule buildSectionsWithDisplayedItems:v17];
  [v5 addObjectsFromArray:v31];

  return v5;
}

- (id)_itemsToHideInSet:(id)set
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HUTimerTriggerEditorItemManager;
  v4 = [(HFItemManager *)&v9 _itemsToHideInSet:set];
  v5 = [v4 mutableCopy];

  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    datePickerItem = [(HUTimerTriggerEditorItemManager *)self datePickerItem];
    v10[0] = datePickerItem;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (void)updateForSignificantEventOffsetChange
{
  v4 = MEMORY[0x277CBEB98];
  sunriseOptionItem = [(HUTimerTriggerEditorItemManager *)self sunriseOptionItem];
  sunsetOptionItem = [(HUTimerTriggerEditorItemManager *)self sunsetOptionItem];
  v7 = [v4 setWithObjects:{sunriseOptionItem, sunsetOptionItem, 0}];
  allItems = [(HFItemManager *)self allItems];
  v10 = [v7 na_setByIntersectingWithSet:allItems];

  v9 = [(HFItemManager *)self updateResultsForItems:v10 senderSelector:a2];
}

- (id)defaultOffsetForSignificantEvent:(id)event
{
  eventCopy = event;
  significantEventToDefaultOffsetMap = [(HUTimerTriggerEditorItemManager *)self significantEventToDefaultOffsetMap];
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
  significantEventToDefaultOffsetMap = [(HUTimerTriggerEditorItemManager *)self significantEventToDefaultOffsetMap];
  [significantEventToDefaultOffsetMap setObject:offsetCopy forKeyedSubscript:eventCopy];
}

@end