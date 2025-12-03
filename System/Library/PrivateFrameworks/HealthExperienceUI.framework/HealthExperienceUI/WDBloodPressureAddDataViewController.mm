@interface WDBloodPressureAddDataViewController
- (BOOL)_systolicAndDiastolicHaveValues;
- (WDBloodPressureAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)section;
- (void)manualEntryItemDidUpdate:(id)update;
- (void)validateDataWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation WDBloodPressureAddDataViewController

- (WDBloodPressureAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  typeCopy = type;
  v28.receiver = self;
  v28.super_class = WDBloodPressureAddDataViewController;
  v13 = [(WDAddDataViewController *)&v28 initWithDisplayType:typeCopy healthStore:store unitController:controller initialStartDate:date dateCache:cache];
  if (v13)
  {
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"SYSTOLIC" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];

    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"DIASTOLIC" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];

    oneMinuteBeforeEndOfDayMidnight = [(HKDateCache *)v13->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v19 = [WDAddDataManualEntryItem twoPartDateTimeItemWithMaximumDate:oneMinuteBeforeEndOfDayMidnight];
    dateTimeEntryItem = v13->_dateTimeEntryItem;
    v13->_dateTimeEntryItem = v19;

    [typeCopy roundingMode];
    v21 = HKDecimalFormatter();
    v22 = [WDAddDataManualEntryItem numericItemWithManualEntryType:1 numberFormatter:v21];
    systolicEntryItem = v13->_systolicEntryItem;
    v13->_systolicEntryItem = v22;

    [typeCopy roundingMode];
    v24 = HKDecimalFormatter();
    v25 = [WDAddDataManualEntryItem numericItemWithManualEntryType:1 numberFormatter:v24];
    diastolicEntryItem = v13->_diastolicEntryItem;
    v13->_diastolicEntryItem = v25;

    [(WDAddDataManualEntryItem *)v13->_systolicEntryItem setTitle:v15];
    [(WDAddDataManualEntryItem *)v13->_diastolicEntryItem setTitle:v17];
    [(WDAddDataManualEntryItem *)v13->_systolicEntryItem setDelegate:v13];
    [(WDAddDataManualEntryItem *)v13->_diastolicEntryItem setDelegate:v13];
  }

  return v13;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WDBloodPressureAddDataViewController;
  [(WDAddDataViewController *)&v3 viewDidLoad];
  [(WDAddDataViewController *)self setSavingEnabled:0];
}

- (id)manualEntryItemsForSection:(int64_t)section
{
  v6[3] = *MEMORY[0x1E69E9840];
  systolicEntryItem = self->_systolicEntryItem;
  v6[0] = self->_dateTimeEntryItem;
  v6[1] = systolicEntryItem;
  v6[2] = self->_diastolicEntryItem;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];

  return v4;
}

