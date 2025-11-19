@interface HUScheduleRuleEditorItemModule
- (BOOL)updateScheduleRuleEndDate:(id)a3;
- (BOOL)updateScheduleRuleEndTime:(id)a3;
- (BOOL)updateScheduleRuleRecurrences:(id)a3;
- (BOOL)updateScheduleRuleStartDate:(id)a3;
- (BOOL)updateScheduleRuleStartTime:(id)a3;
- (HUScheduleRuleEditorItemModule)initWithItemUpdater:(id)a3;
- (HUScheduleRuleEditorItemModule)initWithItemUpdater:(id)a3 scheduleType:(unint64_t)a4 scheduleRule:(id)a5 scheduleBuilder:(id)a6;
- (id)_datePeriodFormatter;
- (id)_localizedNaturalLanguageStringForRecurrence;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (void)_buildItemProviders;
- (void)updateAllDayToggle:(BOOL)a3;
- (void)updateScheduleBuilder:(id)a3;
@end

@implementation HUScheduleRuleEditorItemModule

- (HUScheduleRuleEditorItemModule)initWithItemUpdater:(id)a3 scheduleType:(unint64_t)a4 scheduleRule:(id)a5 scheduleBuilder:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"HUScheduleRuleEditorItemModule.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"itemUpdater"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"HUScheduleRuleEditorItemModule.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"scheduleBuilder"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = HUScheduleRuleEditorItemModule;
  v15 = [(HFItemModule *)&v26 initWithItemUpdater:v11];
  v16 = v15;
  if (v15)
  {
    v15->_scheduleType = a4;
    v17 = [v12 copy];
    existingScheduleRule = v16->_existingScheduleRule;
    v16->_existingScheduleRule = v17;

    if (v12)
    {
      v19 = [v12 copy];
    }

    else
    {
      v19 = [MEMORY[0x277D14A20] defaultRuleForType:a4];
    }

    v20 = v19;
    objc_storeStrong(&v16->_editedScheduleRule, v19);

    v21 = [v14 copy];
    scheduleBuilder = v16->_scheduleBuilder;
    v16->_scheduleBuilder = v21;

    v16->_showAsInlineModule = 0;
    [(HUScheduleRuleEditorItemModule *)v16 _buildItemProviders];
  }

  return v16;
}

- (HUScheduleRuleEditorItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_scheduleType_scheduleRule_scheduleBuilder_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUScheduleRuleEditorItemModule.m" lineNumber:59 description:{@"%s is unavailable; use %@ instead", "-[HUScheduleRuleEditorItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUScheduleRuleEditorItemModule *)self staticItemProvider];
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUScheduleRuleEditorSpecificDatesRuleSectionIdentifier"];
  v6 = MEMORY[0x277CBEB98];
  v7 = [(HUScheduleRuleEditorItemModule *)self editStartDatePeriodItem];
  v8 = [(HUScheduleRuleEditorItemModule *)self editEndDatePeriodItem];
  v9 = [v6 setWithObjects:{v7, v8, 0}];
  v10 = [v4 intersectsSet:v9];

  if (v10)
  {
    v11 = objc_opt_new();
    v12 = [(HUScheduleRuleEditorItemModule *)self editStartDatePeriodItem];
    [v11 na_safeAddObject:v12];

    v13 = [(HUScheduleRuleEditorItemModule *)self editEndDatePeriodItem];
    [v11 na_safeAddObject:v13];

    if ([(HUScheduleRuleEditorItemModule *)self showAsInlineModule])
    {
      v14 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_Dates_Title", @"HUScheduleRuleEditor_Dates_Title", 1);
      [v5 setHeaderTitle:v14];
    }

    [v5 setItems:v11];
  }

  v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUScheduleRuleEditorCustomScheduleRuleSectionIdentifier"];
  v16 = MEMORY[0x277CBEB98];
  v17 = [(HUScheduleRuleEditorItemModule *)self allDayItem];
  v18 = [(HUScheduleRuleEditorItemModule *)self editTimeOfDayItem];
  v19 = [(HUScheduleRuleEditorItemModule *)self editRecurrenceItem];
  v20 = [v16 setWithObjects:{v17, v18, v19, 0}];
  v21 = [v4 intersectsSet:v20];

  if (v21)
  {
    v22 = objc_opt_new();
    v23 = [(HUScheduleRuleEditorItemModule *)self allDayItem];
    [v22 na_safeAddObject:v23];

    v24 = [(HUScheduleRuleEditorItemModule *)self editTimeOfDayItem];
    [v22 na_safeAddObject:v24];

    v25 = [(HUScheduleRuleEditorItemModule *)self editRecurrenceItem];
    [v22 na_safeAddObject:v25];

    if ([(HUScheduleRuleEditorItemModule *)self showAsInlineModule])
    {
      v26 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_Times_Title", @"HUScheduleRuleEditor_Times_Title", 1);
      [v15 setHeaderTitle:v26];
    }

    [v15 setItems:v22];
  }

  v27 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUScheduleRuleEditorRemoveRuleSectionIdentifier"];
  v28 = [(HUScheduleRuleEditorItemModule *)self removeRuleItem];
  v29 = [v4 containsObject:v28];

  if (v29)
  {
    v30 = [(HUScheduleRuleEditorItemModule *)self removeRuleItem];
    v37[0] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    [v27 setItems:v31];
  }

  v32 = MEMORY[0x277D14778];
  v36[0] = v5;
  v36[1] = v15;
  v36[2] = v27;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v34 = [v32 filterSections:v33 toDisplayedItems:v4];

  return v34;
}

