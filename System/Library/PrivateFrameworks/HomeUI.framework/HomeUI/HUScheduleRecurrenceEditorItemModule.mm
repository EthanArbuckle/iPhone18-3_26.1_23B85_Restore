@interface HUScheduleRecurrenceEditorItemModule
- (HUScheduleRecurrenceEditorItemModule)initWithItemUpdater:(id)updater;
- (HUScheduleRecurrenceEditorItemModule)initWithItemUpdater:(id)updater recurrences:(id)recurrences;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (void)_buildItemProviders;
- (void)updateToDailyRecurrenceOption;
- (void)updateToWeeklyRecurrenceOption;
@end

@implementation HUScheduleRecurrenceEditorItemModule

- (HUScheduleRecurrenceEditorItemModule)initWithItemUpdater:(id)updater recurrences:(id)recurrences
{
  updaterCopy = updater;
  recurrencesCopy = recurrences;
  v9 = recurrencesCopy;
  if (updaterCopy)
  {
    if (recurrencesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleRecurrenceEditorItemModule.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"itemUpdater"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUScheduleRecurrenceEditorItemModule.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"recurrences"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = HUScheduleRecurrenceEditorItemModule;
  v10 = [(HFItemModule *)&v15 initWithItemUpdater:updaterCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_initialRecurrences, recurrences);
    objc_storeStrong(&v11->_editedRecurrences, recurrences);
    [(HUScheduleRecurrenceEditorItemModule *)v11 _buildItemProviders];
  }

  return v11;
}

- (HUScheduleRecurrenceEditorItemModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_recurrences_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleRecurrenceEditorItemModule.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUScheduleRecurrenceEditorItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  staticItemProvider = [(HUScheduleRecurrenceEditorItemModule *)self staticItemProvider];
  v4 = [v2 setWithObjects:{staticItemProvider, 0}];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"HUScheduleRecurrenceEditorOptionSectionIdentifier"];
  v7 = objc_opt_new();
  dailyOptionItem = [(HUScheduleRecurrenceEditorItemModule *)self dailyOptionItem];
  [v7 addObject:dailyOptionItem];

  weeklyOptionItem = [(HUScheduleRecurrenceEditorItemModule *)self weeklyOptionItem];
  [v7 addObject:weeklyOptionItem];

  [v6 setItems:v7];
  v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUScheduleRecurrenceEditorPickerSectionIdentifier"];
  v11 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_DaysOfWeekPicker_HeaderTitle", @"HUScheduleRuleEditor_DaysOfWeekPicker_HeaderTitle", 1);
  [v10 setHeaderTitle:v11];

  daysOfWeekPickerItem = [(HUScheduleRecurrenceEditorItemModule *)self daysOfWeekPickerItem];
  v19[0] = daysOfWeekPickerItem;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v10 setItems:v13];

  v14 = MEMORY[0x277D14778];
  v18[0] = v6;
  v18[1] = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [v14 filterSections:v15 toDisplayedItems:itemsCopy];

  return v16;
}

