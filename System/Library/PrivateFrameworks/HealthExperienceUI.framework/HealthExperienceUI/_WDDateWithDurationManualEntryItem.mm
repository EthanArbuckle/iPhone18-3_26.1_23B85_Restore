@interface _WDDateWithDurationManualEntryItem
- (_WDDateWithDurationManualEntryItem)initWithMaximumDate:(id)date;
- (id)generateValue;
- (id)tableViewCells;
- (void)_setupEntryItems;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation _WDDateWithDurationManualEntryItem

- (_WDDateWithDurationManualEntryItem)initWithMaximumDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = _WDDateWithDurationManualEntryItem;
  v6 = [(_WDDateWithDurationManualEntryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maximumStartDate, date);
    [(_WDDateWithDurationManualEntryItem *)v7 _setupEntryItems];
  }

  return v7;
}

- (id)tableViewCells
{
  tableViewCells = [(WDAddDataManualEntryItem *)self->_startItem tableViewCells];
  tableViewCells2 = [(WDAddDataManualEntryItem *)self->_durationItem tableViewCells];
  v5 = [tableViewCells arrayByAddingObjectsFromArray:tableViewCells2];

  return v5;
}

- (void)_setupEntryItems
{
  maximumStartDate = self->_maximumStartDate;
  v4 = HABundle();
  v5 = [v4 localizedStringForKey:@"STARTS" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v6 = [WDAddDataManualEntryItem dateTimeItemWithMaximumDate:maximumStartDate highlightWhenEditing:1 displayName:v5];
  startItem = self->_startItem;
  self->_startItem = v6;

  v8 = HKIntegerFormatter();
  v9 = [WDAddDataManualEntryItem numericItemWithManualEntryType:1 numberFormatter:v8];
  durationItem = self->_durationItem;
  self->_durationItem = v9;

  v11 = self->_durationItem;
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"DURATION" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
  [(WDAddDataManualEntryItem *)v11 setTitle:v13];

  v14 = self->_durationItem;
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"SECONDS_MEDIUM" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
  [(WDAddDataManualEntryItem *)v14 setSecondaryLabel:v16];

  [(WDAddDataManualEntryItem *)self->_startItem setDelegate:self];
  v17 = self->_durationItem;

  [(WDAddDataManualEntryItem *)v17 setDelegate:self];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  delegate = [(WDAddDataManualEntryItem *)self delegate];
  [delegate presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (id)generateValue
{
  generateValue = [(WDAddDataManualEntryItem *)self->_startItem generateValue];
  generateValue2 = [(WDAddDataManualEntryItem *)self->_durationItem generateValue];
  v5 = generateValue2;
  if (generateValue2)
  {
    v6 = generateValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69A4520];
    [generateValue2 doubleValue];
    v8 = [generateValue dateByAddingTimeInterval:?];
    v9 = [v7 valueRangeWithMinValue:generateValue maxValue:v8];
  }

  return v9;
}

@end