- (void)_buildItemProviders
{
  objc_initWeak(location, self);
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke;
  v38[3] = &unk_277DB7448;
  objc_copyWeak(&v39, location);
  v5 = [v4 initWithResultsBlock:v38];
  [(HUScheduleRuleEditorItemModule *)self setEditStartDatePeriodItem:v5];

  v6 = [(HUScheduleRuleEditorItemModule *)self editStartDatePeriodItem];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D14B38]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_2;
  v36[3] = &unk_277DB7448;
  objc_copyWeak(&v37, location);
  v8 = [v7 initWithResultsBlock:v36];
  [(HUScheduleRuleEditorItemModule *)self setEditEndDatePeriodItem:v8];

  v9 = [(HUScheduleRuleEditorItemModule *)self editEndDatePeriodItem];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_3;
  v34[3] = &unk_277DB7448;
  objc_copyWeak(&v35, location);
  v11 = [v10 initWithResultsBlock:v34];
  [(HUScheduleRuleEditorItemModule *)self setAllDayItem:v11];

  v12 = [(HUScheduleRuleEditorItemModule *)self allDayItem];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_4;
  v32[3] = &unk_277DB7448;
  objc_copyWeak(&v33, location);
  v14 = [v13 initWithResultsBlock:v32];
  [(HUScheduleRuleEditorItemModule *)self setEditTimeOfDayItem:v14];

  v15 = [(HUScheduleRuleEditorItemModule *)self editTimeOfDayItem];
  [v3 addObject:v15];

  v16 = objc_alloc(MEMORY[0x277D14B38]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_5;
  v30[3] = &unk_277DB7448;
  objc_copyWeak(&v31, location);
  v17 = [v16 initWithResultsBlock:v30];
  [(HUScheduleRuleEditorItemModule *)self setEditRecurrenceItem:v17];

  v18 = [(HUScheduleRuleEditorItemModule *)self editRecurrenceItem];
  [v3 addObject:v18];

  v19 = objc_alloc(MEMORY[0x277D14B38]);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_6;
  v28 = &unk_277DB7448;
  objc_copyWeak(&v29, location);
  v20 = [v19 initWithResultsBlock:&v25];
  [(HUScheduleRuleEditorItemModule *)self setRemoveRuleItem:v20, v25, v26, v27, v28];

  v21 = [(HUScheduleRuleEditorItemModule *)self removeRuleItem];
  [v3 addObject:v21];

  v22 = objc_alloc(MEMORY[0x277D14B40]);
  v23 = [MEMORY[0x277CBEB98] setWithArray:v3];
  v24 = [v22 initWithItems:v23];
  [(HUScheduleRuleEditorItemModule *)self setStaticItemProvider:v24];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);

  objc_destroyWeak(location);
}

