@interface WDPhysicalEffortAddDataViewController
- (WDPhysicalEffortAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)section;
- (void)manualEntryItemDidUpdate:(id)update;
- (void)validateDataWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation WDPhysicalEffortAddDataViewController

- (WDPhysicalEffortAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  v19.receiver = self;
  v19.super_class = WDPhysicalEffortAddDataViewController;
  v7 = [(WDAddDataViewController *)&v19 initWithDisplayType:type healthStore:store unitController:controller initialStartDate:date dateCache:cache];
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

    oneMinuteBeforeEndOfDayMidnight = [(HKDateCache *)v7->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v15 = [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:oneMinuteBeforeEndOfDayMidnight];
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
  generateValue = [(WDAddDataManualEntryItem *)self->_physicalEffortItem generateValue];
  [generateValue doubleValue];
  v6 = v5;

  generateValue2 = [(WDAddDataManualEntryItem *)self->_dateRangeItem generateValue];
  v8 = MEMORY[0x1E696C358];
  v9 = MEMORY[0x1E696C348];
  v10 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
  v11 = [v9 quantityWithUnit:v10 doubleValue:v6];
  startDate = [generateValue2 startDate];
  endDate = [generateValue2 endDate];
  defaultMetadata = [(WDAddDataViewController *)self defaultMetadata];
  v15 = [v8 quantitySampleWithType:v3 quantity:v11 startDate:startDate endDate:endDate metadata:defaultMetadata];

  v18[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  return v16;
}

- (id)manualEntryItemsForSection:(int64_t)section
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (section == 1)
  {
    dateRangeItem = self->_dateRangeItem;
    p_dateRangeItem = &dateRangeItem;
    goto LABEL_5;
  }

  if (!section)
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

- (void)validateDataWithCompletion:(id)completion
{
  dateRangeItem = self->_dateRangeItem;
  completionCopy = completion;
  generateValue = [(WDAddDataManualEntryItem *)dateRangeItem generateValue];
  startDate = [generateValue startDate];
  endDate = [generateValue endDate];
  [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:startDate endDate:endDate competion:completionCopy];
}

- (void)manualEntryItemDidUpdate:(id)update
{
  generateValue = [(WDAddDataManualEntryItem *)self->_physicalEffortItem generateValue];

  generateValue2 = [(WDAddDataManualEntryItem *)self->_dateRangeItem generateValue];
  endDate = [generateValue2 endDate];
  startDate = [generateValue2 startDate];
  [endDate timeIntervalSinceDate:startDate];
  v8 = v7;

  v9 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
  presentation = [(HKDisplayType *)self->super._displayType presentation];
  generateValue3 = [(WDAddDataManualEntryItem *)self->_physicalEffortItem generateValue];
  v12 = [presentation adjustedValueForClientValue:generateValue3];

  v13 = MEMORY[0x1E696C348];
  [v12 doubleValue];
  v14 = [v13 quantityWithUnit:v9 doubleValue:?];
  validationController = self->super._validationController;
  objectType = [(HKDisplayType *)self->super._displayType objectType];
  v17 = [(HKManualEntryValidationController *)validationController validateQuantity:v14 ofType:objectType];

  if (v17 == 2 || (v18 = generateValue != 0, v19 = self->super._validationController, [(HKDisplayType *)self->super._displayType sampleType], v20 = objc_claimAutoreleasedReturnValue(), v21 = [(HKManualEntryValidationController *)v19 validateMinimumAllowedDuration:v20 ofType:v8], v20, v21 == 2))
  {
    v18 = 0;
  }

  [(WDAddDataViewController *)self setSavingEnabled:v18];
}

@end