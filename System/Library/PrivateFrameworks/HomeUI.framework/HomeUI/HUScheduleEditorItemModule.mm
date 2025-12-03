@interface HUScheduleEditorItemModule
- (BOOL)updateScheduleBuilder:(id)builder;
- (BOOL)updateSelectedScheduleType:(id)type;
- (HUScheduleEditorItemModule)initWithItemUpdater:(id)updater;
- (HUScheduleEditorItemModule)initWithItemUpdater:(id)updater scheduleBuilder:(id)builder;
- (HUScheduleEditorItemModuleDelegate)delegate;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (unint64_t)selectedScheduleType;
- (void)_buildItemProviders;
@end

@implementation HUScheduleEditorItemModule

- (HUScheduleEditorItemModule)initWithItemUpdater:(id)updater scheduleBuilder:(id)builder
{
  updaterCopy = updater;
  builderCopy = builder;
  v9 = builderCopy;
  if (updaterCopy)
  {
    if (builderCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleEditorItemModule.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"itemUpdater"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUScheduleEditorItemModule.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"scheduleBuilder"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HUScheduleEditorItemModule;
  v10 = [(HFItemModule *)&v18 initWithItemUpdater:updaterCopy];
  if (v10)
  {
    v11 = [v9 copy];
    originalScheduleBuilder = v10->_originalScheduleBuilder;
    v10->_originalScheduleBuilder = v11;

    v13 = [v9 copy];
    updatedScheduleBuilder = v10->_updatedScheduleBuilder;
    v10->_updatedScheduleBuilder = v13;

    [(HUScheduleEditorItemModule *)v10 _buildItemProviders];
  }

  return v10;
}

- (HUScheduleEditorItemModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_scheduleBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleEditorItemModule.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HUScheduleEditorItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  scheduleTypeItemProvider = [(HUScheduleEditorItemModule *)self scheduleTypeItemProvider];
  scheduleRuleItemProvider = [(HUScheduleEditorItemModule *)self scheduleRuleItemProvider];
  staticItemProvider = [(HUScheduleEditorItemModule *)self staticItemProvider];
  v7 = [v3 setWithObjects:{scheduleTypeItemProvider, scheduleRuleItemProvider, staticItemProvider, 0}];
  ruleEditorItemModule = [(HUScheduleEditorItemModule *)self ruleEditorItemModule];
  itemProviders = [ruleEditorItemModule itemProviders];
  v10 = [v7 setByAddingObjectsFromSet:itemProviders];

  return v10;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  scheduleTypeItemProvider = [(HUScheduleEditorItemModule *)self scheduleTypeItemProvider];
  items = [scheduleTypeItemProvider items];
  v8 = [itemsCopy intersectsSet:items];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUScheduleEditorTypesItemSectionIdentifier"];
    scheduleTypeItemProvider2 = [(HUScheduleEditorItemModule *)self scheduleTypeItemProvider];
    items2 = [scheduleTypeItemProvider2 items];
    allObjects = [items2 allObjects];
    v13 = [allObjects sortedArrayUsingComparator:&__block_literal_global_90];

    [v9 setItems:v13];
    [v5 addObject:v9];
  }

  ruleEditorItemModule = [(HUScheduleEditorItemModule *)self ruleEditorItemModule];
  v15 = [ruleEditorItemModule buildSectionsWithDisplayedItems:itemsCopy];

  v35 = v5;
  [v5 na_safeAddObjectsFromArray:v15];
  v16 = objc_opt_new();
  v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUScheduleEditorRulesItemSectionIdentifier"];
  updatedScheduleBuilder = [(HUScheduleEditorItemModule *)self updatedScheduleBuilder];
  rules = [updatedScheduleBuilder rules];
  v20 = [rules count];

  if (v20 >= 2)
  {
    if ([(HUScheduleEditorItemModule *)self selectedScheduleType]== 2)
    {
      v21 = @"HUScheduleRuleEditor_Times_Title";
    }

    else
    {
      v21 = @"HUScheduleRuleEditor_Dates_Title";
    }

    v22 = _HULocalizedStringWithDefaultValue(v21, v21, 1);
    [v17 setHeaderTitle:v22];
  }

  scheduleRuleItemProvider = [(HUScheduleEditorItemModule *)self scheduleRuleItemProvider];
  items3 = [scheduleRuleItemProvider items];
  v25 = [itemsCopy intersectsSet:items3];

  if (v25 && v20 >= 2)
  {
    scheduleRuleItemProvider2 = [(HUScheduleEditorItemModule *)self scheduleRuleItemProvider];
    items4 = [scheduleRuleItemProvider2 items];
    allObjects2 = [items4 allObjects];
    sortComparatorForScheduleRules = [MEMORY[0x277D14A50] sortComparatorForScheduleRules];
    v30 = [allObjects2 sortedArrayUsingComparator:sortComparatorForScheduleRules];
    [v16 addObjectsFromArray:v30];
  }

  addScheduleRuleItem = [(HUScheduleEditorItemModule *)self addScheduleRuleItem];
  v32 = [itemsCopy containsObject:addScheduleRuleItem];

  if (v32)
  {
    addScheduleRuleItem2 = [(HUScheduleEditorItemModule *)self addScheduleRuleItem];
    [v16 addObject:addScheduleRuleItem2];
  }

  if (([v16 hmf_isEmpty] & 1) == 0)
  {
    [v17 setItems:v16];
    [v35 addObject:v17];
  }

  return v35;
}

uint64_t __62__HUScheduleEditorItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13FF0];
  v7 = [v5 objectForKey:*MEMORY[0x277D13FF0]];

  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];

  v17 = MEMORY[0x277D85DD0];
  v10 = v7;
  v18 = v10;
  v11 = v9;
  v12 = v11;
  v19 = v11;
  if (v10)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 != 0;
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v13 = [v10 compare:{v11, v17, 3221225472, __62__HUScheduleEditorItemModule_buildSectionsWithDisplayedItems___block_invoke_2, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

- (void)_buildItemProviders
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D14A40]);
  originalScheduleBuilder = [(HUScheduleEditorItemModule *)self originalScheduleBuilder];
  v5 = [v3 initWithScheduleBuilder:originalScheduleBuilder];
  [(HUScheduleEditorItemModule *)self setScheduleTypeItemProvider:v5];

  originalScheduleBuilder2 = [(HUScheduleEditorItemModule *)self originalScheduleBuilder];
  estimatedScheduleType = [originalScheduleBuilder2 estimatedScheduleType];

  scheduleTypeItemProvider = [(HUScheduleEditorItemModule *)self scheduleTypeItemProvider];
  [scheduleTypeItemProvider updateSelectedType:estimatedScheduleType];

  v9 = objc_alloc(MEMORY[0x277D14A30]);
  originalScheduleBuilder3 = [(HUScheduleEditorItemModule *)self originalScheduleBuilder];
  v11 = [v9 initWithScheduleBuilder:originalScheduleBuilder3];
  [(HUScheduleEditorItemModule *)self setScheduleRuleItemProvider:v11];

  v12 = [HUScheduleRuleEditorItemModule alloc];
  itemUpdater = [(HFItemModule *)self itemUpdater];
  originalScheduleBuilder4 = [(HUScheduleEditorItemModule *)self originalScheduleBuilder];
  estimatedScheduleType2 = [originalScheduleBuilder4 estimatedScheduleType];
  originalScheduleBuilder5 = [(HUScheduleEditorItemModule *)self originalScheduleBuilder];
  rules = [originalScheduleBuilder5 rules];
  anyObject = [rules anyObject];
  originalScheduleBuilder6 = [(HUScheduleEditorItemModule *)self originalScheduleBuilder];
  v20 = [(HUScheduleRuleEditorItemModule *)v12 initWithItemUpdater:itemUpdater scheduleType:estimatedScheduleType2 scheduleRule:anyObject scheduleBuilder:originalScheduleBuilder6];
  [(HUScheduleEditorItemModule *)self setRuleEditorItemModule:v20];

  ruleEditorItemModule = [(HUScheduleEditorItemModule *)self ruleEditorItemModule];
  [ruleEditorItemModule setShowAsInlineModule:1];

  objc_initWeak(&location, self);
  v22 = objc_alloc(MEMORY[0x277D14B38]);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __49__HUScheduleEditorItemModule__buildItemProviders__block_invoke;
  v32 = &unk_277DB7448;
  objc_copyWeak(&v33, &location);
  v23 = [v22 initWithResultsBlock:&v29];
  [(HUScheduleEditorItemModule *)self setAddScheduleRuleItem:v23, v29, v30, v31, v32];

  addScheduleRuleItem = [(HUScheduleEditorItemModule *)self addScheduleRuleItem];
  v35[0] = addScheduleRuleItem;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];

  v26 = objc_alloc(MEMORY[0x277D14B40]);
  v27 = [MEMORY[0x277CBEB98] setWithArray:v25];
  v28 = [v26 initWithItems:v27];
  [(HUScheduleEditorItemModule *)self setStaticItemProvider:v28];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

