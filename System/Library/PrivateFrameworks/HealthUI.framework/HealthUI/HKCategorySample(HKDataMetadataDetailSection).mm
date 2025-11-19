@interface HKCategorySample(HKDataMetadataDetailSection)
- (void)_addDefaultCategoryDetailValuesToSection:()HKDataMetadataDetailSection;
- (void)_addHeartEventDetailValuesToSection:()HKDataMetadataDetailSection;
- (void)_addWalkingSteadinessEventDetailValuesToSection:()HKDataMetadataDetailSection;
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKCategorySample(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  v5 = [a1 sampleType];
  v6 = [v5 code];

  if (v6 != 140)
  {
    if (v6 == 250)
    {
      [a1 _addWalkingSteadinessEventDetailValuesToSection:v4];
      goto LABEL_7;
    }

    if (v6 != 147)
    {
      [a1 _addDefaultCategoryDetailValuesToSection:v4];
      goto LABEL_7;
    }
  }

  [a1 _addHeartEventDetailValuesToSection:v4];
LABEL_7:
  v7.receiver = a1;
  v7.super_class = &off_1F4457820;
  objc_msgSendSuper2(&v7, sel_addDetailValuesToSection_, v4);
}

- (void)_addDefaultCategoryDetailValuesToSection:()HKDataMetadataDetailSection
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 displayTypeController];
  v6 = [a1 sampleType];
  v7 = [v5 displayTypeForObjectType:v6];

  v8 = [v7 hk_enumeratedValueLabels];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "value")}];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v7 localization];
  v12 = [v11 displayName];

  if ([v10 length])
  {
    v13 = [a1 sampleType];
    v14 = [v13 identifier];
    v17[0] = v14;
    v17[1] = @"DisplayType";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v16 = HKUIJoinStringsForAutomationIdentifier(v15);
    [v4 addText:v10 detail:v12 baseIdentifier:v16];
  }
}

- (void)_addHeartEventDetailValuesToSection:()HKDataMetadataDetailSection
{
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"BEATS_PER_MINUTE_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = v6;
  v10 = a1;
  v11 = [v9 localizedStringWithFormat:v8, 0];

  v12 = [a1 metadata];
  v13 = *MEMORY[0x1E696C730];
  v14 = [v12 objectForKey:*MEMORY[0x1E696C730]];

  if (v14)
  {
    v15 = HKFormatValueAndUnit(v14, v11);
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:v13 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v18 = [a1 sampleType];
    [v18 identifier];
    v41 = a1;
    v20 = v19 = v5;
    v45[0] = v20;
    v45[1] = @"Range";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    v21 = v14;
    v23 = v22 = v11;
    v24 = HKUIJoinStringsForAutomationIdentifier(v23);
    [v4 addText:v15 detail:v17 baseIdentifier:v24];

    v11 = v22;
    v14 = v21;

    v5 = v19;
    v10 = v41;
  }

  v25 = [v10 metadata];
  v26 = *MEMORY[0x1E696BAC0];
  v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E696BAC0]];
  v43 = v4;
  if (v27)
  {
    v28 = v27;

LABEL_6:
    [v28 doubleValueForUnit:v5];
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v31 = HKLocalizedStringForNumberWithDecimalPrecision(v30, 0, 0);

    HKFormatValueAndUnit(v31, v11);
    v32 = v42 = v5;
    v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v34 = [v33 localizedStringForKey:v26 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v35 = [v10 sampleType];
    v36 = [v35 identifier];
    v44[0] = v36;
    v44[1] = @"Threshold";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v37 = v14;
    v39 = v38 = v11;
    v40 = HKUIJoinStringsForAutomationIdentifier(v39);
    [v43 addText:v32 detail:v34 baseIdentifier:v40];

    v11 = v38;
    v14 = v37;

    v5 = v42;
    goto LABEL_7;
  }

  v29 = [v10 metadata];
  v28 = [v29 objectForKeyedSubscript:*MEMORY[0x1E696C728]];

  if (v28)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_addWalkingSteadinessEventDetailValuesToSection:()HKDataMetadataDetailSection
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 sampleType];
  v6 = [v5 identifier];

  v7 = [a1 value] - 1;
  if (v7 <= 3 && ([HKMobilityUtilities localizedTitleForClassification:qword_1C3D5DBD0[v7]], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:@"WALKING_STEADINESS_EVENT_VALUE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-WalkingSteadiness"];
    v24[0] = v6;
    v24[1] = @"EventValue";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v13 = HKUIJoinStringsForAutomationIdentifier(v12);
    [v4 addText:v9 detail:v11 baseIdentifier:v13];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x1E696B980];
    if (os_log_type_enabled(*MEMORY[0x1E696B980], OS_LOG_TYPE_FAULT))
    {
      [(HKCategorySample(HKDataMetadataDetailSection) *)v14 _addWalkingSteadinessEventDetailValuesToSection:a1];
    }
  }

  v15 = [a1 value] - 1;
  if (v15 <= 3)
  {
    v16 = off_1E81BB610[v15];
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v18 = [v17 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-WalkingSteadiness"];

    if (v18)
    {
      v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v20 = [v19 localizedStringForKey:@"WALKING_STEADINESS_EVENT_TYPE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-WalkingSteadiness"];
      v23[0] = v6;
      v23[1] = @"EventType";
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      v22 = HKUIJoinStringsForAutomationIdentifier(v21);
      [v4 addText:v18 detail:v20 baseIdentifier:v22];
    }
  }
}

- (void)_addWalkingSteadinessEventDetailValuesToSection:()HKDataMetadataDetailSection .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 value];
  _os_log_fault_impl(&dword_1C3942000, v3, OS_LOG_TYPE_FAULT, "Unable to localize classification for category value: %llu", &v4, 0xCu);
}

@end