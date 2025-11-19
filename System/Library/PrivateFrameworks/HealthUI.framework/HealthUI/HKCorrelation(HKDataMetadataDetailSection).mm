@interface HKCorrelation(HKDataMetadataDetailSection)
- (void)_hk_bloodPressureDetailRowForSampleType:()HKDataMetadataDetailSection title:section:;
- (void)_hk_bloodPressureDetailRowsWithSection:()HKDataMetadataDetailSection;
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKCorrelation(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  v5 = [a1 sampleType];
  v6 = [v5 code];

  if (v6 == 80)
  {
    [a1 _hk_bloodPressureDetailRowsWithSection:v4];
  }

  v7.receiver = a1;
  v7.super_class = &off_1F4457C38;
  objc_msgSendSuper2(&v7, sel_addDetailValuesToSection_, v4);
}

- (void)_hk_bloodPressureDetailRowsWithSection:()HKDataMetadataDetailSection
{
  v4 = MEMORY[0x1E696C2E0];
  v5 = *MEMORY[0x1E696BC90];
  v6 = a3;
  v7 = [v4 quantityTypeForIdentifier:v5];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"SYSTOLIC" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [a1 _hk_bloodPressureDetailRowForSampleType:v7 title:v9 section:v6];

  v12 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"DIASTOLIC" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [a1 _hk_bloodPressureDetailRowForSampleType:v12 title:v11 section:v6];
}

- (void)_hk_bloodPressureDetailRowForSampleType:()HKDataMetadataDetailSection title:section:
{
  v34[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 objectsForType:v8];
  v12 = [v11 anyObject];

  if (v12)
  {
    v13 = [v10 displayTypeController];
    v14 = [v13 displayTypeWithIdentifier:&unk_1F4384768];

    v15 = [v10 unitController];
    v33 = [v15 unitForDisplayType:v14];

    v16 = [v12 quantity];
    [v16 doubleValueForUnit:v33];
    v18 = v17;

    v19 = [v14 presentation];
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v32 = [v19 adjustedValueForDaemonValue:v20];

    v21 = [v10 unitController];
    v31 = HKFormattedStringFromValueForContext(v32, v14, v21, 0, 0, 1);

    v22 = [v10 unitController];
    v23 = [v22 localizedDisplayNameForDisplayType:v14 value:0 nameContext:3];

    v24 = HKFormatValueAndUnit(v31, v23);
    v25 = [v8 identifier];
    v34[0] = v25;
    v34[1] = @"Value";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v26 = v12;
    v27 = v8;
    v29 = v28 = v9;
    v30 = HKUIJoinStringsForAutomationIdentifier(v29);
    [v10 addText:v24 detail:v28 baseIdentifier:v30];

    v9 = v28;
    v8 = v27;
    v12 = v26;
  }
}

@end