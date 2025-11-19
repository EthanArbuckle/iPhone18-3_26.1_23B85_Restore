@interface HKWorkoutActivity(HKDataMetadataDetailSection)
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKWorkoutActivity(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v115[15] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HKDateFormatterFromTemplate(32);
  v6 = [a1 startDate];
  v7 = [a1 endDate];
  v8 = [v6 isEqualToDate:v7];

  v105 = a1;
  v102 = v5;
  if (v8)
  {
    v9 = [a1 startDate];
    v10 = [v5 stringFromDate:v9];

    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v13 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381C30);
    [v4 addText:v10 detail:v12 baseIdentifier:v13];
  }

  else
  {
    v10 = objc_alloc_init(HKWorkoutDurationNumberFormatter);
    [(HKTimePeriodWithSecondsNumberFormatter *)v10 setAllowMillisecondPrecision:1];
    v14 = [a1 startDate];
    v11 = [v5 stringFromDate:v14];

    v15 = [a1 endDate];
    [v5 stringFromDate:v15];
    v12 = v16 = a1;

    v17 = MEMORY[0x1E696AD98];
    [v16 duration];
    v18 = [v17 numberWithDouble:?];
    v13 = [(HKTimePeriodWithSecondsNumberFormatter *)v10 stringFromNumber:v18 displayType:0 unitController:0];

    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = [v19 localizedStringForKey:@"DURATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v21 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381C48);
    [v4 addText:v13 detail:v20 baseIdentifier:v21];

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = [v22 localizedStringForKey:@"START_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v24 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381C60);
    [v4 addText:v11 detail:v23 baseIdentifier:v24];

    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v26 = [v25 localizedStringForKey:@"END_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v27 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381C78);
    [v4 addText:v12 detail:v26 baseIdentifier:v27];
  }

  obja = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD30]];
  v115[0] = obja;
  v106 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC38]];
  v115[1] = v106;
  v103 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC78]];
  v115[2] = v103;
  v101 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BDC8]];
  v115[3] = v101;
  v100 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCF8]];
  v115[4] = v100;
  v99 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD20]];
  v115[5] = v99;
  v98 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCC8]];
  v115[6] = v98;
  v97 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BCD0]];
  v115[7] = v97;
  v28 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD00]];
  v115[8] = v28;
  v29 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BDA0]];
  v115[9] = v29;
  v30 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BDA8]];
  v115[10] = v30;
  v31 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD88]];
  v115[11] = v31;
  v32 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD90]];
  v115[12] = v32;
  v33 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD98]];
  v115[13] = v33;
  v34 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BDD0]];
  v115[14] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:15];

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v35;
  v36 = [obj countByEnumeratingWithState:&v110 objects:v114 count:16];
  v37 = v105;
  if (!v36)
  {
    goto LABEL_21;
  }

  v38 = v36;
  v39 = *v111;
  v104 = *v111;
  do
  {
    v40 = 0;
    v107 = v38;
    do
    {
      if (*v111 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v110 + 1) + 8 * v40);
      v42 = [v37 statisticsForType:v41];
      if (v42)
      {
        v43 = [v4 displayTypeController];
        v44 = [v43 displayTypeForObjectType:v41];

        v45 = [v4 unitController];
        v46 = [v45 unitForDisplayType:v44];

        v47 = [v41 aggregationStyle];
        if (v47 == 1)
        {
          v48 = [v42 averageQuantity];
LABEL_14:
          v49 = v48;
          [v48 doubleValueForUnit:v46];
          v51 = v50;

          v52 = [v44 presentation];
          v53 = [MEMORY[0x1E696AD98] numberWithDouble:v51];
          v54 = [v52 adjustedValueForDaemonValue:v53];
          [v4 unitController];
          v56 = v55 = v4;
          v57 = HKFormattedStringFromValueForContext(v54, v44, v56, 0, 0, 1);

          v58 = [v55 unitController];
          LOBYTE(v54) = HKFormatterIncludesUnitForDisplayTypeInContext(v44, 1, v58);

          if (v54)
          {
            v59 = v57;
          }

          else
          {
            v60 = [v55 unitController];
            v61 = [v60 localizedDisplayNameForDisplayType:v44 value:0 nameContext:3];

            v59 = HKFormatValueAndUnit(v57, v61);
          }

          v62 = [v44 localization];
          v63 = [v62 displayName];
          v64 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381C90);
          [v55 addText:v59 detail:v63 baseIdentifier:v64];

          v4 = v55;
          v39 = v104;
          v37 = v105;
          v38 = v107;
        }

        else if (!v47)
        {
          v48 = [v42 sumQuantity];
          goto LABEL_14;
        }
      }

      ++v40;
    }

    while (v38 != v40);
    v38 = [obj countByEnumeratingWithState:&v110 objects:v114 count:16];
  }

  while (v38);
LABEL_21:
  v65 = v4;

  v66 = [v37 workoutConfiguration];
  v67 = [v66 locationType];

  if ((v67 - 1) > 2)
  {
    v68 = 0;
  }

  else
  {
    v68 = off_1E81BB630[v67 - 1];
  }

  v69 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v70 = [v69 localizedStringForKey:v68 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v71 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v72 = [v71 localizedStringForKey:@"WORKOUT_SESSION_LOCATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v73 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381CA8);
  [v65 addText:v70 detail:v72 baseIdentifier:v73];

  v74 = [v105 workoutConfiguration];
  v75 = [v74 activityType];

  if (v75 == 46)
  {
    v76 = [v105 workoutConfiguration];
    [v76 swimmingLocationType];
    v77 = _HKWorkoutSwimmingLocationTypeName();
    v78 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v79 = [v78 localizedStringForKey:@"HKSwimmingLocationType" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v80 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381CC0);
    [v65 addText:v77 detail:v79 baseIdentifier:v80];

    v81 = [v65 displayTypeController];
    v82 = [v81 displayTypeWithIdentifier:&unk_1F4384750];

    v83 = [v65 unitController];
    v84 = [v83 unitForDisplayType:v82];

    v85 = [v105 workoutConfiguration];
    v86 = [v85 lapLength];
    [v86 doubleValueForUnit:v84];
    v88 = v87;

    v89 = [v82 presentation];
    v90 = [MEMORY[0x1E696AD98] numberWithDouble:v88];
    v91 = [v89 adjustedValueForDaemonValue:v90];
    v92 = [v65 unitController];
    v93 = HKFormattedStringFromValueForContext(v91, v82, v92, 0, 0, 1);

    v94 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v95 = [v94 localizedStringForKey:@"HKLapLength" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v96 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381CD8);
    [v65 addText:v93 detail:v95 baseIdentifier:v96];
  }
}

@end