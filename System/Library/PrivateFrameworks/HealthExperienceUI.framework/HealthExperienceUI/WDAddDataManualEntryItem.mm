@interface WDAddDataManualEntryItem
+ (id)dateItemWithMaximumDate:(id)date;
+ (id)dateTimeItemWithMaximumDate:(id)date highlightWhenEditing:(BOOL)editing displayName:(id)name;
+ (id)durationItemWithMaximumDate:(id)date;
+ (id)heightPickerItemWithFeetUnitString:(id)string inchUnitString:(id)unitString;
+ (id)multiSelectItemWithEntries:(id)entries selectedIndex:(int64_t)index;
+ (id)numericItemWithManualEntryType:(unint64_t)type numberFormatter:(id)formatter;
+ (id)timeItemWithMaximumDate:(id)date;
+ (id)twoPartDateRangeItemWithMaximumEndDate:(id)date;
+ (id)twoPartDateTimeItemWithMaximumDate:(id)date;
- (WDAddDataManualEntryItemDelegate)delegate;
- (id)_createHXUIInlineDatePickerTableViewCellWithTitle:(id)title datePickerMode:(int64_t)mode maxDate:(id)date;
- (id)_createHXUIInlinePickerTableViewCellWithTitle:(id)title;
- (id)_createUITableViewCell;
- (id)_createWDManualDataEntryTableViewCellWithDisplayName:(id)name unitName:(id)unitName entryType:(unint64_t)type highlightWhenEditing:(BOOL)editing;
- (id)generateValue;
- (id)tableViewCells;
- (void)_didUpdateValue;
- (void)_disambiguateDateComponents:(id)components withCompletion:(id)completion;
- (void)cellForItemTapped:(id)tapped;
- (void)setValue:(id)value;
@end

@implementation WDAddDataManualEntryItem

+ (id)dateItemWithMaximumDate:(id)date
{
  dateCopy = date;
  v4 = [_WDDateBasedAddDataManualEntryItem alloc];
  v5 = HABundle();
  v6 = [v5 localizedStringForKey:@"DATE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v7 = [(_WDDateBasedAddDataManualEntryItem *)v4 initWithMaximumDate:dateCopy highlightWhenEditing:0 datePickerMode:1 displayName:v6];

  return v7;
}

+ (id)timeItemWithMaximumDate:(id)date
{
  dateCopy = date;
  v4 = [_WDDateBasedAddDataManualEntryItem alloc];
  v5 = HABundle();
  v6 = [v5 localizedStringForKey:@"TIME" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v7 = [(_WDDateBasedAddDataManualEntryItem *)v4 initWithMaximumDate:dateCopy highlightWhenEditing:0 datePickerMode:0 displayName:v6];

  return v7;
}

+ (id)dateTimeItemWithMaximumDate:(id)date highlightWhenEditing:(BOOL)editing displayName:(id)name
{
  editingCopy = editing;
  nameCopy = name;
  dateCopy = date;
  v9 = [[_WDDateBasedAddDataManualEntryItem alloc] initWithMaximumDate:dateCopy highlightWhenEditing:editingCopy datePickerMode:2 displayName:nameCopy];

  return v9;
}

+ (id)twoPartDateTimeItemWithMaximumDate:(id)date
{
  dateCopy = date;
  v4 = [[_WDTwoPartDateTimeManualEntryItem alloc] initWithMaximumDate:dateCopy];

  return v4;
}

+ (id)twoPartDateRangeItemWithMaximumEndDate:(id)date
{
  dateCopy = date;
  v4 = [[_WDTwoPartDateRangeManualEntryItem alloc] initWithMaximumEndDate:dateCopy];

  return v4;
}

+ (id)durationItemWithMaximumDate:(id)date
{
  dateCopy = date;
  v4 = [[_WDDateWithDurationManualEntryItem alloc] initWithMaximumDate:dateCopy];

  return v4;
}

+ (id)numericItemWithManualEntryType:(unint64_t)type numberFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = objc_alloc_init(_WDNumberBasedAddDataManualEntryItem);
  [(_WDNumberBasedAddDataManualEntryItem *)v6 setManualEntryType:type];
  [(_WDNumberBasedAddDataManualEntryItem *)v6 setNumberFormatter:formatterCopy];

  return v6;
}

+ (id)multiSelectItemWithEntries:(id)entries selectedIndex:(int64_t)index
{
  entriesCopy = entries;
  v6 = objc_alloc_init(_WDMultiSelectManualEntryItem);
  [(_WDMultiSelectManualEntryItem *)v6 setTitles:entriesCopy];

  [(_WDMultiSelectManualEntryItem *)v6 setSelectedIndex:index];

  return v6;
}

+ (id)heightPickerItemWithFeetUnitString:(id)string inchUnitString:(id)unitString
{
  unitStringCopy = unitString;
  stringCopy = string;
  v7 = [[_WDHeightPickerManualEntryItem alloc] initWithDisplayName:stringCopy];
  [(_WDHeightPickerManualEntryItem *)v7 setFeetUnitString:stringCopy];

  [(_WDHeightPickerManualEntryItem *)v7 setInchUnitString:unitStringCopy];

  return v7;
}

- (id)_createUITableViewCell
{
  v2 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];

  return v2;
}

- (id)_createWDManualDataEntryTableViewCellWithDisplayName:(id)name unitName:(id)unitName entryType:(unint64_t)type highlightWhenEditing:(BOOL)editing
{
  editingCopy = editing;
  unitNameCopy = unitName;
  nameCopy = name;
  v11 = [[WDManualDataEntryTableViewCell alloc] initWithDisplayName:nameCopy unitName:unitNameCopy dataEntryType:type];

  [(WDManualDataEntryTableViewCell *)v11 setShouldHighlightWhenEditing:editingCopy];

  return v11;
}

- (id)_createHXUIInlineDatePickerTableViewCellWithTitle:(id)title datePickerMode:(int64_t)mode maxDate:(id)date
{
  dateCopy = date;
  titleCopy = title;
  v9 = [[HXUIInlineDatePickerTableViewCell alloc] initWithTitle:titleCopy datePickerMode:mode maxDate:dateCopy];

  return v9;
}

- (id)_createHXUIInlinePickerTableViewCellWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[HXUIInlinePickerTableViewCell alloc] initWithTitle:titleCopy];

  return v4;
}

- (void)_didUpdateValue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained manualEntryItemDidUpdate:self];
}

- (void)_disambiguateDateComponents:(id)components withCompletion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  completionCopy = completion;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar hk_disambiguatedDSTDatesForComponents:componentsCopy];
  if ([v9 count] == 1)
  {
    firstObject = [v9 firstObject];
    completionCopy[2](completionCopy, firstObject);
  }

  else
  {
    selfCopy = self;
    v25 = currentCalendar;
    v26 = componentsCopy;
    v11 = completionCopy;
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

    delegate = [(WDAddDataManualEntryItem *)selfCopy delegate];
    [delegate presentViewController:v12 animated:1 completion:0];

    currentCalendar = v25;
    componentsCopy = v26;
    completionCopy = v11;
  }
}

- (void)setValue:(id)value
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
    selfCopy = self;
    _os_log_impl(&dword_1B9F07000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ has been called on %{public}@, which does not implement this method. This is probably a mistake.", &v7, 0x16u);
  }
}

- (void)cellForItemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [tappedCopy beginEditing];
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