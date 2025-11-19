@interface WDAddDataManualEntryItem
+ (id)dateItemWithMaximumDate:(id)a3;
+ (id)dateTimeItemWithMaximumDate:(id)a3 highlightWhenEditing:(BOOL)a4 displayName:(id)a5;
+ (id)durationItemWithMaximumDate:(id)a3;
+ (id)heightPickerItemWithFeetUnitString:(id)a3 inchUnitString:(id)a4;
+ (id)multiSelectItemWithEntries:(id)a3 selectedIndex:(int64_t)a4;
+ (id)numericItemWithManualEntryType:(unint64_t)a3 numberFormatter:(id)a4;
+ (id)timeItemWithMaximumDate:(id)a3;
+ (id)twoPartDateRangeItemWithMaximumEndDate:(id)a3;
+ (id)twoPartDateTimeItemWithMaximumDate:(id)a3;
- (WDAddDataManualEntryItemDelegate)delegate;
- (id)_createHXUIInlineDatePickerTableViewCellWithTitle:(id)a3 datePickerMode:(int64_t)a4 maxDate:(id)a5;
- (id)_createHXUIInlinePickerTableViewCellWithTitle:(id)a3;
- (id)_createUITableViewCell;
- (id)_createWDManualDataEntryTableViewCellWithDisplayName:(id)a3 unitName:(id)a4 entryType:(unint64_t)a5 highlightWhenEditing:(BOOL)a6;
- (id)generateValue;
- (id)tableViewCells;
- (void)_didUpdateValue;
- (void)_disambiguateDateComponents:(id)a3 withCompletion:(id)a4;
- (void)cellForItemTapped:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation WDAddDataManualEntryItem

+ (id)dateItemWithMaximumDate:(id)a3
{
  v3 = a3;
  v4 = [_WDDateBasedAddDataManualEntryItem alloc];
  v5 = HABundle();
  v6 = [v5 localizedStringForKey:@"DATE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v7 = [(_WDDateBasedAddDataManualEntryItem *)v4 initWithMaximumDate:v3 highlightWhenEditing:0 datePickerMode:1 displayName:v6];

  return v7;
}

+ (id)timeItemWithMaximumDate:(id)a3
{
  v3 = a3;
  v4 = [_WDDateBasedAddDataManualEntryItem alloc];
  v5 = HABundle();
  v6 = [v5 localizedStringForKey:@"TIME" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v7 = [(_WDDateBasedAddDataManualEntryItem *)v4 initWithMaximumDate:v3 highlightWhenEditing:0 datePickerMode:0 displayName:v6];

  return v7;
}

+ (id)dateTimeItemWithMaximumDate:(id)a3 highlightWhenEditing:(BOOL)a4 displayName:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [[_WDDateBasedAddDataManualEntryItem alloc] initWithMaximumDate:v8 highlightWhenEditing:v5 datePickerMode:2 displayName:v7];

  return v9;
}

+ (id)twoPartDateTimeItemWithMaximumDate:(id)a3
{
  v3 = a3;
  v4 = [[_WDTwoPartDateTimeManualEntryItem alloc] initWithMaximumDate:v3];

  return v4;
}

+ (id)twoPartDateRangeItemWithMaximumEndDate:(id)a3
{
  v3 = a3;
  v4 = [[_WDTwoPartDateRangeManualEntryItem alloc] initWithMaximumEndDate:v3];

  return v4;
}

+ (id)durationItemWithMaximumDate:(id)a3
{
  v3 = a3;
  v4 = [[_WDDateWithDurationManualEntryItem alloc] initWithMaximumDate:v3];

  return v4;
}

+ (id)numericItemWithManualEntryType:(unint64_t)a3 numberFormatter:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(_WDNumberBasedAddDataManualEntryItem);
  [(_WDNumberBasedAddDataManualEntryItem *)v6 setManualEntryType:a3];
  [(_WDNumberBasedAddDataManualEntryItem *)v6 setNumberFormatter:v5];

  return v6;
}

+ (id)multiSelectItemWithEntries:(id)a3 selectedIndex:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_WDMultiSelectManualEntryItem);
  [(_WDMultiSelectManualEntryItem *)v6 setTitles:v5];

  [(_WDMultiSelectManualEntryItem *)v6 setSelectedIndex:a4];

  return v6;
}

+ (id)heightPickerItemWithFeetUnitString:(id)a3 inchUnitString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_WDHeightPickerManualEntryItem alloc] initWithDisplayName:v6];
  [(_WDHeightPickerManualEntryItem *)v7 setFeetUnitString:v6];

  [(_WDHeightPickerManualEntryItem *)v7 setInchUnitString:v5];

  return v7;
}

- (id)_createUITableViewCell
{
  v2 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];

  return v2;
}

- (id)_createWDManualDataEntryTableViewCellWithDisplayName:(id)a3 unitName:(id)a4 entryType:(unint64_t)a5 highlightWhenEditing:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a3;
  v11 = [[WDManualDataEntryTableViewCell alloc] initWithDisplayName:v10 unitName:v9 dataEntryType:a5];

  [(WDManualDataEntryTableViewCell *)v11 setShouldHighlightWhenEditing:v6];

  return v11;
}

- (id)_createHXUIInlineDatePickerTableViewCellWithTitle:(id)a3 datePickerMode:(int64_t)a4 maxDate:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[HXUIInlineDatePickerTableViewCell alloc] initWithTitle:v8 datePickerMode:a4 maxDate:v7];

  return v9;
}

- (id)_createHXUIInlinePickerTableViewCellWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[HXUIInlinePickerTableViewCell alloc] initWithTitle:v3];

  return v4;
}

- (void)_didUpdateValue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained manualEntryItemDidUpdate:self];
}

- (void)_disambiguateDateComponents:(id)a3 withCompletion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 hk_disambiguatedDSTDatesForComponents:v6];
  if ([v9 count] == 1)
  {
    v10 = [v9 firstObject];
    v7[2](v7, v10);
  }

  else
  {
    v24 = self;
    v25 = v8;
    v26 = v6;
    v11 = v7;
    v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v13 setDateStyle:3];
    [v13 setTimeStyle:3];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v9;
    v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = MEMORY[0x1E69DC648];
          v20 = [v13 stringFromDate:v18];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __71__WDAddDataManualEntryItem__disambiguateDateComponents_withCompletion___block_invoke;
          v28[3] = &unk_1E7EEB1D8;
          v21 = v11;
          v28[4] = v18;
          v29 = v21;
          v22 = [v19 actionWithTitle:v20 style:0 handler:v28];

          [v12 addAction:v22];
        }

        v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    v23 = [(WDAddDataManualEntryItem *)v24 delegate];
    [v23 presentViewController:v12 animated:1 completion:0];

    v8 = v25;
    v6 = v26;
    v7 = v11;
  }
}

- (void)setValue:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v5 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = self;
    _os_log_impl(&dword_1B9F07000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ has been called on %{public}@, which does not implement this method. This is probably a mistake.", &v7, 0x16u);
  }
}

- (void)cellForItemTapped:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 beginEditing];
  }
}

- (WDAddDataManualEntryItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)generateValue
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)tableViewCells
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x1E695E0F0];
}

@end