id __49__HUScheduleEditorItemModule__buildItemProviders__block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_AddRule_Title", @"HUScheduleRuleEditor_AddRule_Title", 1);
  v3 = MEMORY[0x277D2C900];
  v4 = *MEMORY[0x277D13DC8];
  v11[0] = *MEMORY[0x277D13F60];
  v11[1] = v4;
  v12[0] = v2;
  v12[1] = @"Home.ScheduleRule.Editor.AddMore";
  v11[2] = *MEMORY[0x277D13FB8];
  v5 = MEMORY[0x277CCABB0];
  v6 = [WeakRetained scheduleTypeItemProvider];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "selectedType") == 0}];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v9 = [v3 futureWithResult:v8];

  return v9;
}

- (unint64_t)selectedScheduleType
{
  scheduleTypeItemProvider = [(HUScheduleEditorItemModule *)self scheduleTypeItemProvider];
  selectedType = [scheduleTypeItemProvider selectedType];

  return selectedType;
}

- (BOOL)updateSelectedScheduleType:(id)type
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(typeCopy, "type")}];
    v22 = 138412802;
    selfCopy = self;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating selected schedule type to %@", &v22, 0x20u);
  }

  originalScheduleBuilder = [(HUScheduleEditorItemModule *)self originalScheduleBuilder];
  estimatedScheduleType = [originalScheduleBuilder estimatedScheduleType];

  if (estimatedScheduleType == [typeCopy type])
  {
    originalScheduleBuilder2 = [(HUScheduleEditorItemModule *)self originalScheduleBuilder];
    v12 = [originalScheduleBuilder2 copy];
  }

  else
  {
    v12 = [MEMORY[0x277D14A08] scheduleBuilderFromType:objc_msgSend(typeCopy withDefaultRules:{"type"), 1}];
  }

  [(HUScheduleEditorItemModule *)self updateScheduleBuilder:v12];
  scheduleTypeItemProvider = [(HUScheduleEditorItemModule *)self scheduleTypeItemProvider];
  [scheduleTypeItemProvider updateSelectedType:{objc_msgSend(typeCopy, "type")}];

  itemProviders = [(HUScheduleEditorItemModule *)self itemProviders];
  ruleEditorItemModule = [(HUScheduleEditorItemModule *)self ruleEditorItemModule];
  itemProviders2 = [ruleEditorItemModule itemProviders];
  v17 = [itemProviders setByAddingObjectsFromSet:itemProviders2];

  v18 = [MEMORY[0x277D14788] requestToReloadItemProviders:v17 senderSelector:a2];
  itemUpdater = [(HFItemModule *)self itemUpdater];
  v20 = [itemUpdater performItemUpdateRequest:v18];

  return 1;
}