id __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke(uint64_t a1)
{
  v27[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained scheduleType];
  v3 = v2 != 1;
  if (v2 == 1)
  {
    v5 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    v6 = [WeakRetained editedScheduleRule];
    v7 = [v6 yearDayRule];
    v8 = [v7 validFrom];
    v9 = [v5 isDateInToday:v8];

    if (v9)
    {
      v4 = HFLocalizedString();
    }

    else
    {
      v10 = [WeakRetained _datePeriodFormatter];
      v11 = [WeakRetained editedScheduleRule];
      v12 = [v11 yearDayRule];
      v13 = [v12 validFrom];
      v4 = [v10 stringFromDate:v13];
    }
  }

  else
  {
    v4 = &stru_2823E0EE8;
  }

  if ([WeakRetained showAsInlineModule])
  {
    v14 = [WeakRetained scheduleBuilder];
    v15 = [v14 rules];
    v16 = [v15 count];

    v3 = v2 != 1 || v16 > 1;
  }

  v18 = MEMORY[0x277D2C900];
  v26[0] = *MEMORY[0x277D13F60];
  v19 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_StartTime_Title", @"HUScheduleRuleEditor_StartTime_Title", 1);
  v20 = *MEMORY[0x277D13DC8];
  v27[0] = v19;
  v27[1] = @"Home.ScheduleRule.Editor.Starts";
  v21 = *MEMORY[0x277D13FB8];
  v26[1] = v20;
  v26[2] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v26[3] = *MEMORY[0x277D13E20];
  v27[2] = v22;
  v27[3] = v4;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v24 = [v18 futureWithResult:v23];

  return v24;
}

id __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_2(uint64_t a1)
{
  v27[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained scheduleType];
  v3 = v2 != 1;
  if (v2 == 1)
  {
    v5 = [MEMORY[0x277CBEAA8] distantFuture];
    v6 = [WeakRetained editedScheduleRule];
    v7 = [v6 yearDayRule];
    v8 = [v7 validUntil];
    v9 = [v5 isEqualToDate:v8];

    if (v9)
    {
      v4 = HFLocalizedString();
    }

    else
    {
      v10 = [WeakRetained _datePeriodFormatter];
      v11 = [WeakRetained editedScheduleRule];
      v12 = [v11 yearDayRule];
      v13 = [v12 validUntil];
      v4 = [v10 stringFromDate:v13];
    }
  }

  else
  {
    v4 = &stru_2823E0EE8;
  }

  if ([WeakRetained showAsInlineModule])
  {
    v14 = [WeakRetained scheduleBuilder];
    v15 = [v14 rules];
    v16 = [v15 count];

    v3 = v2 != 1 || v16 > 1;
  }

  v18 = MEMORY[0x277D2C900];
  v26[0] = *MEMORY[0x277D13F60];
  v19 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_EndTime_Title", @"HUScheduleRuleEditor_EndTime_Title", 1);
  v20 = *MEMORY[0x277D13DC8];
  v27[0] = v19;
  v27[1] = @"Home.ScheduleRule.Editor.Ends";
  v21 = *MEMORY[0x277D13FB8];
  v26[1] = v20;
  v26[2] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v26[3] = *MEMORY[0x277D13E20];
  v27[2] = v22;
  v27[3] = v4;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v24 = [v18 futureWithResult:v23];

  return v24;
}

id __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_3(uint64_t a1)
{
  v19[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained showAsInlineModule])
  {
    v2 = [WeakRetained scheduleBuilder];
    v3 = [v2 rules];
    v4 = [v3 count] > 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277D2C900];
  v18[0] = *MEMORY[0x277D13F60];
  v6 = HFLocalizedString();
  v19[0] = v6;
  v18[1] = *MEMORY[0x277D13FB8];
  v7 = MEMORY[0x277CCABB0];
  v8 = v4 || [WeakRetained scheduleType] != 2;
  v9 = [v7 numberWithInt:v8];
  v10 = *MEMORY[0x277D13DC8];
  v19[1] = v9;
  v19[2] = @"Home.ScheduleRule.Editor.AllDay";
  v11 = *MEMORY[0x277D14068];
  v18[2] = v10;
  v18[3] = v11;
  v12 = MEMORY[0x277CCABB0];
  v13 = [WeakRetained editedScheduleRule];
  [v13 isAllDayWeekDayRule];
  v14 = [v12 numberWithInteger:HFPrimaryStateFromBOOL()];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v16 = [v5 futureWithResult:v15];

  return v16;
}

