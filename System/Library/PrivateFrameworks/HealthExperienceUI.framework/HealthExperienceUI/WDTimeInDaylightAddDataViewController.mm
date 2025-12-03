@interface WDTimeInDaylightAddDataViewController
- (WDTimeInDaylightAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)section;
- (void)manualEntryItemDidUpdate:(id)update;
- (void)validateDataWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation WDTimeInDaylightAddDataViewController

- (WDTimeInDaylightAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  v14.receiver = self;
  v14.super_class = WDTimeInDaylightAddDataViewController;
  v7 = [(WDAddDataViewController *)&v14 initWithDisplayType:type healthStore:store unitController:controller initialStartDate:date dateCache:cache];
  v8 = v7;
  if (v7)
  {
    oneMinuteBeforeEndOfDayMidnight = [(HKDateCache *)v7->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v10 = [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:oneMinuteBeforeEndOfDayMidnight];
    dateRangeEntryItem = v8->_dateRangeEntryItem;
    v8->_dateRangeEntryItem = v10;

    [(WDAddDataManualEntryItem *)v8->_dateRangeEntryItem setDelegate:v8];
    v12 = v8;
  }

  return v8;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WDTimeInDaylightAddDataViewController;
  [(WDAddDataViewController *)&v3 viewDidLoad];
  [(WDAddDataViewController *)self setSavingEnabled:0];
}

- (id)generateHKObjects
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BDD8]];
  generateValue = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  endDate = [generateValue endDate];
  startDate = [generateValue startDate];
  [endDate timeIntervalSinceDate:startDate];
  v8 = v7;

  v9 = MEMORY[0x1E696C358];
  v10 = MEMORY[0x1E696C348];
  secondUnit = [MEMORY[0x1E696C510] secondUnit];
  v12 = [v10 quantityWithUnit:secondUnit doubleValue:v8];
  startDate2 = [generateValue startDate];
  endDate2 = [generateValue endDate];
  defaultMetadata = [(WDAddDataViewController *)self defaultMetadata];
  v16 = [v9 quantitySampleWithType:v3 quantity:v12 startDate:startDate2 endDate:endDate2 metadata:defaultMetadata];

  v19[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  return v17;
}

- (id)manualEntryItemsForSection:(int64_t)section
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (section)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5[0] = self->_dateRangeEntryItem;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return v3;
}

- (void)validateDataWithCompletion:(id)completion
{
  dateRangeEntryItem = self->_dateRangeEntryItem;
  completionCopy = completion;
  generateValue = [(WDAddDataManualEntryItem *)dateRangeEntryItem generateValue];
  startDate = [generateValue startDate];
  endDate = [generateValue endDate];
  [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:startDate endDate:endDate competion:completionCopy];
}

- (void)manualEntryItemDidUpdate:(id)update
{
  generateValue = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  endDate = [generateValue endDate];
  startDate = [generateValue startDate];
  [endDate timeIntervalSinceDate:startDate];
  v7 = v6;

  validationController = self->super._validationController;
  sampleType = [(HKDisplayType *)self->super._displayType sampleType];
  v10 = [(HKManualEntryValidationController *)validationController validateMinimumAllowedDuration:sampleType ofType:v7]!= 2;

  [(WDAddDataViewController *)self setSavingEnabled:v10];
}

@end