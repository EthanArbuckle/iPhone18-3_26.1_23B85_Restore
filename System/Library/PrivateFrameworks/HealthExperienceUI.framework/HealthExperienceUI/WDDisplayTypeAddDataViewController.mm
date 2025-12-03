@interface WDDisplayTypeAddDataViewController
- (id)createValueFieldManualEntryItem;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)section;
- (void)_setDefaultValuesIfNecessary;
- (void)_updateManualEntryItemWithCurrentBMI:(id)i;
- (void)manualEntryItemDidUpdate:(id)update;
- (void)validateDataWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation WDDisplayTypeAddDataViewController

- (id)createValueFieldManualEntryItem
{
  v3 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
  chartingRules = [(HKDisplayType *)self->super._displayType chartingRules];
  v5 = [chartingRules allowedDecimalPrecisionRuleForUnit:v3];
  maximumDecimalPrecision = [v5 maximumDecimalPrecision];

  localization = [(HKDisplayType *)self->super._displayType localization];
  labelDisplayName = [localization labelDisplayName];

  if ([(HKDisplayType *)self->super._displayType displayTypeIdentifier]== 15)
  {
    localization2 = [(HKDisplayType *)self->super._displayType localization];
    displayName = [localization2 displayName];

    v11 = [(HKUnitPreferenceController *)self->super._unitController localizedDisplayNameForDisplayType:self->super._displayType];
    labelDisplayName = displayName;
  }

  else
  {
    v11 = &stru_1F3823B88;
  }

  if (![labelDisplayName length])
  {
    v12 = [(HKUnitPreferenceController *)self->super._unitController localizedDisplayNameForDisplayType:self->super._displayType];

    labelDisplayName = v12;
  }

  if (maximumDecimalPrecision)
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

  [v15 setTitle:labelDisplayName];
  [v15 setSecondaryLabel:v11];

  return v15;
}

- (void)viewDidLoad
{
  endOfDayMidnight = [(HKDateCache *)self->super._dateCache endOfDayMidnight];
  v4 = [WDAddDataManualEntryItem twoPartDateTimeItemWithMaximumDate:endOfDayMidnight];
  dateTimeEntryItem = self->_dateTimeEntryItem;
  self->_dateTimeEntryItem = v4;

  [(WDAddDataManualEntryItem *)self->_dateTimeEntryItem setDelegate:self];
  createValueFieldManualEntryItem = [(WDDisplayTypeAddDataViewController *)self createValueFieldManualEntryItem];
  valueFieldManualEntryItem = self->_valueFieldManualEntryItem;
  self->_valueFieldManualEntryItem = createValueFieldManualEntryItem;

  [(WDAddDataManualEntryItem *)self->_valueFieldManualEntryItem setDelegate:self];
  v8.receiver = self;
  v8.super_class = WDDisplayTypeAddDataViewController;
  [(WDAddDataViewController *)&v8 viewDidLoad];
  [(WDAddDataViewController *)self setSavingEnabled:0];
  [(WDDisplayTypeAddDataViewController *)self _setDefaultValuesIfNecessary];
}

- (void)validateDataWithCompletion:(id)completion
{
  completionCopy = completion;
  supportedQuantityTypes = [(HKManualEntryValidationController *)self->super._validationController supportedQuantityTypes];
  objectType = [(HKDisplayType *)self->super._displayType objectType];
  identifier = [objectType identifier];
  v7 = [supportedQuantityTypes containsObject:identifier];

  if (v7)
  {
    v8 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
    presentation = [(HKDisplayType *)self->super._displayType presentation];
    generateValue = [(WDAddDataManualEntryItem *)self->_valueFieldManualEntryItem generateValue];
    v11 = [presentation adjustedValueForClientValue:generateValue];

    v12 = MEMORY[0x1E696C348];
    [v11 doubleValue];
    v13 = [v12 quantityWithUnit:v8 doubleValue:?];
    validationController = self->super._validationController;
    objectType2 = [(HKDisplayType *)self->super._displayType objectType];
    v16 = [(HKManualEntryValidationController *)validationController validateQuantity:v13 ofType:objectType2];

    v17 = v16 == 1;
    v18 = v16 != 1;
    if (v17)
    {
      presentation2 = [(HKDisplayType *)self->super._displayType presentation];
      v21 = [presentation2 adjustedValueForDaemonValue:v11];

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

  completionCopy[2](completionCopy, v18, v19, 1);
}

- (id)generateHKObjects
{
  v16[1] = *MEMORY[0x1E69E9840];
  generateValue = [(WDAddDataManualEntryItem *)self->_dateTimeEntryItem generateValue];
  defaultMetadata = [(WDAddDataViewController *)self defaultMetadata];
  generateValue2 = [(WDAddDataManualEntryItem *)self->_valueFieldManualEntryItem generateValue];
  presentation = [(HKDisplayType *)self->super._displayType presentation];
  v7 = [presentation adjustedValueForClientValue:generateValue2];

  v8 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
  v9 = MEMORY[0x1E696C348];
  [v7 doubleValue];
  v10 = [v9 quantityWithUnit:v8 doubleValue:?];
  v11 = MEMORY[0x1E696C358];
  sampleType = [(HKDisplayType *)self->super._displayType sampleType];
  v13 = [v11 quantitySampleWithType:sampleType quantity:v10 startDate:generateValue endDate:generateValue metadata:defaultMetadata];

  v16[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  return v14;
}

- (id)manualEntryItemsForSection:(int64_t)section
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

- (void)_updateManualEntryItemWithCurrentBMI:(id)i
{
  iCopy = i;
  healthStore = self->super._healthStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WDDisplayTypeAddDataViewController__updateManualEntryItemWithCurrentBMI___block_invoke;
  v7[3] = &unk_1E7EEB588;
  v8 = iCopy;
  v6 = iCopy;
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

- (void)manualEntryItemDidUpdate:(id)update
{
  generateValue = [(WDAddDataManualEntryItem *)self->_valueFieldManualEntryItem generateValue];
  if (generateValue && (-[HKManualEntryValidationController supportedQuantityTypes](self->super._validationController, "supportedQuantityTypes"), v4 = objc_claimAutoreleasedReturnValue(), -[HKDisplayType objectType](self->super._displayType, "objectType"), v5 = objc_claimAutoreleasedReturnValue(), [v5 identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "containsObject:", v6), v6, v5, v4, v7))
  {
    v8 = [(HKUnitPreferenceController *)self->super._unitController unitForDisplayType:self->super._displayType];
    presentation = [(HKDisplayType *)self->super._displayType presentation];
    v10 = [presentation adjustedValueForClientValue:generateValue];

    v11 = MEMORY[0x1E696C348];
    [v10 doubleValue];
    v12 = [v11 quantityWithUnit:v8 doubleValue:?];
    validationController = self->super._validationController;
    objectType = [(HKDisplayType *)self->super._displayType objectType];
    v15 = [(HKManualEntryValidationController *)validationController validateQuantity:v12 ofType:objectType];

    v16 = v15 != 2;
  }

  else
  {
    v16 = 0;
  }

  [(WDAddDataViewController *)self setSavingEnabled:v16];
}

@end