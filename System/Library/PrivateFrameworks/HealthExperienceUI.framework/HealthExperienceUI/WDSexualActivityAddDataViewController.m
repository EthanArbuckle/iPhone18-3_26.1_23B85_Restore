@interface WDSexualActivityAddDataViewController
- (WDSexualActivityAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)a3;
@end

@implementation WDSexualActivityAddDataViewController

- (WDSexualActivityAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7
{
  v25[3] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = WDSexualActivityAddDataViewController;
  v7 = [(WDAddDataViewController *)&v24 initWithDisplayType:a3 healthStore:a4 unitController:a5 initialStartDate:a6 dateCache:a7];
  v8 = v7;
  if (v7)
  {
    v9 = [(HKDateCache *)v7->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v10 = HABundle();
    v11 = [v10 localizedStringForKey:@"DATE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
    v12 = [WDAddDataManualEntryItem dateTimeItemWithMaximumDate:v9 displayName:v11];
    dateEntryItem = v8->_dateEntryItem;
    v8->_dateEntryItem = v12;

    [(WDAddDataManualEntryItem *)v8->_dateEntryItem setDelegate:v8];
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"PROTECTION_UNSPECIFIED" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v25[0] = v15;
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"PROTECTION_USED" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v25[1] = v17;
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"PROTECTION_NOT_USED" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v25[2] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];

    v21 = [WDAddDataManualEntryItem multiSelectItemWithEntries:v20 selectedIndex:0];
    protectionUsedEntryItem = v8->_protectionUsedEntryItem;
    v8->_protectionUsedEntryItem = v21;
  }

  return v8;
}

- (id)manualEntryItemsForSection:(int64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    protectionUsedEntryItem = self->_protectionUsedEntryItem;
    p_protectionUsedEntryItem = &protectionUsedEntryItem;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v7[0] = self->_dateEntryItem;
    p_protectionUsedEntryItem = v7;
LABEL_5:
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_protectionUsedEntryItem count:1];
    goto LABEL_7;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v4;
}

- (id)generateHKObjects
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(WDAddDataManualEntryItem *)self->_dateEntryItem generateValue];
  v4 = [(WDAddDataViewController *)self defaultMetadata];
  v5 = v4;
  if (!v4)
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v6 = [v4 mutableCopy];

  v7 = [(WDAddDataManualEntryItem *)self->_protectionUsedEntryItem generateValue];
  v8 = [v7 integerValue];

  if (v8 == 1)
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_8;
    }

    v9 = MEMORY[0x1E695E110];
  }

  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696BB50]];
LABEL_8:
  v10 = MEMORY[0x1E696BF88];
  v11 = [(HKDisplayType *)self->super._displayType sampleType];
  v12 = [v10 categorySampleWithType:v11 value:0 startDate:v3 endDate:v3 metadata:v6];

  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

@end