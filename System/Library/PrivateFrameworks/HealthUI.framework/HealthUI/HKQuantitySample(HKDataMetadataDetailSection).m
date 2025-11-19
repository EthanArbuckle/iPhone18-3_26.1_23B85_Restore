@interface HKQuantitySample(HKDataMetadataDetailSection)
- (id)_titleStringForValueSectionWithDisplayType:()HKDataMetadataDetailSection;
- (id)detailFooter;
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKQuantitySample(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v92[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 displayTypeController];
  v6 = [a1 sampleType];
  v7 = [v5 displayTypeForObjectType:v6];

  v86 = v4;
  v8 = [v4 unitController];
  v9 = [v8 unitForDisplayType:v7];
  v10 = [a1 quantity];
  v85 = v9;
  [v10 doubleValueForUnit:v9];
  v12 = v11;

  v13 = [v7 presentation];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v15 = [v13 adjustedValueForDaemonValue:v14];

  if ([v7 displayTypeIdentifier] == 285)
  {

    v15 = 0;
  }

  v82 = v15;
  if ([v7 displayTypeIdentifier] == 275)
  {
    v83 = [a1 quantity];
    v16 = [HKSleepApneaUtilities localizedTitleForBreathingDisturbances:v83];
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v18 = [v17 localizedStringForKey:@"LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v92[0] = *MEMORY[0x1E696BC50];
    v92[1] = @"Level";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    HKUIJoinStringsForAutomationIdentifier(v19);
    v21 = v20 = v8;
    [v86 addText:v16 detail:v18 baseIdentifier:v21];

    v8 = v20;
    v15 = v82;
  }

  v22 = [MEMORY[0x1E696C510] percentUnit];
  v23 = [v85 isEqual:v22];

  if (v23)
  {
    v24 = [v7 objectType];
    v25 = [v24 code];

    if (v25 == 249)
    {
      +[HKTieredDecimalPrecisionRule numberFormatter];
    }

    else
    {
      +[HKTieredDecimalPrecisionRule percentageFormatter];
    }
    v26 = ;
    v27 = HKFormattedStringFromValueForContext(v15, v7, v8, 0, v26, 1);
    v28 = [a1 metadata];
    v29 = [v28 objectForKeyedSubscript:*MEMORY[0x1E696BB38]];
    v30 = v15;
    v31 = [v29 BOOLValue];

    if (v31)
    {
      v32 = HKAFibBurdenClampedLowerBoundLocalizedString(v30);

      v84 = v32;
    }

    else
    {
      v84 = v27;
    }

    goto LABEL_22;
  }

  v26 = HKFormattedStringFromValueForContext(v15, v7, v8, 0, 0, 1);
  if (HKFormatterIncludesUnitForDisplayTypeInContext(v7, 1, v8))
  {
    v26 = v26;
    v84 = v26;
    goto LABEL_22;
  }

  v33 = [v8 localizedDisplayNameForDisplayType:v7 value:v15 nameContext:3];
  if ([v7 displayTypeIdentifier] == 2)
  {
    v34 = [MEMORY[0x1E696C510] footUnit];
    if ([v85 isEqual:v34])
    {
    }

    else
    {
      v75 = [a1 _shouldOmitUnitsInSampleDetailViewForDisplayType:v7];

      if ((v75 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  if ([a1 _shouldOmitUnitsInSampleDetailViewForDisplayType:v7])
  {
LABEL_18:

    v33 = &stru_1F42FFBE0;
  }

LABEL_19:
  v35 = [MEMORY[0x1E696C510] decibelAWeightedSoundPressureLevelUnit];
  v36 = [v85 isEqual:v35];

  if (v36)
  {
    v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v38 = [v37 localizedStringForKey:@"SPL_DECIBEL_UNIT_LONG_FORM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v33 = v38;
  }

  v84 = HKFormatValueAndUnit(v26, v33);

LABEL_22:
  v39 = [v7 displayTypeIdentifier];
  v40 = [a1 _titleStringForValueSectionWithDisplayType:v7];
  if (v39 == 275)
  {
    v91[0] = *MEMORY[0x1E696BC50];
    v91[1] = @"BreathingDisturbanceValue";
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    v42 = HKUIJoinStringsForAutomationIdentifier(v41);
    v43 = v84;
    [v86 addText:v84 detail:v40 baseIdentifier:v42];
  }

  else
  {
    v41 = [a1 sampleType];
    v42 = [v41 identifier];
    v90[0] = v42;
    v90[1] = @"Sample";
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    v45 = HKUIJoinStringsForAutomationIdentifier(v44);
    [v86 addText:v84 detail:v40 baseIdentifier:v45];

    v43 = v84;
  }

  if ([v7 displayTypeIdentifier] == 249)
  {
    v46 = [a1 quantity];
    v47 = [HKMobilityUtilities classificationForAppleWalkingSteadinessQuantity:v46];

    v48 = [HKMobilityUtilities localizedTitleForClassification:v47];
    if (v48)
    {
      v80 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v49 = [v80 localizedStringForKey:@"LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v50 = [a1 sampleType];
      v51 = [v50 identifier];
      v89[0] = v51;
      v89[1] = @"SteadinessLevel";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
      v52 = a1;
      v54 = v53 = v8;
      v55 = HKUIJoinStringsForAutomationIdentifier(v54);
      [v86 addText:v48 detail:v49 baseIdentifier:v55];

      v8 = v53;
      a1 = v52;

      v43 = v84;
    }
  }

  if ([v7 displayTypeIdentifier] == 248)
  {
    v56 = objc_alloc(MEMORY[0x1E696AB80]);
    v57 = [a1 startDate];
    v58 = [a1 endDate];
    v59 = [v56 initWithStartDate:v57 endDate:v58];

    v60 = [a1 _timeZone];
    v61 = [v86 calendarCache];
    v81 = v60;
    v62 = [v61 calendarForTimeZone:v60];

    v63 = MEMORY[0x1E696AB80];
    v64 = [v86 calendarCache];
    v65 = [v64 currentCalendar];
    v79 = v62;
    v66 = [v63 hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:v59 sourceCalendar:v62 localCalendar:v65];

    if (v66)
    {
      v67 = [MEMORY[0x1E696AB88] hk_mediumDateStyleIntervalFormatter];
      v68 = [v67 stringFromDateInterval:v66];
      if (v68)
      {
        v77 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v69 = [v77 localizedStringForKey:@"AFIB_BURDEN_DATE_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
        v76 = [a1 sampleType];
        [v76 identifier];
        v70 = v78 = v8;
        v88[0] = v70;
        v88[1] = @"DateRange";
        v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
        HKUIJoinStringsForAutomationIdentifier(v71);
        v72 = v7;
        v74 = v73 = v59;
        [v86 addText:v68 detail:v69 baseIdentifier:v74];

        v59 = v73;
        v7 = v72;
        v43 = v84;

        v8 = v78;
      }
    }

    else
    {
      _HKInitializeLogging();
      v67 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        [HKQuantitySample(HKDataMetadataDetailSection) addDetailValuesToSection:v67];
      }
    }
  }

  v87.receiver = a1;
  v87.super_class = &off_1F4457A98;
  objc_msgSendSuper2(&v87, sel_addDetailValuesToSection_, v86);
}

- (id)_titleStringForValueSectionWithDisplayType:()HKDataMetadataDetailSection
{
  v3 = a3;
  if ([v3 displayTypeIdentifier] == 275)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    [v4 localizedStringForKey:@"SLEEP_BREATHING_DISTURBANCES_SAMPLE_DETAIL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
  }

  else
  {
    v4 = [v3 localization];
    [v4 displayName];
  }
  v5 = ;

  return v5;
}

- (id)detailFooter
{
  v1 = [a1 sampleType];
  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC58]];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"SLEEPING_WRIST_TEMPERATURE_METADATA_DETAIL_FOOTER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end