id __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_4(uint64_t a1)
{
  v17[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained showAsInlineModule])
  {
    v2 = [WeakRetained scheduleBuilder];
    v3 = [v2 rules];
    v4 = [v3 count] > 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277D2C900];
  v16[0] = *MEMORY[0x277D13F60];
  v6 = 1;
  v7 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_Between", @"HUScheduleRuleEditor_Between", 1);
  v8 = *MEMORY[0x277D13DC8];
  v17[0] = v7;
  v17[1] = @"Home.ScheduleRule.Editor.Between";
  v9 = *MEMORY[0x277D13FB8];
  v16[1] = v8;
  v16[2] = v9;
  v10 = MEMORY[0x277CCABB0];
  if ((v4 & 1) != 0 || [WeakRetained scheduleType] != 2)
  {
    v11 = 0;
  }

  else
  {
    v4 = [WeakRetained editedScheduleRule];
    v6 = [v4 isAllDayWeekDayRule];
    v11 = 1;
  }

  v12 = [v10 numberWithInt:v6];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v14 = [v5 futureWithResult:v13];

  if (v11)
  {
  }

  return v14;
}

id __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_5(uint64_t a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained showAsInlineModule])
  {
    v2 = [WeakRetained scheduleBuilder];
    v3 = [v2 rules];
    v4 = [v3 count] > 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277D2C900];
  v16[0] = *MEMORY[0x277D13F60];
  v6 = 1;
  v7 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_Repeat", @"HUScheduleRuleEditor_Repeat", 1);
  v8 = *MEMORY[0x277D13DC8];
  v17[0] = v7;
  v17[1] = @"Home.ScheduleRule.Editor.Repeat";
  v9 = *MEMORY[0x277D13FB8];
  v16[1] = v8;
  v16[2] = v9;
  v10 = MEMORY[0x277CCABB0];
  if (!v4)
  {
    v6 = [WeakRetained scheduleType] != 2;
  }

  v11 = [v10 numberWithInt:v6];
  v17[2] = v11;
  v16[3] = *MEMORY[0x277D13E20];
  v12 = [WeakRetained _localizedNaturalLanguageStringForRecurrence];
  v17[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v14 = [v5 futureWithResult:v13];

  return v14;
}

id __53__HUScheduleRuleEditorItemModule__buildItemProviders__block_invoke_6(uint64_t a1)
{
  v22[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained scheduleBuilder];
  v4 = [v3 rules];
  v5 = [v4 count];
  v6 = [WeakRetained scheduleBuilder];
  v7 = [v6 minNumberOfRules];

  v8 = MEMORY[0x277D2C900];
  v21[0] = *MEMORY[0x277D13F60];
  if ([WeakRetained scheduleType] == 2)
  {
    v9 = @"HUScheduleRuleEditor_RemoveTimes";
  }

  else
  {
    v9 = @"HUScheduleRuleEditor_RemoveDates";
  }

  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  v11 = *MEMORY[0x277D13DC8];
  v22[0] = v10;
  v22[1] = @"Home.ScheduleRule.Editor.RemoveTimesOrDates";
  v12 = *MEMORY[0x277D13FB8];
  v21[1] = v11;
  v21[2] = v12;
  v13 = MEMORY[0x277CCABB0];
  v14 = [WeakRetained showAsInlineModule];
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v1 = [WeakRetained existingScheduleRule];
    if (v1)
    {
      v16 = v5 == v7;
    }

    else
    {
      v16 = 1;
    }

    v15 = v16;
  }

  v17 = [v13 numberWithInt:v15];
  v22[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v19 = [v8 futureWithResult:v18];

  if ((v14 & 1) == 0)
  {
  }

  return v19;
}