- (void)_buildItemProviders
{
  v3 = objc_opt_new();
  initialRecurrences = [(HUScheduleRecurrenceEditorItemModule *)self initialRecurrences];
  -[HUScheduleRecurrenceEditorItemModule setIsDailyRecurrenceOptionSelected:](self, "setIsDailyRecurrenceOptionSelected:", [initialRecurrences count] == 7);

  [(HUScheduleRecurrenceEditorItemModule *)self setIsWeeklyRecurrenceOptionSelected:[(HUScheduleRecurrenceEditorItemModule *)self isDailyRecurrenceOptionSelected]^ 1];
  v5 = objc_alloc(MEMORY[0x277D14B38]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__HUScheduleRecurrenceEditorItemModule__buildItemProviders__block_invoke;
  v19[3] = &unk_277DB7478;
  v19[4] = self;
  v6 = [v5 initWithResultsBlock:v19];
  [(HUScheduleRecurrenceEditorItemModule *)self setDailyOptionItem:v6];

  dailyOptionItem = [(HUScheduleRecurrenceEditorItemModule *)self dailyOptionItem];
  [v3 addObject:dailyOptionItem];

  v8 = objc_alloc(MEMORY[0x277D14B38]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__HUScheduleRecurrenceEditorItemModule__buildItemProviders__block_invoke_2;
  v18[3] = &unk_277DB7478;
  v18[4] = self;
  v9 = [v8 initWithResultsBlock:v18];
  [(HUScheduleRecurrenceEditorItemModule *)self setWeeklyOptionItem:v9];

  weeklyOptionItem = [(HUScheduleRecurrenceEditorItemModule *)self weeklyOptionItem];
  [v3 addObject:weeklyOptionItem];

  v11 = objc_alloc(MEMORY[0x277D14B38]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__HUScheduleRecurrenceEditorItemModule__buildItemProviders__block_invoke_3;
  v17[3] = &unk_277DB7478;
  v17[4] = self;
  v12 = [v11 initWithResultsBlock:v17];
  [(HUScheduleRecurrenceEditorItemModule *)self setDaysOfWeekPickerItem:v12];

  daysOfWeekPickerItem = [(HUScheduleRecurrenceEditorItemModule *)self daysOfWeekPickerItem];
  [v3 addObject:daysOfWeekPickerItem];

  v14 = objc_alloc(MEMORY[0x277D14B40]);
  v15 = [MEMORY[0x277CBEB98] setWithArray:v3];
  v16 = [v14 initWithItems:v15];
  [(HUScheduleRecurrenceEditorItemModule *)self setStaticItemProvider:v16];
}

id __59__HUScheduleRecurrenceEditorItemModule__buildItemProviders__block_invoke(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v10[0] = *MEMORY[0x277D13F60];
  v3 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_Repeat_Daily", @"HUScheduleRuleEditor_Repeat_Daily", 1);
  v4 = *MEMORY[0x277D13DC8];
  v11[0] = v3;
  v11[1] = @"Home.Schedule.Recurrence.Everyday";
  v5 = *MEMORY[0x277D13FB8];
  v10[1] = v4;
  v10[2] = v5;
  v11[2] = MEMORY[0x277CBEC28];
  v10[3] = *MEMORY[0x277D13FE8];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isDailyRecurrenceOptionSelected")}];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = [v2 futureWithResult:v7];

  return v8;
}

id __59__HUScheduleRecurrenceEditorItemModule__buildItemProviders__block_invoke_2(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v10[0] = *MEMORY[0x277D13F60];
  v3 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_Repeat_Weekly", @"HUScheduleRuleEditor_Repeat_Weekly", 1);
  v4 = *MEMORY[0x277D13DC8];
  v11[0] = v3;
  v11[1] = @"Home.Schedule.Recurrence.EveryWeek";
  v5 = *MEMORY[0x277D13FB8];
  v10[1] = v4;
  v10[2] = v5;
  v11[2] = MEMORY[0x277CBEC28];
  v10[3] = *MEMORY[0x277D13FE8];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isWeeklyRecurrenceOptionSelected")}];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = [v2 futureWithResult:v7];

  return v8;
}

id __59__HUScheduleRecurrenceEditorItemModule__buildItemProviders__block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D2C900];
  v6 = *MEMORY[0x277D13FB8];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isDailyRecurrenceOptionSelected")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v1 futureWithResult:v3];

  return v4;
}

- (void)updateToDailyRecurrenceOption
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating to daily recurrence option", &v12, 0x16u);
  }

  [(HUScheduleRecurrenceEditorItemModule *)self setIsDailyRecurrenceOptionSelected:1];
  [(HUScheduleRecurrenceEditorItemModule *)self setIsWeeklyRecurrenceOptionSelected:[(HUScheduleRecurrenceEditorItemModule *)self isDailyRecurrenceOptionSelected]^ 1];
  v6 = HMDaysOfTheWeekToDateComponents();
  [(HUScheduleRecurrenceEditorItemModule *)self setEditedRecurrences:v6];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v8 = MEMORY[0x277D14788];
  itemProviders = [(HUScheduleRecurrenceEditorItemModule *)self itemProviders];
  v10 = [v8 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v11 = [itemUpdater performItemUpdateRequest:v10];
}

- (void)updateToWeeklyRecurrenceOption
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating to weekly recurrence option", &v11, 0x16u);
  }

  [(HUScheduleRecurrenceEditorItemModule *)self setIsDailyRecurrenceOptionSelected:0];
  [(HUScheduleRecurrenceEditorItemModule *)self setIsWeeklyRecurrenceOptionSelected:[(HUScheduleRecurrenceEditorItemModule *)self isDailyRecurrenceOptionSelected]^ 1];
  itemUpdater = [(HFItemModule *)self itemUpdater];
  v7 = MEMORY[0x277D14788];
  itemProviders = [(HUScheduleRecurrenceEditorItemModule *)self itemProviders];
  v9 = [v7 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v10 = [itemUpdater performItemUpdateRequest:v9];
}

@end