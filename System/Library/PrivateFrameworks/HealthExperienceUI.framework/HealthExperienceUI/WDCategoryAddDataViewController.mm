@interface WDCategoryAddDataViewController
- (BOOL)useSingleStartAndEndDate;
- (HKValueRange)selectedDateRange;
- (WDCategoryAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7;
- (id)_categoryCells;
- (id)_orderedTitlesForCategoryValuePicker;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)a3;
- (int64_t)_defaultSelectedIndex;
- (int64_t)numberOfSections;
- (void)updateSavingEnabled;
- (void)validateDataWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation WDCategoryAddDataViewController

- (WDCategoryAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7
{
  v22.receiver = self;
  v22.super_class = WDCategoryAddDataViewController;
  v7 = [(WDAddDataViewController *)&v22 initWithDisplayType:a3 healthStore:a4 unitController:a5 initialStartDate:a6 dateCache:a7];
  v8 = v7;
  if (v7)
  {
    if ([(WDCategoryAddDataViewController *)v7 useSingleStartAndEndDate])
    {
      v9 = [(HKDateCache *)v8->super._dateCache oneMinuteBeforeEndOfDayMidnight];
      v10 = HABundle();
      v11 = [v10 localizedStringForKey:@"DATE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
      v12 = [WDAddDataManualEntryItem dateTimeItemWithMaximumDate:v9 displayName:v11];
      dateEntryItem = v8->_dateEntryItem;
      v8->_dateEntryItem = v12;
    }

    else
    {
      v14 = [(WDCategoryAddDataViewController *)v8 useDuration];
      v15 = [(HKDateCache *)v8->super._dateCache oneMinuteBeforeEndOfDayMidnight];
      if (v14)
      {
        [WDAddDataManualEntryItem durationItemWithMaximumDate:v15];
      }

      else
      {
        [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:v15];
      }
      v16 = ;
      v17 = v8->_dateEntryItem;
      v8->_dateEntryItem = v16;

      [(WDAddDataManualEntryItem *)v8->_dateEntryItem setDelegate:v8];
    }

    v18 = [(WDCategoryAddDataViewController *)v8 _orderedTitlesForCategoryValuePicker];
    if ([v18 count])
    {
      v19 = [WDAddDataManualEntryItem multiSelectItemWithEntries:v18 selectedIndex:[(WDCategoryAddDataViewController *)v8 _defaultSelectedIndex]];
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
  v3 = [(HKDisplayType *)self->super._displayType hk_enumeratedValueLabels];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HKDisplayType *)self->super._displayType wd_valueOrderForAddDataViewController];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [v3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int64_t)_defaultSelectedIndex
{
  v3 = [(HKDisplayType *)self->super._displayType wd_defaultValueForAddDataViewController];
  if (v3)
  {
    v4 = [(HKDisplayType *)self->super._displayType wd_valueOrderForAddDataViewController];
    v5 = [v4 indexOfObject:v3];

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
  v2 = [(HKDisplayType *)self->super._displayType displayTypeIdentifier];
  result = 1;
  if ((v2 - 91) > 6 || ((1 << (v2 - 91)) & 0x63) == 0)
  {
    v5 = v2 - 236;
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

- (id)manualEntryItemsForSection:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (![(WDCategoryAddDataViewController *)self _hasCategoryValueEntryItem])
  {
    dateEntryItem = self->_dateEntryItem;
    p_dateEntryItem = &dateEntryItem;
    goto LABEL_7;
  }

  if (!a3)
  {
    categoryValueEntryItem = self->_categoryValueEntryItem;
    p_dateEntryItem = &categoryValueEntryItem;
    goto LABEL_7;
  }

  if (a3 == 1)
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
  v3 = [(WDCategoryAddDataViewController *)self selectedDateRange];
  v4 = [(WDAddDataManualEntryItem *)self->_categoryValueEntryItem generateValue];
  v5 = [v4 integerValue];

  if ([(WDCategoryAddDataViewController *)self _hasCategoryValueEntryItem])
  {
    v6 = [(HKDisplayType *)self->super._displayType wd_valueOrderForAddDataViewController];
    v7 = [v6 objectAtIndexedSubscript:v5];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(WDAddDataViewController *)self defaultMetadata];
  v10 = MEMORY[0x1E696BF88];
  v11 = [(HKDisplayType *)self->super._displayType sampleType];
  v12 = [v3 startDate];
  v13 = [v3 endDate];
  v14 = [v10 categorySampleWithType:v11 value:v8 startDate:v12 endDate:v13 metadata:v9];

  v17[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  return v15;
}

- (HKValueRange)selectedDateRange
{
  v3 = [(WDCategoryAddDataViewController *)self useSingleStartAndEndDate];
  v4 = [(WDAddDataManualEntryItem *)self->_dateEntryItem generateValue];
  if (v3)
  {
    v5 = [MEMORY[0x1E69A4520] valueRangeWithMinValue:v4 maxValue:v4];

    v4 = v5;
  }

  return v4;
}

- (void)validateDataWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(HKDisplayType *)self->super._displayType sampleType];
  if (-[WDCategoryAddDataViewController useSingleStartAndEndDate](self, "useSingleStartAndEndDate") || ![v4 isMaximumDurationRestricted])
  {
    (*(v8 + 2))(v8, 1, 0, 0);
  }

  else
  {
    v5 = [(WDCategoryAddDataViewController *)self selectedDateRange];
    v6 = [v5 startDate];
    v7 = [v5 endDate];
    [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:v6 endDate:v7 competion:v8];
  }
}

- (void)updateSavingEnabled
{
  if (![(WDCategoryAddDataViewController *)self useSingleStartAndEndDate])
  {
    v3 = [(WDCategoryAddDataViewController *)self selectedDateRange];
    v17 = v3;
    if (!v3 || (([v3 endDate], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "startDate"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "timeIntervalSinceDate:", v5), v7 = v6, v5, v4, validationController = self->super._validationController, -[HKDisplayType sampleType](self->super._displayType, "sampleType"), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[HKManualEntryValidationController validateMinimumAllowedDuration:ofType:](validationController, "validateMinimumAllowedDuration:ofType:", v9, v7), v9, v11 = self->super._validationController, -[HKDisplayType sampleType](self->super._displayType, "sampleType"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[HKManualEntryValidationController validateMaximumAllowedDuration:ofType:](v11, "validateMaximumAllowedDuration:ofType:", v12, v7), v12, v10 != 2) ? (v14 = v13 == 2) : (v14 = 1), v14))
    {
      v15 = self;
      v16 = 0;
    }

    else
    {
      v15 = self;
      v16 = 1;
    }

    [(WDAddDataViewController *)v15 setSavingEnabled:v16];
  }
}

- (id)_categoryCells
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end