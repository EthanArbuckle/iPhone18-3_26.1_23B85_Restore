@interface WDPhysicalEffortAddDataViewController
- (WDPhysicalEffortAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)a3;
- (void)manualEntryItemDidUpdate:(id)a3;
- (void)validateDataWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation WDPhysicalEffortAddDataViewController

- (WDPhysicalEffortAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7
{
  v19.receiver = self;
  v19.super_class = WDPhysicalEffortAddDataViewController;
  v7 = [(WDAddDataViewController *)&v19 initWithDisplayType:a3 healthStore:a4 unitController:a5 initialStartDate:a6 dateCache:a7];
  if (v7)
  {
    v8 = HKIntegerFormatter();
    v9 = [WDAddDataManualEntryItem numericItemWithManualEntryType:1 numberFormatter:v8];
    physicalEffortItem = v7->_physicalEffortItem;
    v7->_physicalEffortItem = v9;

    [(WDAddDataManualEntryItem *)v7->_physicalEffortItem setDelegate:v7];
    v11 = v7->_physicalEffortItem;
    v12 = HABundle();
    v13 = [v12 localizedStringForKey:@"PHYSICAL_EFFORT_UNIT" value:&stru_1F3823B88 table:@"AddDataLocalization"];
    [(WDAddDataManualEntryItem *)v11 setTitle:v13];

    v14 = [(HKDateCache *)v7->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v15 = [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:v14];
    dateRangeItem = v7->_dateRangeItem;
    v7->_dateRangeItem = v15;

    [(WDAddDataManualEntryItem *)v7->_dateRangeItem setDelegate:v7];
    v17 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WDPhysicalEffortAddDataViewController;
  [(WDAddDataViewController *)&v3 viewDidLoad];
  [(WDAddDataViewController *)self setSavingEnabled:0];
}

- (id)generateHKObjects
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD60]];
  v4 = [(WDAddDataManualEntryItem *)self->_physicalEffortItem generateValue];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(WDAddDataManualEntryItem *)self->_dateRangeItem generateValue];
  v8 = MEMORY[0x1E696C358];
  v9 = MEMORY[0x1E696C348];
  v10 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
  v11 = [v9 quantityWithUnit:v10 doubleValue:v6];
  v12 = [v7 startDate];
  v13 = [v7 endDate];
  v14 = [(WDAddDataViewController *)self defaultMetadata];
  v15 = [v8 quantitySampleWithType:v3 quantity:v11 startDate:v12 endDate:v13 metadata:v14];

  v18[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  return v16;
}

- (id)manualEntryItemsForSection:(int64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    dateRangeItem = self->_dateRangeItem;
    p_dateRangeItem = &dateRangeItem;
    goto LABEL_5;
  }

  if (!a3)
  {
    v7[0] = self->_physicalEffortItem;
    p_dateRangeItem = v7;
LABEL_5:
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_dateRangeItem count:1];
    goto LABEL_7;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v4;
}

- (void)validateDataWithCompletion:(id)a3
{
  dateRangeItem = self->_dateRangeItem;
  v5 = a3;
  v8 = [(WDAddDataManualEntryItem *)dateRangeItem generateValue];
  v6 = [v8 startDate];
  v7 = [v8 endDate];
  [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:v6 endDate:v7 competion:v5];
}

- (void)manualEntryItemDidUpdate:(id)a3
{
  v4 = [(WDAddDataManualEntryItem *)self->_physicalEffortItem generateValue];

  v22 = [(WDAddDataManualEntryItem *)self->_dateRangeItem generateValue];
  v5 = [v22 endDate];
  v6 = [v22 startDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
  v10 = [(HKDisplayType *)self->super._displayType presentation];
  v11 = [(WDAddDataManualEntryItem *)self->_physicalEffortItem generateValue];
  v12 = [v10 adjustedValueForClientValue:v11];

  v13 = MEMORY[0x1E696C348];
  [v12 doubleValue];
  v14 = [v13 quantityWithUnit:v9 doubleValue:?];
  validationController = self->super._validationController;
  v16 = [(HKDisplayType *)self->super._displayType objectType];
  v17 = [(HKManualEntryValidationController *)validationController validateQuantity:v14 ofType:v16];

  if (v17 == 2 || (v18 = v4 != 0, v19 = self->super._validationController, [(HKDisplayType *)self->super._displayType sampleType], v20 = objc_claimAutoreleasedReturnValue(), v21 = [(HKManualEntryValidationController *)v19 validateMinimumAllowedDuration:v20 ofType:v8], v20, v21 == 2))
  {
    v18 = 0;
  }

  [(WDAddDataViewController *)self setSavingEnabled:v18];
}

@end