- (void)validateDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
  v5 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
  supportedQuantityTypes = [(HKManualEntryValidationController *)self->super._validationController supportedQuantityTypes];
  identifier = [v4 identifier];
  if ([supportedQuantityTypes containsObject:identifier])
  {
    identifier2 = [v5 identifier];
    v9 = [supportedQuantityTypes containsObject:identifier2];

    if (!v9)
    {
      v30 = 0;
      v31 = 1;
      goto LABEL_14;
    }

    identifier = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
    presentation = [(HKDisplayType *)self->super._displayType presentation];
    generateValue = [(WDAddDataManualEntryItem *)self->_systolicEntryItem generateValue];
    [presentation adjustedValueForClientValue:generateValue];
    v38 = v4;
    v12 = v39 = v5;

    presentation2 = [(HKDisplayType *)self->super._displayType presentation];
    generateValue2 = [(WDAddDataManualEntryItem *)self->_diastolicEntryItem generateValue];
    v15 = [presentation2 adjustedValueForClientValue:generateValue2];

    v16 = MEMORY[0x1E696C348];
    [v12 doubleValue];
    v17 = [v16 quantityWithUnit:identifier doubleValue:?];
    v18 = MEMORY[0x1E696C348];
    [v15 doubleValue];
    v19 = [v18 quantityWithUnit:identifier doubleValue:?];
    v36 = v17;
    v20 = [(HKManualEntryValidationController *)self->super._validationController validateQuantity:v17 ofType:v38];
    v35 = v19;
    v21 = [(HKManualEntryValidationController *)self->super._validationController validateQuantity:v19 ofType:v39];
    v22 = [(HKDisplayType *)self->super._displayType hk_valueFormatterForUnit:identifier];
    v37 = v12;
    v23 = [v22 stringFromValue:v12 displayType:self->super._displayType unitController:self->super._unitController];

    v24 = [(HKDisplayType *)self->super._displayType hk_valueFormatterForUnit:identifier];
    v25 = v15;
    v26 = [v24 stringFromValue:v15 displayType:self->super._displayType unitController:self->super._unitController];

    if (v20 == 1 && v21 == 1)
    {
      v27 = MEMORY[0x1E696AEC0];
      v28 = HABundle();
      v29 = [v28 localizedStringForKey:@"OUT_OF_RANGE_ALERT_TWO_ITEMS_FORMAT_%@_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
      v34 = v26;
    }

    else
    {
      if (v20 != 1)
      {
        v32 = v23;
        v4 = v38;
        v5 = v39;
        if (v21 != 1)
        {
          v30 = 0;
          v31 = 1;
          goto LABEL_12;
        }

        v33 = MEMORY[0x1E696AEC0];
        v28 = HABundle();
        v29 = [v28 localizedStringForKey:@"OUT_OF_RANGE_ALERT_ONE_ITEM_FORMAT_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
        v30 = [v33 stringWithFormat:v29, v26];
LABEL_11:

        v31 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v27 = MEMORY[0x1E696AEC0];
      v28 = HABundle();
      v29 = [v28 localizedStringForKey:@"OUT_OF_RANGE_ALERT_ONE_ITEM_FORMAT_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
    }

    v32 = v23;
    v30 = [v27 stringWithFormat:v29, v23, v34];
    v4 = v38;
    v5 = v39;
    goto LABEL_11;
  }

  v30 = 0;
  v31 = 1;
LABEL_13:

LABEL_14:
  completionCopy[2](completionCopy, v31, v30, 1);
}

- (id)generateHKObjects
{
  v29[3] = *MEMORY[0x1E69E9840];
  v3 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
  generateValue = [(WDAddDataManualEntryItem *)self->_systolicEntryItem generateValue];
  generateValue2 = [(WDAddDataManualEntryItem *)self->_diastolicEntryItem generateValue];
  presentation = [(HKDisplayType *)self->super._displayType presentation];
  v28 = [presentation adjustedValueForClientValue:generateValue];

  presentation2 = [(HKDisplayType *)self->super._displayType presentation];
  v26 = [presentation2 adjustedValueForClientValue:generateValue2];

  v8 = MEMORY[0x1E696C348];
  [v28 doubleValue];
  v27 = v3;
  v9 = [v8 quantityWithUnit:v3 doubleValue:?];
  v10 = MEMORY[0x1E696C348];
  [v26 doubleValue];
  v11 = [v10 quantityWithUnit:v3 doubleValue:?];
  generateValue3 = [(WDAddDataManualEntryItem *)self->_dateTimeEntryItem generateValue];
  defaultMetadata = [(WDAddDataViewController *)self defaultMetadata];
  v14 = MEMORY[0x1E696C358];
  v15 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
  v16 = [v14 quantitySampleWithType:v15 quantity:v9 startDate:generateValue3 endDate:generateValue3 metadata:defaultMetadata];

  v17 = MEMORY[0x1E696C358];
  v18 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
  v19 = [v17 quantitySampleWithType:v18 quantity:v11 startDate:generateValue3 endDate:generateValue3 metadata:defaultMetadata];

  v20 = MEMORY[0x1E696C058];
  v21 = [MEMORY[0x1E696C2E0] correlationTypeForIdentifier:*MEMORY[0x1E696B730]];
  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{v16, v19, 0}];
  v23 = [v20 correlationWithType:v21 startDate:generateValue3 endDate:generateValue3 objects:v22 metadata:defaultMetadata];

  v29[0] = v23;
  v29[1] = v16;
  v29[2] = v19;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];

  return v24;
}

- (BOOL)_systolicAndDiastolicHaveValues
{
  generateValue = [(WDAddDataManualEntryItem *)self->_systolicEntryItem generateValue];

  generateValue2 = [(WDAddDataManualEntryItem *)self->_diastolicEntryItem generateValue];

  if (generateValue)
  {
    v5 = generateValue2 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)manualEntryItemDidUpdate:(id)update
{
  if (![(WDBloodPressureAddDataViewController *)self _systolicAndDiastolicHaveValues])
  {
    goto LABEL_11;
  }

  supportedQuantityTypes = [(HKManualEntryValidationController *)self->super._validationController supportedQuantityTypes];
  v5 = *MEMORY[0x1E696BC90];
  if ([supportedQuantityTypes containsObject:*MEMORY[0x1E696BC90]])
  {
    supportedQuantityTypes2 = [(HKManualEntryValidationController *)self->super._validationController supportedQuantityTypes];
    v7 = *MEMORY[0x1E696BC88];
    v8 = [supportedQuantityTypes2 containsObject:*MEMORY[0x1E696BC88]];

    if (v8)
    {
      supportedQuantityTypes = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
      presentation = [(HKDisplayType *)self->super._displayType presentation];
      generateValue = [(WDAddDataManualEntryItem *)self->_systolicEntryItem generateValue];
      v26 = [presentation adjustedValueForClientValue:generateValue];

      presentation2 = [(HKDisplayType *)self->super._displayType presentation];
      generateValue2 = [(WDAddDataManualEntryItem *)self->_diastolicEntryItem generateValue];
      v13 = [presentation2 adjustedValueForClientValue:generateValue2];

      v14 = MEMORY[0x1E696C348];
      [v26 doubleValue];
      v15 = [v14 quantityWithUnit:supportedQuantityTypes doubleValue:?];
      v16 = MEMORY[0x1E696C348];
      [v13 doubleValue];
      v17 = [v16 quantityWithUnit:supportedQuantityTypes doubleValue:?];
      validationController = self->super._validationController;
      v19 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:v5];
      v20 = [(HKManualEntryValidationController *)validationController validateQuantity:v15 ofType:v19];

      v21 = self->super._validationController;
      v22 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:v7];
      v23 = [(HKManualEntryValidationController *)v21 validateQuantity:v17 ofType:v22];

      v25 = v20 != 2 && v23 != 2;
      goto LABEL_13;
    }

LABEL_11:
    v25 = 0;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_13:

LABEL_14:

  [(WDAddDataViewController *)self setSavingEnabled:v25];
}

@end