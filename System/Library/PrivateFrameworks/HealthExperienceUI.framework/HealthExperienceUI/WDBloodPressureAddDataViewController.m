@interface WDBloodPressureAddDataViewController
- (BOOL)_systolicAndDiastolicHaveValues;
- (WDBloodPressureAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)a3;
- (void)manualEntryItemDidUpdate:(id)a3;
- (void)validateDataWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation WDBloodPressureAddDataViewController

- (WDBloodPressureAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7
{
  v12 = a3;
  v28.receiver = self;
  v28.super_class = WDBloodPressureAddDataViewController;
  v13 = [(WDAddDataViewController *)&v28 initWithDisplayType:v12 healthStore:a4 unitController:a5 initialStartDate:a6 dateCache:a7];
  if (v13)
  {
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"SYSTOLIC" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];

    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"DIASTOLIC" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];

    v18 = [(HKDateCache *)v13->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v19 = [WDAddDataManualEntryItem twoPartDateTimeItemWithMaximumDate:v18];
    dateTimeEntryItem = v13->_dateTimeEntryItem;
    v13->_dateTimeEntryItem = v19;

    [v12 roundingMode];
    v21 = HKDecimalFormatter();
    v22 = [WDAddDataManualEntryItem numericItemWithManualEntryType:1 numberFormatter:v21];
    systolicEntryItem = v13->_systolicEntryItem;
    v13->_systolicEntryItem = v22;

    [v12 roundingMode];
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

- (id)manualEntryItemsForSection:(int64_t)a3
{
  v6[3] = *MEMORY[0x1E69E9840];
  systolicEntryItem = self->_systolicEntryItem;
  v6[0] = self->_dateTimeEntryItem;
  v6[1] = systolicEntryItem;
  v6[2] = self->_diastolicEntryItem;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];

  return v4;
}

- (void)validateDataWithCompletion:(id)a3
{
  v40 = a3;
  v4 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
  v5 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
  v6 = [(HKManualEntryValidationController *)self->super._validationController supportedQuantityTypes];
  v7 = [v4 identifier];
  if ([v6 containsObject:v7])
  {
    v8 = [v5 identifier];
    v9 = [v6 containsObject:v8];

    if (!v9)
    {
      v30 = 0;
      v31 = 1;
      goto LABEL_14;
    }

    v7 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
    v10 = [(HKDisplayType *)self->super._displayType presentation];
    v11 = [(WDAddDataManualEntryItem *)self->_systolicEntryItem generateValue];
    [v10 adjustedValueForClientValue:v11];
    v38 = v4;
    v12 = v39 = v5;

    v13 = [(HKDisplayType *)self->super._displayType presentation];
    v14 = [(WDAddDataManualEntryItem *)self->_diastolicEntryItem generateValue];
    v15 = [v13 adjustedValueForClientValue:v14];

    v16 = MEMORY[0x1E696C348];
    [v12 doubleValue];
    v17 = [v16 quantityWithUnit:v7 doubleValue:?];
    v18 = MEMORY[0x1E696C348];
    [v15 doubleValue];
    v19 = [v18 quantityWithUnit:v7 doubleValue:?];
    v36 = v17;
    v20 = [(HKManualEntryValidationController *)self->super._validationController validateQuantity:v17 ofType:v38];
    v35 = v19;
    v21 = [(HKManualEntryValidationController *)self->super._validationController validateQuantity:v19 ofType:v39];
    v22 = [(HKDisplayType *)self->super._displayType hk_valueFormatterForUnit:v7];
    v37 = v12;
    v23 = [v22 stringFromValue:v12 displayType:self->super._displayType unitController:self->super._unitController];

    v24 = [(HKDisplayType *)self->super._displayType hk_valueFormatterForUnit:v7];
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
  v40[2](v40, v31, v30, 1);
}

- (id)generateHKObjects
{
  v29[3] = *MEMORY[0x1E69E9840];
  v3 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
  v4 = [(WDAddDataManualEntryItem *)self->_systolicEntryItem generateValue];
  v5 = [(WDAddDataManualEntryItem *)self->_diastolicEntryItem generateValue];
  v6 = [(HKDisplayType *)self->super._displayType presentation];
  v28 = [v6 adjustedValueForClientValue:v4];

  v7 = [(HKDisplayType *)self->super._displayType presentation];
  v26 = [v7 adjustedValueForClientValue:v5];

  v8 = MEMORY[0x1E696C348];
  [v28 doubleValue];
  v27 = v3;
  v9 = [v8 quantityWithUnit:v3 doubleValue:?];
  v10 = MEMORY[0x1E696C348];
  [v26 doubleValue];
  v11 = [v10 quantityWithUnit:v3 doubleValue:?];
  v12 = [(WDAddDataManualEntryItem *)self->_dateTimeEntryItem generateValue];
  v13 = [(WDAddDataViewController *)self defaultMetadata];
  v14 = MEMORY[0x1E696C358];
  v15 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
  v16 = [v14 quantitySampleWithType:v15 quantity:v9 startDate:v12 endDate:v12 metadata:v13];

  v17 = MEMORY[0x1E696C358];
  v18 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
  v19 = [v17 quantitySampleWithType:v18 quantity:v11 startDate:v12 endDate:v12 metadata:v13];

  v20 = MEMORY[0x1E696C058];
  v21 = [MEMORY[0x1E696C2E0] correlationTypeForIdentifier:*MEMORY[0x1E696B730]];
  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{v16, v19, 0}];
  v23 = [v20 correlationWithType:v21 startDate:v12 endDate:v12 objects:v22 metadata:v13];

  v29[0] = v23;
  v29[1] = v16;
  v29[2] = v19;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];

  return v24;
}

- (BOOL)_systolicAndDiastolicHaveValues
{
  v3 = [(WDAddDataManualEntryItem *)self->_systolicEntryItem generateValue];

  v4 = [(WDAddDataManualEntryItem *)self->_diastolicEntryItem generateValue];

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)manualEntryItemDidUpdate:(id)a3
{
  if (![(WDBloodPressureAddDataViewController *)self _systolicAndDiastolicHaveValues])
  {
    goto LABEL_11;
  }

  v4 = [(HKManualEntryValidationController *)self->super._validationController supportedQuantityTypes];
  v5 = *MEMORY[0x1E696BC90];
  if ([v4 containsObject:*MEMORY[0x1E696BC90]])
  {
    v6 = [(HKManualEntryValidationController *)self->super._validationController supportedQuantityTypes];
    v7 = *MEMORY[0x1E696BC88];
    v8 = [v6 containsObject:*MEMORY[0x1E696BC88]];

    if (v8)
    {
      v4 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
      v9 = [(HKDisplayType *)self->super._displayType presentation];
      v10 = [(WDAddDataManualEntryItem *)self->_systolicEntryItem generateValue];
      v26 = [v9 adjustedValueForClientValue:v10];

      v11 = [(HKDisplayType *)self->super._displayType presentation];
      v12 = [(WDAddDataManualEntryItem *)self->_diastolicEntryItem generateValue];
      v13 = [v11 adjustedValueForClientValue:v12];

      v14 = MEMORY[0x1E696C348];
      [v26 doubleValue];
      v15 = [v14 quantityWithUnit:v4 doubleValue:?];
      v16 = MEMORY[0x1E696C348];
      [v13 doubleValue];
      v17 = [v16 quantityWithUnit:v4 doubleValue:?];
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