@interface HUScheduleDateEditorItemModule
- (HUScheduleDateEditorItemModule)initWithItemUpdater:(id)updater;
- (HUScheduleDateEditorItemModule)initWithItemUpdater:(id)updater date:(id)date editorContext:(unint64_t)context;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (void)_buildItemProviders;
- (void)_configureSelectedOptions;
- (void)updateToNeverDateOption;
- (void)updateToSpecificDateOption;
- (void)updateToTodayDateOption;
@end

@implementation HUScheduleDateEditorItemModule

- (HUScheduleDateEditorItemModule)initWithItemUpdater:(id)updater date:(id)date editorContext:(unint64_t)context
{
  updaterCopy = updater;
  dateCopy = date;
  v11 = dateCopy;
  if (updaterCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleDateEditorItemModule.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"itemUpdater"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUScheduleDateEditorItemModule.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"date"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = HUScheduleDateEditorItemModule;
  v12 = [(HFItemModule *)&v17 initWithItemUpdater:updaterCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_existingDate, date);
    objc_storeStrong(&v13->_editedDate, date);
    v13->_editorContext = context;
    [(HUScheduleDateEditorItemModule *)v13 _buildItemProviders];
  }

  return v13;
}

- (HUScheduleDateEditorItemModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_date_editorContext_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleDateEditorItemModule.m" lineNumber:47 description:{@"%s is unavailable; use %@ instead", "-[HUScheduleDateEditorItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  staticItemProvider = [(HUScheduleDateEditorItemModule *)self staticItemProvider];
  v4 = [v2 setWithObjects:{staticItemProvider, 0}];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"HUScheduleDateEditorDateSectionIdentifier"];
  v7 = objc_opt_new();
  startTodayDateItem = [(HUScheduleDateEditorItemModule *)self startTodayDateItem];
  [v7 na_safeAddObject:startTodayDateItem];

  endNeverDateItem = [(HUScheduleDateEditorItemModule *)self endNeverDateItem];
  [v7 na_safeAddObject:endNeverDateItem];

  specificDateItem = [(HUScheduleDateEditorItemModule *)self specificDateItem];
  [v7 na_safeAddObject:specificDateItem];

  datePickerItem = [(HUScheduleDateEditorItemModule *)self datePickerItem];
  [v7 na_safeAddObject:datePickerItem];

  [v6 setItems:v7];
  v12 = MEMORY[0x277D14778];
  v16[0] = v6;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v12 filterSections:v13 toDisplayedItems:itemsCopy];

  return v14;
}

- (void)_buildItemProviders
{
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  [(HUScheduleDateEditorItemModule *)self _configureSelectedOptions];
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__HUScheduleDateEditorItemModule__buildItemProviders__block_invoke;
  v25[3] = &unk_277DB7448;
  objc_copyWeak(&v26, &location);
  v5 = [v4 initWithResultsBlock:v25];
  [(HUScheduleDateEditorItemModule *)self setStartTodayDateItem:v5];

  startTodayDateItem = [(HUScheduleDateEditorItemModule *)self startTodayDateItem];
  [v3 addObject:startTodayDateItem];

  v7 = objc_alloc(MEMORY[0x277D14B38]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__HUScheduleDateEditorItemModule__buildItemProviders__block_invoke_2;
  v23[3] = &unk_277DB7448;
  objc_copyWeak(&v24, &location);
  v8 = [v7 initWithResultsBlock:v23];
  [(HUScheduleDateEditorItemModule *)self setEndNeverDateItem:v8];

  endNeverDateItem = [(HUScheduleDateEditorItemModule *)self endNeverDateItem];
  [v3 addObject:endNeverDateItem];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__HUScheduleDateEditorItemModule__buildItemProviders__block_invoke_3;
  v21[3] = &unk_277DB7448;
  objc_copyWeak(&v22, &location);
  v11 = [v10 initWithResultsBlock:v21];
  [(HUScheduleDateEditorItemModule *)self setSpecificDateItem:v11];

  specificDateItem = [(HUScheduleDateEditorItemModule *)self specificDateItem];
  [v3 addObject:specificDateItem];

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__HUScheduleDateEditorItemModule__buildItemProviders__block_invoke_4;
  v19[3] = &unk_277DB7448;
  objc_copyWeak(&v20, &location);
  v14 = [v13 initWithResultsBlock:v19];
  [(HUScheduleDateEditorItemModule *)self setDatePickerItem:v14];

  datePickerItem = [(HUScheduleDateEditorItemModule *)self datePickerItem];
  [v3 addObject:datePickerItem];

  v16 = objc_alloc(MEMORY[0x277D14B40]);
  v17 = [MEMORY[0x277CBEB98] setWithArray:v3];
  v18 = [v16 initWithItems:v17];
  [(HUScheduleDateEditorItemModule *)self setStaticItemProvider:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&location);
}

id __53__HUScheduleDateEditorItemModule__buildItemProviders__block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v11[0] = *MEMORY[0x277D13F60];
  v3 = HFLocalizedString();
  v4 = *MEMORY[0x277D13DC8];
  v12[0] = v3;
  v12[1] = @"Home.ScheduleRule.Editor.Today";
  v5 = *MEMORY[0x277D13FE8];
  v11[1] = v4;
  v11[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "isTodayOptionSelected")}];
  v12[2] = v6;
  v11[3] = *MEMORY[0x277D13FB8];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "editorContext") != 0}];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [v2 futureWithResult:v8];

  return v9;
}