- (BOOL)updateScheduleBuilder:(id)builder
{
  v30 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v24 = 138412802;
    selfCopy = self;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = builderCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating schedule builder to %@", &v24, 0x20u);
  }

  [(HUScheduleEditorItemModule *)self setUpdatedScheduleBuilder:builderCopy];
  updatedScheduleBuilder = [(HUScheduleEditorItemModule *)self updatedScheduleBuilder];
  scheduleTypeItemProvider = [(HUScheduleEditorItemModule *)self scheduleTypeItemProvider];
  [scheduleTypeItemProvider setScheduleBuilder:updatedScheduleBuilder];

  updatedScheduleBuilder2 = [(HUScheduleEditorItemModule *)self updatedScheduleBuilder];
  scheduleRuleItemProvider = [(HUScheduleEditorItemModule *)self scheduleRuleItemProvider];
  [scheduleRuleItemProvider setScheduleBuilder:updatedScheduleBuilder2];

  ruleEditorItemModule = [(HUScheduleEditorItemModule *)self ruleEditorItemModule];
  updatedScheduleBuilder3 = [(HUScheduleEditorItemModule *)self updatedScheduleBuilder];
  [ruleEditorItemModule updateScheduleBuilder:updatedScheduleBuilder3];

  delegate = [(HUScheduleEditorItemModule *)self delegate];
  updatedScheduleBuilder4 = [(HUScheduleEditorItemModule *)self updatedScheduleBuilder];
  [delegate scheduleEditorModule:self didUpdateScheduleBuilder:updatedScheduleBuilder4];

  itemProviders = [(HUScheduleEditorItemModule *)self itemProviders];
  ruleEditorItemModule2 = [(HUScheduleEditorItemModule *)self ruleEditorItemModule];
  itemProviders2 = [ruleEditorItemModule2 itemProviders];
  v19 = [itemProviders setByAddingObjectsFromSet:itemProviders2];

  v20 = [MEMORY[0x277D14788] requestToReloadItemProviders:v19 senderSelector:a2];
  itemUpdater = [(HFItemModule *)self itemUpdater];
  v22 = [itemUpdater performItemUpdateRequest:v20];

  return 1;
}

- (HUScheduleEditorItemModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end