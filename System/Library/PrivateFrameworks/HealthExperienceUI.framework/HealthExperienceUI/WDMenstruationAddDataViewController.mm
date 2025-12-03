@interface WDMenstruationAddDataViewController
- (WDMenstruationAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (id)defaultMetadata;
- (id)manualEntryItemsForSection:(int64_t)section;
- (id)manualEntrySpinner:(id)spinner titleForRow:(int64_t)row;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation WDMenstruationAddDataViewController

- (WDMenstruationAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  v14.receiver = self;
  v14.super_class = WDMenstruationAddDataViewController;
  v7 = [(WDCategoryAddDataViewController *)&v14 initWithDisplayType:type healthStore:store unitController:controller initialStartDate:date dateCache:cache];
  if (v7)
  {
    v8 = [WDAddDataManualEntrySpinner alloc];
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v9 localizedStringForKey:*MEMORY[0x1E696BB28] value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v11 = [(WDAddDataManualEntrySpinner *)v8 initWithDisplayName:v10];
    isStartOfCycleEntryItem = v7->_isStartOfCycleEntryItem;
    v7->_isStartOfCycleEntryItem = v11;

    [(WDAddDataManualEntrySpinner *)v7->_isStartOfCycleEntryItem setDataSource:v7];
  }

  return v7;
}

- (id)manualEntryItemsForSection:(int64_t)section
{
  v10[1] = *MEMORY[0x1E69E9840];
  switch(section)
  {
    case 2:
      dateEntryItem = [(WDCategoryAddDataViewController *)self dateEntryItem];
      v8 = dateEntryItem;
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v8;
      goto LABEL_7;
    case 1:
      isStartOfCycleEntryItem = self->_isStartOfCycleEntryItem;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&isStartOfCycleEntryItem count:1];
      goto LABEL_9;
    case 0:
      dateEntryItem = [(WDCategoryAddDataViewController *)self categoryValueEntryItem];
      v10[0] = dateEntryItem;
      v4 = MEMORY[0x1E695DEC8];
      v5 = v10;
LABEL_7:
      v6 = [v4 arrayWithObjects:v5 count:{1, v8}];

      goto LABEL_9;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_9:

  return v6;
}

- (id)defaultMetadata
{
  v10.receiver = self;
  v10.super_class = WDMenstruationAddDataViewController;
  defaultMetadata = [(WDAddDataViewController *)&v10 defaultMetadata];
  v4 = defaultMetadata;
  if (!defaultMetadata)
  {
    defaultMetadata = MEMORY[0x1E695E0F8];
  }

  v5 = [defaultMetadata mutableCopy];

  generateValue = [(WDAddDataManualEntrySpinner *)self->_isStartOfCycleEntryItem generateValue];
  integerValue = [generateValue integerValue];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:integerValue == 1];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696BB28]];

  return v5;
}

- (id)manualEntrySpinner:(id)spinner titleForRow:(int64_t)row
{
  v5 = HABundle();
  v6 = v5;
  if (row == 1)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F3823B88 table:@"AddDataLocalization"];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v7.receiver = self;
    v7.super_class = WDMenstruationAddDataViewController;
    v4 = [(WDMenstruationAddDataViewController *)&v7 tableView:view titleForHeaderInSection:?];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v4 = [v5 localizedStringForKey:@"MENSTRUAL_FLOW" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
  }

  return v4;
}

@end