- (id)_localizedNaturalLanguageStringForRecurrence
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
  v5 = [v4 isWeekDayRule];

  if (v5)
  {
    v6 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
    v7 = [v6 weekDayRule];
    [v7 daysOfTheWeek];
    v8 = HMDaysOfTheWeekToDateComponents();

    v9 = [MEMORY[0x277CD1EB0] hf_recurrenceNaturalLanguageStringWithRecurrences:v8];
    v10 = v9;
    v11 = &stru_2823E0EE8;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;
  }

  else
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v16 = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ Not a weekDayRule. Unabled to determine natural language string for recurrence.", &v16, 0x16u);
    }

    v12 = &stru_2823E0EE8;
  }

  return v12;
}

- (void)updateScheduleBuilder:(id)a3
{
  v5 = a3;
  [(HUScheduleRuleEditorItemModule *)self setScheduleBuilder:v5];
  -[HUScheduleRuleEditorItemModule setScheduleType:](self, "setScheduleType:", [v5 estimatedScheduleType]);
  v6 = [v5 rules];

  v7 = [v6 allObjects];
  v8 = [v7 firstObject];
  [(HUScheduleRuleEditorItemModule *)self setEditedScheduleRule:v8];

  v9 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
  v10 = [v9 copy];
  [(HUScheduleRuleEditorItemModule *)self setExistingScheduleRule:v10];

  [(HUScheduleRuleEditorItemModule *)self setEditedStartTime:0];
  [(HUScheduleRuleEditorItemModule *)self setEditedEndTime:0];
  v11 = MEMORY[0x277D14788];
  v12 = [(HUScheduleRuleEditorItemModule *)self itemProviders];
  v15 = [v11 requestToReloadItemProviders:v12 senderSelector:a2];

  v13 = [(HFItemModule *)self itemUpdater];
  v14 = [v13 performItemUpdateRequest:v15];
}

- (BOOL)updateScheduleRuleStartDate:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
    v9 = [v8 yearDayRule];
    v10 = [v9 validFrom];
    v23 = 138413058;
    v24 = self;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Requesting to update start date from %@ to %@", &v23, 0x2Au);
  }

  v11 = objc_alloc(MEMORY[0x277CD1F48]);
  v12 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
  v13 = [v12 yearDayRule];
  v14 = [v13 validUntil];
  v15 = [v11 initWithValidFrom:v5 validUntil:v14];

  v16 = [objc_alloc(MEMORY[0x277D14A20]) initWithYearDayRule:v15];
  [(HUScheduleRuleEditorItemModule *)self setEditedScheduleRule:v16];
  v17 = MEMORY[0x277D14788];
  v18 = [(HUScheduleRuleEditorItemModule *)self itemProviders];
  v19 = [v17 requestToReloadItemProviders:v18 senderSelector:a2];

  v20 = [(HFItemModule *)self itemUpdater];
  v21 = [v20 performItemUpdateRequest:v19];

  return 1;
}

- (BOOL)updateScheduleRuleEndDate:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
    v9 = [v8 yearDayRule];
    v10 = [v9 validUntil];
    v23 = 138413058;
    v24 = self;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Requesting to update end date from %@ to %@", &v23, 0x2Au);
  }

  v11 = objc_alloc(MEMORY[0x277CD1F48]);
  v12 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
  v13 = [v12 yearDayRule];
  v14 = [v13 validFrom];
  v15 = [v11 initWithValidFrom:v14 validUntil:v5];

  v16 = [objc_alloc(MEMORY[0x277D14A20]) initWithYearDayRule:v15];
  [(HUScheduleRuleEditorItemModule *)self setEditedScheduleRule:v16];
  v17 = MEMORY[0x277D14788];
  v18 = [(HUScheduleRuleEditorItemModule *)self itemProviders];
  v19 = [v17 requestToReloadItemProviders:v18 senderSelector:a2];

  v20 = [(HFItemModule *)self itemUpdater];
  v21 = [v20 performItemUpdateRequest:v19];

  return 1;
}

