@interface WDUVExposureAddDataViewController
- (WDUVExposureAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)section;
- (void)manualEntryItemDidUpdate:(id)update;
- (void)validateDataWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation WDUVExposureAddDataViewController

- (WDUVExposureAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  v19.receiver = self;
  v19.super_class = WDUVExposureAddDataViewController;
  v7 = [(WDAddDataViewController *)&v19 initWithDisplayType:type healthStore:store unitController:controller initialStartDate:date dateCache:cache];
  if (v7)
  {
    v8 = HKIntegerFormatter();
    v9 = [WDAddDataManualEntryItem numericItemWithManualEntryType:1 numberFormatter:v8];
    valueEntryItem = v7->_valueEntryItem;
    v7->_valueEntryItem = v9;

    [(WDAddDataManualEntryItem *)v7->_valueEntryItem setDelegate:v7];
    v11 = v7->_valueEntryItem;
    v12 = HABundle();
    v13 = [v12 localizedStringForKey:@"UV_INDEX" value:&stru_1F3823B88 table:@"AddDataLocalization"];
    [(WDAddDataManualEntryItem *)v11 setTitle:v13];

    oneMinuteBeforeEndOfDayMidnight = [(HKDateCache *)v7->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v15 = [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:oneMinuteBeforeEndOfDayMidnight];
    dateRangeEntryItem = v7->_dateRangeEntryItem;
    v7->_dateRangeEntryItem = v15;

    [(WDAddDataManualEntryItem *)v7->_dateRangeEntryItem setDelegate:v7];
    v17 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WDUVExposureAddDataViewController;
  [(WDAddDataViewController *)&v3 viewDidLoad];
  [(WDAddDataViewController *)self setSavingEnabled:0];
}

- (id)generateHKObjects
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BDE0]];
  generateValue = [(WDAddDataManualEntryItem *)self->_valueEntryItem generateValue];
  [generateValue doubleValue];
  v6 = v5;

  generateValue2 = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  v8 = MEMORY[0x1E696C358];
  v9 = MEMORY[0x1E696C348];
  countUnit = [MEMORY[0x1E696C510] countUnit];
  v11 = [v9 quantityWithUnit:countUnit doubleValue:v6];
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
    dateRangeEntryItem = self->_dateRangeEntryItem;
    p_dateRangeEntryItem = &dateRangeEntryItem;
    goto LABEL_5;
  }

  if (!section)
  {
    v7[0] = self->_valueEntryItem;
    p_dateRangeEntryItem = v7;
LABEL_5:
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_dateRangeEntryItem count:1];
    goto LABEL_7;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v4;
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
  generateValue = [(WDAddDataManualEntryItem *)self->_valueEntryItem generateValue];

  generateValue2 = [(WDAddDataManualEntryItem *)self->_dateRangeEntryItem generateValue];
  endDate = [generateValue2 endDate];
  startDate = [generateValue2 startDate];
  [endDate timeIntervalSinceDate:startDate];
  v8 = v7;

  validationController = self->super._validationController;
  sampleType = [(HKDisplayType *)self->super._displayType sampleType];
  v11 = [(HKManualEntryValidationController *)validationController validateMinimumAllowedDuration:sampleType ofType:v8];

  v13 = v11 != 2 && generateValue != 0;
  [(WDAddDataViewController *)self setSavingEnabled:v13];
}

@end