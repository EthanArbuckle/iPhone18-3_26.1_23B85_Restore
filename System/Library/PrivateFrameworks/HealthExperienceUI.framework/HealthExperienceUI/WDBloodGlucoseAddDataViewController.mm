@interface WDBloodGlucoseAddDataViewController
- (WDAddDataManualEntrySpinner)mealTimeEntryItem;
- (id)defaultMetadata;
- (id)manualEntryItemsForSection:(int64_t)section;
- (id)manualEntrySpinner:(id)spinner titleForRow:(int64_t)row;
@end

@implementation WDBloodGlucoseAddDataViewController

- (WDAddDataManualEntrySpinner)mealTimeEntryItem
{
  mealTimeEntryItem = self->_mealTimeEntryItem;
  if (!mealTimeEntryItem)
  {
    v4 = [WDAddDataManualEntrySpinner alloc];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:*MEMORY[0x1E696BA58] value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v7 = [(WDAddDataManualEntrySpinner *)v4 initWithDisplayName:v6];
    v8 = self->_mealTimeEntryItem;
    self->_mealTimeEntryItem = v7;

    [(WDAddDataManualEntrySpinner *)self->_mealTimeEntryItem setDataSource:self];
    mealTimeEntryItem = self->_mealTimeEntryItem;
  }

  return mealTimeEntryItem;
}

- (id)defaultMetadata
{
  v11.receiver = self;
  v11.super_class = WDBloodGlucoseAddDataViewController;
  defaultMetadata = [(WDAddDataViewController *)&v11 defaultMetadata];
  v4 = defaultMetadata;
  if (!defaultMetadata)
  {
    defaultMetadata = MEMORY[0x1E695E0F8];
  }

  v5 = [defaultMetadata mutableCopy];

  mealTimeEntryItem = [(WDBloodGlucoseAddDataViewController *)self mealTimeEntryItem];
  generateValue = [mealTimeEntryItem generateValue];
  integerValue = [generateValue integerValue];

  if (integerValue != *MEMORY[0x1E696C698])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696BA58]];
  }

  return v5;
}

- (id)manualEntryItemsForSection:(int64_t)section
{
  v9.receiver = self;
  v9.super_class = WDBloodGlucoseAddDataViewController;
  v4 = [(WDDisplayTypeAddDataViewController *)&v9 manualEntryItemsForSection:section];
  v5 = [v4 mutableCopy];

  mealTimeEntryItem = [(WDBloodGlucoseAddDataViewController *)self mealTimeEntryItem];
  [v5 addObject:mealTimeEntryItem];

  v7 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];

  return v7;
}

- (id)manualEntrySpinner:(id)spinner titleForRow:(int64_t)row
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MEAL_TIME_%zd", row];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F3823B88 table:@"HealthUI-Localizable"];

  return v6;
}

@end