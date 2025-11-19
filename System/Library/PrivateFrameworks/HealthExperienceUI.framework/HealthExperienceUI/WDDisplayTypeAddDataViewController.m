@interface WDDisplayTypeAddDataViewController
- (id)createValueFieldManualEntryItem;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)a3;
- (void)_setDefaultValuesIfNecessary;
- (void)_updateManualEntryItemWithCurrentBMI:(id)a3;
- (void)manualEntryItemDidUpdate:(id)a3;
- (void)validateDataWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation WDDisplayTypeAddDataViewController

- (id)createValueFieldManualEntryItem
{
  v3 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
  v4 = [(HKDisplayType *)self->super._displayType chartingRules];
  v5 = [v4 allowedDecimalPrecisionRuleForUnit:v3];
  v6 = [v5 maximumDecimalPrecision];

  v7 = [(HKDisplayType *)self->super._displayType localization];
  v8 = [v7 labelDisplayName];

  if ([(HKDisplayType *)self->super._displayType displayTypeIdentifier]== 15)
  {
    v9 = [(HKDisplayType *)self->super._displayType localization];
    v10 = [v9 displayName];

    v11 = [(HKUnitPreferenceController *)self->super._unitController localizedDisplayNameForDisplayType:self->super._displayType];
    v8 = v10;
  }

  else
  {
    v11 = &stru_1F3823B88;
  }

  if (![v8 length])
  {
    v12 = [(HKUnitPreferenceController *)self->super._unitController localizedDisplayNameForDisplayType:self->super._displayType];

    v8 = v12;
  }

  if (v6)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [(HKDisplayType *)self->super._displayType roundingMode];
  v14 = HKDecimalFormatter();
  v15 = [WDAddDataManualEntryItem numericItemWithManualEntryType:v13 numberFormatter:v14];

  [v15 setTitle:v8];
  [v15 setSecondaryLabel:v11];

  return v15;
}

- (void)viewDidLoad
{
  v3 = [(HKDateCache *)self->super._dateCache endOfDayMidnight];
  v4 = [WDAddDataManualEntryItem twoPartDateTimeItemWithMaximumDate:v3];
  dateTimeEntryItem = self->_dateTimeEntryItem;
  self->_dateTimeEntryItem = v4;

  [(WDAddDataManualEntryItem *)self->_dateTimeEntryItem setDelegate:self];
  v6 = [(WDDisplayTypeAddDataViewController *)self createValueFieldManualEntryItem];
  valueFieldManualEntryItem = self->_valueFieldManualEntryItem;
  self->_valueFieldManualEntryItem = v6;

  [(WDAddDataManualEntryItem *)self->_valueFieldManualEntryItem setDelegate:self];
  v8.receiver = self;
  v8.super_class = WDDisplayTypeAddDataViewController;
  [(WDAddDataViewController *)&v8 viewDidLoad];
  [(WDAddDataViewController *)self setSavingEnabled:0];
  [(WDDisplayTypeAddDataViewController *)self _setDefaultValuesIfNecessary];
}

