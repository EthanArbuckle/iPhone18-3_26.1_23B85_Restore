@interface WDInsulinDeliveryAddDataViewController
- (WDAddDataManualEntryItem)dateTimeEntryItem;
- (WDAddDataManualEntrySpinner)deliveryReasonEntryItem;
- (id)defaultMetadata;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)a3;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)manualEntryItemDidUpdate:(id)a3;
- (void)validateDataWithCompletion:(id)a3;
@end

@implementation WDInsulinDeliveryAddDataViewController

- (WDAddDataManualEntryItem)dateTimeEntryItem
{
  dateTimeEntryItem = self->_dateTimeEntryItem;
  if (!dateTimeEntryItem)
  {
    v4 = [(HKDateCache *)self->super.super._dateCache endOfDayMidnight];
    v5 = [WDAddDataManualEntryItem twoPartDateRangeItemWithMaximumEndDate:v4];
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
  v3 = [(WDAddDataViewController *)&v10 defaultMetadata];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v5 = [v3 mutableCopy];

  v6 = MEMORY[0x1E696AD98];
  v7 = [(WDInsulinDeliveryAddDataViewController *)self deliveryReasonEntryItem];
  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "_wd_deliveryReason")}];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696BB08]];

  return v5;
}

- (id)manualEntryItemsForSection:(int64_t)a3
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [(WDInsulinDeliveryAddDataViewController *)self dateTimeEntryItem];
    v6 = [(WDDisplayTypeAddDataViewController *)self valueFieldManualEntryItem];
    v9[1] = v6;
    v7 = [(WDInsulinDeliveryAddDataViewController *)self deliveryReasonEntryItem];
    v9[2] = v7;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  }

  return v3;
}

- (id)generateHKObjects
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [(WDInsulinDeliveryAddDataViewController *)self dateTimeEntryItem];
  v4 = [v3 generateValue];

  v5 = [(WDInsulinDeliveryAddDataViewController *)self defaultMetadata];
  v6 = [(WDDisplayTypeAddDataViewController *)self valueFieldManualEntryItem];
  v7 = [v6 generateValue];

  v8 = [(HKDisplayType *)self->super.super._displayType presentation];
  v9 = [v8 adjustedValueForClientValue:v7];

  v10 = [(HKUnitPreferenceController *)self->super.super._unitController unitForDisplayType:self->super.super._displayType];
  v11 = MEMORY[0x1E696C348];
  [v9 doubleValue];
  v12 = [v11 quantityWithUnit:v10 doubleValue:?];
  v13 = MEMORY[0x1E696C358];
  v14 = [(HKDisplayType *)self->super.super._displayType sampleType];
  v15 = [v4 startDate];
  v16 = [v4 endDate];
  v17 = [v13 quantitySampleWithType:v14 quantity:v12 startDate:v15 endDate:v16 metadata:v5];

  v20[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  return v18;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4)
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

- (void)manualEntryItemDidUpdate:(id)a3
{
  v13.receiver = self;
  v13.super_class = WDInsulinDeliveryAddDataViewController;
  [(WDDisplayTypeAddDataViewController *)&v13 manualEntryItemDidUpdate:a3];
  v4 = [(WDInsulinDeliveryAddDataViewController *)self dateTimeEntryItem];
  v5 = [v4 generateValue];

  v6 = [v5 endDate];
  v7 = [v5 startDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  validationController = self->super.super._validationController;
  v11 = [(HKDisplayType *)self->super.super._displayType sampleType];
  v12 = [(HKManualEntryValidationController *)validationController validateMinimumAllowedDuration:v11 ofType:v9]!= 2;

  [(WDAddDataViewController *)self setSavingEnabled:v12];
}

- (void)validateDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WDInsulinDeliveryAddDataViewController *)self dateTimeEntryItem];
  v6 = [v5 generateValue];

  objc_initWeak(&location, self);
  v7 = [v6 startDate];
  v8 = [v6 endDate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__WDInsulinDeliveryAddDataViewController_validateDataWithCompletion___block_invoke;
  v10[3] = &unk_1E7EEB4A8;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v10[4] = self;
  v11 = v9;
  [(WDAddDataViewController *)self validateMaximumAllowedDurationFor:v7 endDate:v8 competion:v10];

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