@interface WDInsulinDeliveryAddDataViewController
- (WDAddDataManualEntryItem)dateTimeEntryItem;
- (WDAddDataManualEntrySpinner)deliveryReasonEntryItem;
- (id)defaultMetadata;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)section;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)manualEntryItemDidUpdate:(id)update;
- (void)validateDataWithCompletion:(id)completion;
@end

@implementation WDInsulinDeliveryAddDataViewController

- (WDAddDataManualEntryItem)dateTimeEntryItem
{
  dateTimeEntryItem = self->_dateTimeEntryItem;
  if (!dateTimeEntryItem)
  {
    endOfDayMidnight = [(HKDateCache *)self->super.super._dateCache endOfDayMidnight];
    v5 = [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:endOfDayMidnight];
    v6 = self->_dateTimeEntryItem;
    self->_dateTimeEntryItem = v5;

    [(WDAddDataManualEntryItem *)self->_dateTimeEntryItem setDelegate:self];
    dateTimeEntryItem = self->_dateTimeEntryItem;
  }

  return dateTimeEntryItem;
}

- (WDAddDataManualEntrySpinner)deliveryReasonEntryItem
{
  deliveryReasonEntryItem = self->_deliveryReasonEntryItem;
  if (!deliveryReasonEntryItem)
  {
    v4 = [WDAddDataManualEntrySpinner alloc];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:*MEMORY[0x1E696BB08] value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v7 = [(WDAddDataManualEntrySpinner *)v4 initWithDisplayName:v6];
    v8 = self->_deliveryReasonEntryItem;
    self->_deliveryReasonEntryItem = v7;

    [(WDAddDataManualEntrySpinner *)self->_deliveryReasonEntryItem setDataSource:self];
    [(WDAddDataManualEntrySpinner *)self->_deliveryReasonEntryItem set_wd_deliveryReason:2];
    deliveryReasonEntryItem = self->_deliveryReasonEntryItem;
  }

  return deliveryReasonEntryItem;
}

- (id)defaultMetadata
{
  v10.receiver = self;
  v10.super_class = WDInsulinDeliveryAddDataViewController;
  defaultMetadata = [(WDAddDataViewController *)&v10 defaultMetadata];
  v4 = defaultMetadata;
  if (!defaultMetadata)
  {
    defaultMetadata = MEMORY[0x1E695E0F8];
  }

  v5 = [defaultMetadata mutableCopy];

  v6 = MEMORY[0x1E696AD98];
  deliveryReasonEntryItem = [(WDInsulinDeliveryAddDataViewController *)self deliveryReasonEntryItem];
  v8 = [v6 numberWithInteger:{objc_msgSend(deliveryReasonEntryItem, "_wd_deliveryReason")}];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696BB08]];

  return v5;
}

- (id)manualEntryItemsForSection:(int64_t)section
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (section)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    dateTimeEntryItem = [(WDInsulinDeliveryAddDataViewController *)self dateTimeEntryItem];
    valueFieldManualEntryItem = [(WDDisplayTypeAddDataViewController *)self valueFieldManualEntryItem];
    v9[1] = valueFieldManualEntryItem;
    deliveryReasonEntryItem = [(WDInsulinDeliveryAddDataViewController *)self deliveryReasonEntryItem];
    v9[2] = deliveryReasonEntryItem;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  }

  return v3;
}

- (id)generateHKObjects
{
  v20[1] = *MEMORY[0x1E69E9840];
  dateTimeEntryItem = [(WDInsulinDeliveryAddDataViewController *)self dateTimeEntryItem];
  generateValue = [dateTimeEntryItem generateValue];

  defaultMetadata = [(WDInsulinDeliveryAddDataViewController *)self defaultMetadata];
  valueFieldManualEntryItem = [(WDDisplayTypeAddDataViewController *)self valueFieldManualEntryItem];
  generateValue2 = [valueFieldManualEntryItem generateValue];

  presentation = [(HKDisplayType *)self->super.super._displayType presentation];
  v9 = [presentation adjustedValueForClientValue:generateValue2];

  v10 = [(HKUnitPreferenceController *)self->super.super._unitController unitForDisplayType:self->super.super._displayType];
  v11 = MEMORY[0x1E696C348];
  [v9 doubleValue];
  v12 = [v11 quantityWithUnit:v10 doubleValue:?];
  v13 = MEMORY[0x1E696C358];
  sampleType = [(HKDisplayType *)self->super.super._displayType sampleType];
  startDate = [generateValue startDate];
  endDate = [generateValue endDate];
  v17 = [v13 quantitySampleWithType:sampleType quantity:v12 startDate:startDate endDate:endDate metadata:defaultMetadata];

  v20[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  return v18;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section)
  {
    v4 = 0;
  }

  else
  {
    v5 = HABundle();
    v4 = [v5 localizedStringForKey:@"INSULIN_DELIVERY_REASON_HELP_TEXT" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  }

  return v4;
}

- (void)manualEntryItemDidUpdate:(id)update
{
  v13.receiver = self;
  v13.super_class = WDInsulinDeliveryAddDataViewController;
  [(WDDisplayTypeAddDataViewController *)&v13 manualEntryItemDidUpdate:update];
  dateTimeEntryItem = [(WDInsulinDeliveryAddDataViewController *)self dateTimeEntryItem];
  generateValue = [dateTimeEntryItem generateValue];

  endDate = [generateValue endDate];
  startDate = [generateValue startDate];
  [endDate timeIntervalSinceDate:startDate];
  v9 = v8;

  validationController = self->super.super._validationController;
  sampleType = [(HKDisplayType *)self->super.super._displayType sampleType];
  v12 = [(HKManualEntryValidationController *)validationController validateMinimumAllowedDuration:sampleType ofType:v9]!= 2;

  [(WDAddDataViewController *)self setSavingEnabled:v12];
}

- (void)validateDataWithCompletion:(id)completion
{
  completionCopy = completion;
  dateTimeEntryItem = [(WDInsulinDeliveryAddDataViewController *)self dateTimeEntryItem];
  generateValue = [dateTimeEntryItem generateValue];

  objc_initWeak(&location, self);
  startDate = [generateValue startDate];
  endDate = [generateValue endDate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__WDInsulinDeliveryAddDataViewController_validateDataWithCompletion___block_invoke;
  v10[3] = &unk_1E7EEB4A8;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v10[4] = self;
  v11 = v9;
  [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:startDate endDate:endDate competion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__WDInsulinDeliveryAddDataViewController_validateDataWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = *(a1 + 40);
      v8.receiver = *(a1 + 32);
      v8.super_class = WDInsulinDeliveryAddDataViewController;
      objc_msgSendSuper2(&v8, sel_validateDataWithCompletion_, v7);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

@end