- (void)validateDataWithCompletion:(id)a3
{
  v27 = a3;
  v4 = [(HKManualEntryValidationController *)self->super._validationController supportedQuantityTypes];
  v5 = [(HKDisplayType *)self->super._displayType objectType];
  v6 = [v5 identifier];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
    v9 = [(HKDisplayType *)self->super._displayType presentation];
    v10 = [(WDAddDataManualEntryItem *)self->_valueFieldManualEntryItem generateValue];
    v11 = [v9 adjustedValueForClientValue:v10];

    v12 = MEMORY[0x1E696C348];
    [v11 doubleValue];
    v13 = [v12 quantityWithUnit:v8 doubleValue:?];
    validationController = self->super._validationController;
    v15 = [(HKDisplayType *)self->super._displayType objectType];
    v16 = [(HKManualEntryValidationController *)validationController validateQuantity:v13 ofType:v15];

    v17 = v16 == 1;
    v18 = v16 != 1;
    if (v17)
    {
      v20 = [(HKDisplayType *)self->super._displayType presentation];
      v21 = [v20 adjustedValueForDaemonValue:v11];

      v22 = [(HKDisplayType *)self->super._displayType hk_valueFormatterForUnit:v8];
      v23 = [v22 stringFromValue:v21 displayType:self->super._displayType unitController:self->super._unitController];

      v24 = MEMORY[0x1E696AEC0];
      v25 = HABundle();
      v26 = [v25 localizedStringForKey:@"OUT_OF_RANGE_ALERT_ONE_ITEM_FORMAT_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
      v19 = [v24 stringWithFormat:v26, v23];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 1;
  }

  v27[2](v27, v18, v19, 1);
}

- (id)generateHKObjects
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(WDAddDataManualEntryItem *)self->_dateTimeEntryItem generateValue];
  v4 = [(WDAddDataViewController *)self defaultMetadata];
  v5 = [(WDAddDataManualEntryItem *)self->_valueFieldManualEntryItem generateValue];
  v6 = [(HKDisplayType *)self->super._displayType presentation];
  v7 = [v6 adjustedValueForClientValue:v5];

  v8 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
  v9 = MEMORY[0x1E696C348];
  [v7 doubleValue];
  v10 = [v9 quantityWithUnit:v8 doubleValue:?];
  v11 = MEMORY[0x1E696C358];
  v12 = [(HKDisplayType *)self->super._displayType sampleType];
  v13 = [v11 quantitySampleWithType:v12 quantity:v10 startDate:v3 endDate:v3 metadata:v4];

  v16[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  return v14;
}

- (id)manualEntryItemsForSection:(int64_t)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  valueFieldManualEntryItem = self->_valueFieldManualEntryItem;
  v6[0] = self->_dateTimeEntryItem;
  v6[1] = valueFieldManualEntryItem;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)_setDefaultValuesIfNecessary
{
  if (![(HKDisplayType *)self->super._displayType displayTypeIdentifier])
  {
    valueFieldManualEntryItem = self->_valueFieldManualEntryItem;

    [(WDDisplayTypeAddDataViewController *)self _updateManualEntryItemWithCurrentBMI:valueFieldManualEntryItem];
  }
}

- (void)_updateManualEntryItemWithCurrentBMI:(id)a3
{
  v4 = a3;
  healthStore = self->super._healthStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WDDisplayTypeAddDataViewController__updateManualEntryItemWithCurrentBMI___block_invoke;
  v7[3] = &unk_1E7EEB588;
  v8 = v4;
  v6 = v4;
  [(HKHealthStore *)healthStore calculateBMIWithCompletion:v7];
}

void __75__WDDisplayTypeAddDataViewController__updateManualEntryItemWithCurrentBMI___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __75__WDDisplayTypeAddDataViewController__updateManualEntryItemWithCurrentBMI___block_invoke_2;
    v4[3] = &unk_1E7EEB560;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (void)manualEntryItemDidUpdate:(id)a3
{
  v17 = [(WDAddDataManualEntryItem *)self->_valueFieldManualEntryItem generateValue];
  if (v17 && (-[HKManualEntryValidationController supportedQuantityTypes](self->super._validationController, "supportedQuantityTypes"), v4 = objc_claimAutoreleasedReturnValue(), -[HKDisplayType objectType](self->super._displayType, "objectType"), v5 = objc_claimAutoreleasedReturnValue(), [v5 identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "containsObject:", v6), v6, v5, v4, v7))
  {
    v8 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
    v9 = [(HKDisplayType *)self->super._displayType presentation];
    v10 = [v9 adjustedValueForClientValue:v17];

    v11 = MEMORY[0x1E696C348];
    [v10 doubleValue];
    v12 = [v11 quantityWithUnit:v8 doubleValue:?];
    validationController = self->super._validationController;
    v14 = [(HKDisplayType *)self->super._displayType objectType];
    v15 = [(HKManualEntryValidationController *)validationController validateQuantity:v12 ofType:v14];

    v16 = v15 != 2;
  }

  else
  {
    v16 = 0;
  }

  [(WDAddDataViewController *)self setSavingEnabled:v16];
}

@end