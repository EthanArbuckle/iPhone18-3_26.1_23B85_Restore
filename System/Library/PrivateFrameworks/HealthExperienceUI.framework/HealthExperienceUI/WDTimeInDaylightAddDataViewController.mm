@interface WDTimeInDaylightAddDataViewController
- (WDTimeInDaylightAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)a3;
- (void)manualEntryItemDidUpdate:(id)a3;
- (void)validateDataWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation WDTimeInDaylightAddDataViewController

- (WDTimeInDaylightAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7
{
  v14.receiver = self;
  v14.super_class = WDTimeInDaylightAddDataViewController;
  v7 = [(WDAddDataViewController *)&v14 initWithDisplayType:a3 healthStore:a4 unitController:a5 initialStartDate:a6 dateCache:a7];
  v8 = v7;
  if (v7)
  {
    v9 = [(HKDateCache *)v7->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v10 = [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:v9];
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
  v4 = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  v5 = [v4 endDate];
  v6 = [v4 startDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = MEMORY[0x1E696C358];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] secondUnit];
  v12 = [v10 quantityWithUnit:v11 doubleValue:v8];
  v13 = [v4 startDate];
  v14 = [v4 endDate];
  v15 = [(WDAddDataViewController *)self defaultMetadata];
  v16 = [v9 quantitySampleWithType:v3 quantity:v12 startDate:v13 endDate:v14 metadata:v15];

  v19[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  return v17;
}

- (id)manualEntryItemsForSection:(int64_t)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a3)
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

- (void)validateDataWithCompletion:(id)a3
{
  dateRangeEntryItem = self->_dateRangeEntryItem;
  v5 = a3;
  v8 = [(WDAddDataManualEntryItem *)dateRangeEntryItem generateValue];
  v6 = [v8 startDate];
  v7 = [v8 endDate];
  [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:v6 endDate:v7 competion:v5];
}

- (void)manualEntryItemDidUpdate:(id)a3
{
  v11 = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  v4 = [v11 endDate];
  v5 = [v11 startDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  validationController = self->super._validationController;
  v9 = [(HKDisplayType *)self->super._displayType sampleType];
  v10 = [(HKManualEntryValidationController *)validationController validateMinimumAllowedDuration:v9 ofType:v7]!= 2;

  [(WDAddDataViewController *)self setSavingEnabled:v10];
}

@end