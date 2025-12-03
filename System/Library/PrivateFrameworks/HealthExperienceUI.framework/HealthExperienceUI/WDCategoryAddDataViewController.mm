@interface WDCategoryAddDataViewController
- (BOOL)useSingleStartAndEndDate;
- (HKValueRange)selectedDateRange;
- (WDCategoryAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (id)_categoryCells;
- (id)_orderedTitlesForCategoryValuePicker;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)section;
- (int64_t)_defaultSelectedIndex;
- (int64_t)numberOfSections;
- (void)updateSavingEnabled;
- (void)validateDataWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation WDCategoryAddDataViewController

- (WDCategoryAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  v22.receiver = self;
  v22.super_class = WDCategoryAddDataViewController;
  v7 = [(WDAddDataViewController *)&v22 initWithDisplayType:type healthStore:store unitController:controller initialStartDate:date dateCache:cache];
  v8 = v7;
  if (v7)
  {
    if ([(WDCategoryAddDataViewController *)v7 useSingleStartAndEndDate])
    {
      oneMinuteBeforeEndOfDayMidnight = [(HKDateCache *)v8->super._dateCache oneMinuteBeforeEndOfDayMidnight];
      v10 = HABundle();
      v11 = [v10 localizedStringForKey:@"DATE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
      v12 = [WDAddDataManualEntryItem dateTimeItemWithMaximumDate:oneMinuteBeforeEndOfDayMidnight displayName:v11];
      dateEntryItem = v8->_dateEntryItem;
      v8->_dateEntryItem = v12;
    }

    else
    {
      useDuration = [(WDCategoryAddDataViewController *)v8 useDuration];
      oneMinuteBeforeEndOfDayMidnight2 = [(HKDateCache *)v8->super._dateCache oneMinuteBeforeEndOfDayMidnight];
      if (useDuration)
      {
        [WDAddDataManualEntryItem durationItemWithMaximumDate:oneMinuteBeforeEndOfDayMidnight2];
      }

      else
      {
        [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:oneMinuteBeforeEndOfDayMidnight2];
      }
      v16 = ;
      v17 = v8->_dateEntryItem;
      v8->_dateEntryItem = v16;

      [(WDAddDataManualEntryItem *)v8->_dateEntryItem setDelegate:v8];
    }

    _orderedTitlesForCategoryValuePicker = [(WDCategoryAddDataViewController *)v8 _orderedTitlesForCategoryValuePicker];
    if ([_orderedTitlesForCategoryValuePicker count])
    {
      v19 = [WDAddDataManualEntryItem multiSelectItemWithEntries:_orderedTitlesForCategoryValuePicker selectedIndex:[(WDCategoryAddDataViewController *)v8 _defaultSelectedIndex]];
      categoryValueEntryItem = v8->_categoryValueEntryItem;
      v8->_categoryValueEntryItem = v19;
    }
  }

  return v8;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WDCategoryAddDataViewController;
  [(WDAddDataViewController *)&v3 viewDidLoad];
  [(WDCategoryAddDataViewController *)self updateSavingEnabled];
}

- (id)_orderedTitlesForCategoryValuePicker
{
  v17 = *MEMORY[0x1E69E9840];
  hk_enumeratedValueLabels = [(HKDisplayType *)self->super._displayType hk_enumeratedValueLabels];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  wd_valueOrderForAddDataViewController = [(HKDisplayType *)self->super._displayType wd_valueOrderForAddDataViewController];
  v6 = [wd_valueOrderForAddDataViewController countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(wd_valueOrderForAddDataViewController);
        }

        v10 = [hk_enumeratedValueLabels objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [wd_valueOrderForAddDataViewController countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int64_t)_defaultSelectedIndex
{
  wd_defaultValueForAddDataViewController = [(HKDisplayType *)self->super._displayType wd_defaultValueForAddDataViewController];
  if (wd_defaultValueForAddDataViewController)
  {
    wd_valueOrderForAddDataViewController = [(HKDisplayType *)self->super._displayType wd_valueOrderForAddDataViewController];
    v5 = [wd_valueOrderForAddDataViewController indexOfObject:wd_defaultValueForAddDataViewController];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)useSingleStartAndEndDate
{
  displayTypeIdentifier = [(HKDisplayType *)self->super._displayType displayTypeIdentifier];
  result = 1;
  if ((displayTypeIdentifier - 91) > 6 || ((1 << (displayTypeIdentifier - 91)) & 0x63) == 0)
  {
    v5 = displayTypeIdentifier - 236;
    v6 = v5 > 8;
    v7 = (1 << v5) & 0x181;
    if (v6 || v7 == 0)
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)numberOfSections
{
  if ([(WDCategoryAddDataViewController *)self _hasCategoryValueEntryItem])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)manualEntryItemsForSection:(int64_t)section
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (![(WDCategoryAddDataViewController *)self _hasCategoryValueEntryItem])
  {
    dateEntryItem = self->_dateEntryItem;
    p_dateEntryItem = &dateEntryItem;
    goto LABEL_7;
  }

  if (!section)
  {
    categoryValueEntryItem = self->_categoryValueEntryItem;
    p_dateEntryItem = &categoryValueEntryItem;
    goto LABEL_7;
  }

  if (section == 1)
  {
    v10[0] = self->_dateEntryItem;
    p_dateEntryItem = v10;
LABEL_7:
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_dateEntryItem count:{1, dateEntryItem, categoryValueEntryItem, v10[0]}];
    goto LABEL_8;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v6;
}

- (id)generateHKObjects
{
  v17[1] = *MEMORY[0x1E69E9840];
  selectedDateRange = [(WDCategoryAddDataViewController *)self selectedDateRange];
  generateValue = [(WDAddDataManualEntryItem *)self->_categoryValueEntryItem generateValue];
  integerValue = [generateValue integerValue];

  if ([(WDCategoryAddDataViewController *)self _hasCategoryValueEntryItem])
  {
    wd_valueOrderForAddDataViewController = [(HKDisplayType *)self->super._displayType wd_valueOrderForAddDataViewController];
    v7 = [wd_valueOrderForAddDataViewController objectAtIndexedSubscript:integerValue];
    integerValue2 = [v7 integerValue];
  }

  else
  {
    integerValue2 = 0;
  }

  defaultMetadata = [(WDAddDataViewController *)self defaultMetadata];
  v10 = MEMORY[0x1E696BF88];
  sampleType = [(HKDisplayType *)self->super._displayType sampleType];
  startDate = [selectedDateRange startDate];
  endDate = [selectedDateRange endDate];
  v14 = [v10 categorySampleWithType:sampleType value:integerValue2 startDate:startDate endDate:endDate metadata:defaultMetadata];

  v17[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  return v15;
}

- (HKValueRange)selectedDateRange
{
  useSingleStartAndEndDate = [(WDCategoryAddDataViewController *)self useSingleStartAndEndDate];
  generateValue = [(WDAddDataManualEntryItem *)self->_dateEntryItem generateValue];
  if (useSingleStartAndEndDate)
  {
    v5 = [MEMORY[0x1E69A4520] valueRangeWithMinValue:generateValue maxValue:generateValue];

    generateValue = v5;
  }

  return generateValue;
}

- (void)validateDataWithCompletion:(id)completion
{
  completionCopy = completion;
  sampleType = [(HKDisplayType *)self->super._displayType sampleType];
  if (-[WDCategoryAddDataViewController useSingleStartAndEndDate](self, "useSingleStartAndEndDate") || ![sampleType isMaximumDurationRestricted])
  {
    (*(completionCopy + 2))(completionCopy, 1, 0, 0);
  }

  else
  {
    selectedDateRange = [(WDCategoryAddDataViewController *)self selectedDateRange];
    startDate = [selectedDateRange startDate];
    endDate = [selectedDateRange endDate];
    [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:startDate endDate:endDate competion:completionCopy];
  }
}

- (void)updateSavingEnabled
{
  if (![(WDCategoryAddDataViewController *)self useSingleStartAndEndDate])
  {
    selectedDateRange = [(WDCategoryAddDataViewController *)self selectedDateRange];
    v17 = selectedDateRange;
    if (!selectedDateRange || (([selectedDateRange endDate], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "startDate"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "timeIntervalSinceDate:", v5), v7 = v6, v5, v4, validationController = self->super._validationController, -[HKDisplayType sampleType](self->super._displayType, "sampleType"), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[HKManualEntryValidationController validateMinimumAllowedDuration:ofType:](validationController, "validateMinimumAllowedDuration:ofType:", v9, v7), v9, v11 = self->super._validationController, -[HKDisplayType sampleType](self->super._displayType, "sampleType"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[HKManualEntryValidationController validateMaximumAllowedDuration:ofType:](v11, "validateMaximumAllowedDuration:ofType:", v12, v7), v12, v10 != 2) ? (v14 = v13 == 2) : (v14 = 1), v14))
    {
      selfCopy2 = self;
      v16 = 0;
    }

    else
    {
      selfCopy2 = self;
      v16 = 1;
    }

    [(WDAddDataViewController *)selfCopy2 setSavingEnabled:v16];
  }
}

- (id)_categoryCells
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end