- (BOOL)updateScheduleRuleStartTime:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
    v9 = [v8 weekDayRule];
    v10 = [v9 startTime];
    v12 = 138413058;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Requesting to update start time from %@ to %@", &v12, 0x2Au);
  }

  [(HUScheduleRuleEditorItemModule *)self setEditedStartTime:v5];
  return 1;
}

- (BOOL)updateScheduleRuleEndTime:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
    v9 = [v8 weekDayRule];
    v10 = [v9 endTime];
    v12 = 138413058;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Requesting to update end time from %@ to %@", &v12, 0x2Au);
  }

  [(HUScheduleRuleEditorItemModule *)self setEditedEndTime:v5];
  return 1;
}

- (BOOL)updateScheduleRuleRecurrences:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 hmf_isEmpty] & 1) == 0)
  {
    v8 = HMDaysOfTheWeekFromDateComponents();
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v11 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
      v12 = [v11 weekDayRule];
      [v12 daysOfTheWeek];
      v13 = HMDaysOfTheWeekToString();
      v14 = HMDaysOfTheWeekToString();
      *buf = 138413314;
      v32 = self;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v13;
      v37 = 2112;
      v38 = v14;
      v39 = 1024;
      v40 = 0;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating schedule days of the week from %@ to %@ | validatedWeekDays = %{BOOL}d", buf, 0x30u);
    }

    v15 = objc_alloc(MEMORY[0x277CD1F20]);
    v16 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
    v17 = [v16 weekDayRule];
    v18 = [v17 startTime];
    v19 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
    v20 = [v19 weekDayRule];
    [v20 endTime];
    v21 = v30 = a2;
    v22 = [v15 initWithStartTime:v18 endTime:v21 daysOfTheWeek:v8];

    v23 = [objc_alloc(MEMORY[0x277D14A20]) initWithWeekDayRule:v22];
    [(HUScheduleRuleEditorItemModule *)self setEditedScheduleRule:v23];
    v24 = MEMORY[0x277D14788];
    v25 = [(HUScheduleRuleEditorItemModule *)self itemProviders];
    v26 = [v24 requestToReloadItemProviders:v25 senderSelector:v30];

    v27 = [(HFItemModule *)self itemUpdater];
    v28 = [v27 performItemUpdateRequest:v26];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateAllDayToggle:(BOOL)a3
{
  v33 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [MEMORY[0x277CBEAB8] hf_componentsWithHour:0 minute:0];
    v6 = MEMORY[0x277CBEAB8];
    v7 = 23;
    v8 = 59;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAB8] hf_componentsWithHour:9 minute:0];
    v6 = MEMORY[0x277CBEAB8];
    v7 = 17;
    v8 = 0;
  }

  v9 = [v6 hf_componentsWithHour:v7 minute:v8];
  [(HUScheduleRuleEditorItemModule *)self updateScheduleRuleStartTime:v5];
  [(HUScheduleRuleEditorItemModule *)self updateScheduleRuleEndTime:v9];
  v10 = objc_alloc(MEMORY[0x277CD1F20]);
  v11 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
  v12 = [v11 weekDayRule];
  v13 = [v10 initWithStartTime:v5 endTime:v9 daysOfTheWeek:{objc_msgSend(v12, "daysOfTheWeek")}];

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    v25 = 138412802;
    v26 = self;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ New weekDay schedule rule will be %@", &v25, 0x20u);
  }

  v16 = [objc_alloc(MEMORY[0x277D14A20]) initWithWeekDayRule:v13];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    v19 = [(HUScheduleRuleEditorItemModule *)self editedScheduleRule];
    v25 = 138413058;
    v26 = self;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating from schedule rule %@ to %@", &v25, 0x2Au);
  }

  [(HUScheduleRuleEditorItemModule *)self setEditedScheduleRule:v16];
  v20 = MEMORY[0x277D14788];
  v21 = [(HUScheduleRuleEditorItemModule *)self itemProviders];
  v22 = [v20 requestToReloadItemProviders:v21 senderSelector:a2];

  v23 = [(HFItemModule *)self itemUpdater];
  v24 = [v23 performItemUpdateRequest:v22];
}

- (id)_datePeriodFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateStyle:2];
  [v2 setTimeStyle:0];

  return v2;
}

@end