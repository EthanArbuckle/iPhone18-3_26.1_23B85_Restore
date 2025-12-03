@interface WDElectrocardiogramAddDataViewController
- (WDElectrocardiogramAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (id)builderFromDataFile:(id)file startDate:(id)date;
- (id)manualEntryItemsForSection:(int64_t)section;
- (id)symptomSamplesForElectrocardiogram:(id)electrocardiogram;
- (void)saveHKObjectWithCompletion:(id)completion;
@end

@implementation WDElectrocardiogramAddDataViewController

- (WDElectrocardiogramAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  v35[7] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = WDElectrocardiogramAddDataViewController;
  v7 = [(WDAddDataViewController *)&v34 initWithDisplayType:type healthStore:store unitController:controller initialStartDate:date dateCache:cache];
  v8 = v7;
  if (v7)
  {
    oneMinuteBeforeEndOfDayMidnight = [(HKDateCache *)v7->super._dateCache oneMinuteBeforeEndOfDayMidnight];
    v10 = HABundle();
    v11 = [v10 localizedStringForKey:@"DATE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
    v12 = [WDAddDataManualEntryItem dateTimeItemWithMaximumDate:oneMinuteBeforeEndOfDayMidnight displayName:v11];
    dateEntryItem = v8->_dateEntryItem;
    v8->_dateEntryItem = v12;

    [(WDAddDataManualEntryItem *)v8->_dateEntryItem setDelegate:v8];
    v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v32 = [v33 localizedStringForKey:@"SINUS_RHYTHM" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v35[0] = v32;
    v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v30 = [v31 localizedStringForKey:@"HIGH_HEART_RATE" value:&stru_1F3823B88 table:@"HealthUI-Localizable-Cinnamon"];
    v29 = HKConditionallyRedactedHeartRhythmString();
    v35[1] = v29;
    v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v27 = [v28 localizedStringForKey:@"ATRIAL_FIBRILLATION" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v35[2] = v27;
    v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v26 localizedStringForKey:@"INCONCLUSIVE_LOW_HEART_RATE" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v35[3] = v14;
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"INCONCLUSIVE_HIGH_HEART_RATE" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v35[4] = v16;
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v18 = [v17 localizedStringForKey:@"INCONCLUSIVE_POOR_RECORDING" value:&stru_1F3823B88 table:@"HealthUI-Localizable-Cinnamon"];
    v19 = HKConditionallyRedactedHeartRhythmString();
    v35[5] = v19;
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v21 = [v20 localizedStringForKey:@"INCONCLUSIVE" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
    v35[6] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:7];

    v23 = [WDAddDataManualEntryItem multiSelectItemWithEntries:v22 selectedIndex:0];
    electrocardiogramClassificationEntryItem = v8->_electrocardiogramClassificationEntryItem;
    v8->_electrocardiogramClassificationEntryItem = v23;
  }

  return v8;
}

- (id)manualEntryItemsForSection:(int64_t)section
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!section)
  {
    electrocardiogramClassificationEntryItem = self->_electrocardiogramClassificationEntryItem;
    p_electrocardiogramClassificationEntryItem = &electrocardiogramClassificationEntryItem;
    goto LABEL_5;
  }

  if (section == 1)
  {
    v7[0] = self->_dateEntryItem;
    p_electrocardiogramClassificationEntryItem = v7;
LABEL_5:
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_electrocardiogramClassificationEntryItem count:1];
    goto LABEL_7;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v4;
}

- (void)saveHKObjectWithCompletion:(id)completion
{
  v30[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  generateValue = [(WDAddDataManualEntryItem *)self->_dateEntryItem generateValue];
  generateValue2 = [(WDAddDataManualEntryItem *)self->_electrocardiogramClassificationEntryItem generateValue];
  integerValue = [generateValue2 integerValue];

  if (integerValue > 6)
  {
    v8 = 0;
    v9 = 0;
    v7 = 65.0;
  }

  else
  {
    v7 = dbl_1BA4B2350[integerValue];
    v8 = off_1E7EEB268[integerValue];
    v9 = qword_1BA4B2388[integerValue];
  }

  v10 = [(WDElectrocardiogramAddDataViewController *)self builderFromDataFile:v8 startDate:generateValue];
  v29 = *MEMORY[0x1E696C6F8];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:136];
  v30[0] = v11;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];

  v12 = [MEMORY[0x1E696C348] _quantityWithBeatsPerMinute:v7];
  [v10 addAverageHeartRate:v12];
  [v10 addClassification:v9];
  v13 = [v10 finishWithDevice:0 metadata:v23];
  hk_heartRhythmDefaults = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  [hk_heartRhythmDefaults setObject:&unk_1F38464F8 forKey:*MEMORY[0x1E696B7C8]];

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
  v16 = [(WDElectrocardiogramAddDataViewController *)self symptomSamplesForElectrocardiogram:v13];
  v17 = [v16 hk_map:&__block_literal_global_1];
  [v13 UUID];
  v19 = v18 = generateValue;
  v27 = v19;
  v28 = v17;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  [v15 addObjectsFromArray:v16];
  healthStore = self->super._healthStore;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__WDElectrocardiogramAddDataViewController_saveHKObjectWithCompletion___block_invoke_2;
  v25[3] = &unk_1E7EEB140;
  v26 = completionCopy;
  v22 = completionCopy;
  [(HKHealthStore *)healthStore saveObjects:v15 deleteObjects:0 associations:v20 completion:v25];
  [v13 _setSymptomsStatus:2];
}

- (id)builderFromDataFile:(id)file startDate:(id)date
{
  dateCopy = date;
  fileCopy = file;
  v7 = HABundle();
  v8 = [v7 URLForResource:fileCopy withExtension:@"eadf"];

  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8];
  v10 = [objc_alloc(MEMORY[0x1E696C120]) initWithData:v9];
  v11 = [v10 newBuilderWithStartDate:dateCopy];

  return v11;
}

- (id)symptomSamplesForElectrocardiogram:(id)electrocardiogram
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696BF88];
  v4 = MEMORY[0x1E696BF90];
  v5 = *MEMORY[0x1E696B688];
  electrocardiogramCopy = electrocardiogram;
  v7 = [v4 categoryTypeForIdentifier:v5];
  startDate = [electrocardiogramCopy startDate];
  endDate = [electrocardiogramCopy endDate];
  device = [electrocardiogramCopy device];
  metadata = [electrocardiogramCopy metadata];
  v12 = [v3 categorySampleWithType:v7 value:0 startDate:startDate endDate:endDate device:device metadata:metadata];

  v13 = MEMORY[0x1E696BF88];
  v14 = [MEMORY[0x1E696BF90] categoryTypeForIdentifier:*MEMORY[0x1E696B5B8]];
  startDate2 = [electrocardiogramCopy startDate];
  endDate2 = [electrocardiogramCopy endDate];
  device2 = [electrocardiogramCopy device];
  metadata2 = [electrocardiogramCopy metadata];

  v19 = [v13 categorySampleWithType:v14 value:0 startDate:startDate2 endDate:endDate2 device:device2 metadata:metadata2];

  v22[0] = v12;
  v22[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

  return v20;
}

@end