id __53__HUScheduleDateEditorItemModule__buildItemProviders__block_invoke_2(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v11[0] = *MEMORY[0x277D13F60];
  v3 = HFLocalizedString();
  v4 = *MEMORY[0x277D13DC8];
  v12[0] = v3;
  v12[1] = @"Home.ScheduleRule.Editor.Never";
  v5 = *MEMORY[0x277D13FE8];
  v11[1] = v4;
  v11[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "isNeverOptionSelected")}];
  v12[2] = v6;
  v11[3] = *MEMORY[0x277D13FB8];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "editorContext") != 1}];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [v2 futureWithResult:v8];

  return v9;
}

id __53__HUScheduleDateEditorItemModule__buildItemProviders__block_invoke_3(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v10[0] = *MEMORY[0x277D13F60];
  v3 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_OnDate", @"HUScheduleRuleEditor_OnDate", 1);
  v4 = *MEMORY[0x277D13DC8];
  v11[0] = v3;
  v11[1] = @"Home.ScheduleRule.Editor.OnDate";
  v5 = *MEMORY[0x277D13FE8];
  v10[1] = v4;
  v10[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "isSpecificDateOptionSelected")}];
  v10[3] = *MEMORY[0x277D13FB8];
  v11[2] = v6;
  v11[3] = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = [v2 futureWithResult:v7];

  return v8;
}

id __53__HUScheduleDateEditorItemModule__buildItemProviders__block_invoke_4(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v9 = *MEMORY[0x277D13FB8];
  v3 = MEMORY[0x277CCABB0];
  if ([WeakRetained isTodayOptionSelected])
  {
    v4 = 1;
  }

  else
  {
    v4 = [WeakRetained isNeverOptionSelected];
  }

  v5 = [v3 numberWithInt:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v2 futureWithResult:v6];

  return v7;
}

- (void)updateToTodayDateOption
{
  [(HUScheduleDateEditorItemModule *)self setIsTodayOptionSelected:1];
  [(HUScheduleDateEditorItemModule *)self setIsSpecificDateOptionSelected:[(HUScheduleDateEditorItemModule *)self isTodayOptionSelected]^ 1];
  date = [MEMORY[0x277CBEAA8] date];
  hf_startOfDay = [date hf_startOfDay];
  [(HUScheduleDateEditorItemModule *)self setEditedDate:hf_startOfDay];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v6 = MEMORY[0x277D14788];
  itemProviders = [(HUScheduleDateEditorItemModule *)self itemProviders];
  v8 = [v6 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v9 = [itemUpdater performItemUpdateRequest:v8];
}

- (void)updateToNeverDateOption
{
  [(HUScheduleDateEditorItemModule *)self setIsNeverOptionSelected:1];
  [(HUScheduleDateEditorItemModule *)self setIsSpecificDateOptionSelected:[(HUScheduleDateEditorItemModule *)self isNeverOptionSelected]^ 1];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [(HUScheduleDateEditorItemModule *)self setEditedDate:distantFuture];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v5 = MEMORY[0x277D14788];
  itemProviders = [(HUScheduleDateEditorItemModule *)self itemProviders];
  v7 = [v5 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v8 = [itemUpdater performItemUpdateRequest:v7];
}

- (void)updateToSpecificDateOption
{
  if ([(HUScheduleDateEditorItemModule *)self editorContext])
  {
    if ([(HUScheduleDateEditorItemModule *)self editorContext]!= 1)
    {
      goto LABEL_6;
    }

    [(HUScheduleDateEditorItemModule *)self setIsNeverOptionSelected:0];
    isNeverOptionSelected = [(HUScheduleDateEditorItemModule *)self isNeverOptionSelected];
  }

  else
  {
    [(HUScheduleDateEditorItemModule *)self setIsTodayOptionSelected:0];
    isNeverOptionSelected = [(HUScheduleDateEditorItemModule *)self isTodayOptionSelected];
  }

  [(HUScheduleDateEditorItemModule *)self setIsSpecificDateOptionSelected:!isNeverOptionSelected];
LABEL_6:
  itemUpdater = [(HFItemModule *)self itemUpdater];
  v5 = MEMORY[0x277D14788];
  itemProviders = [(HUScheduleDateEditorItemModule *)self itemProviders];
  v7 = [v5 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v8 = [itemUpdater performItemUpdateRequest:v7];
}

- (void)_configureSelectedOptions
{
  if ([(HUScheduleDateEditorItemModule *)self editorContext])
  {
    if ([(HUScheduleDateEditorItemModule *)self editorContext]!= 1)
    {
      return;
    }

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    existingDate = [(HUScheduleDateEditorItemModule *)self existingDate];
    v5 = [distantFuture isEqualToDate:existingDate];

    [(HUScheduleDateEditorItemModule *)self setIsNeverOptionSelected:v5];
    isNeverOptionSelected = [(HUScheduleDateEditorItemModule *)self isNeverOptionSelected];
  }

  else
  {
    hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    existingDate2 = [(HUScheduleDateEditorItemModule *)self existingDate];
    v9 = [hf_sharedCalendar isDateInToday:existingDate2];

    [(HUScheduleDateEditorItemModule *)self setIsTodayOptionSelected:v9];
    isNeverOptionSelected = [(HUScheduleDateEditorItemModule *)self isTodayOptionSelected];
  }

  [(HUScheduleDateEditorItemModule *)self setIsSpecificDateOptionSelected:!isNeverOptionSelected];
}

@end