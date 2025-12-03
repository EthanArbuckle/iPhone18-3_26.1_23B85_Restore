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
  displayTypeController = [v4 displayTypeController];
  sampleType = [self sampleType];
  v7 = [displayTypeController displayTypeForObjectType:sampleType];

  v86 = v4;
  unitController = [v4 unitController];
  v9 = [unitController unitForDisplayType:v7];
  quantity = [self quantity];
  v85 = v9;
  [quantity doubleValueForUnit:v9];
  v12 = v11;

  presentation = [v7 presentation];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v15 = [presentation adjustedValueForDaemonValue:v14];

  if ([v7 displayTypeIdentifier] == 285)
  {

    v15 = 0;
  }

  v82 = v15;
  if ([v7 displayTypeIdentifier] == 275)
  {
    quantity2 = [self quantity];
    v16 = [HKSleepApneaUtilities localizedTitleForBreathingDisturbances:quantity2];
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v18 = [v17 localizedStringForKey:@"LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v92[0] = *MEMORY[0x1E696BC50];
    v92[1] = @"Level";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    HKUIJoinStringsForAutomationIdentifier(v19);
    v21 = v20 = unitController;
    [v86 addText:v16 detail:v18 baseIdentifier:v21];

    unitController = v20;
    v15 = v82;
  }

  percentUnit = [MEMORY[0x1E696C510] percentUnit];
  v23 = [v85 isEqual:percentUnit];

  if (v23)
  {
    objectType = [v7 objectType];
    code = [objectType code];

    if (code == 249)
    {
      +[HKTieredDecimalPrecisionRule numberFormatter];
    }

    else
    {
      +[HKTieredDecimalPrecisionRule percentageFormatter];
    }
    v26 = ;
    v27 = HKFormattedStringFromValueForContext(v15, v7, unitController, 0, v26, 1);
    metadata = [self metadata];
    v29 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696BB38]];
    v30 = v15;
    bOOLValue = [v29 BOOLValue];

    if (bOOLValue)
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

  v26 = HKFormattedStringFromValueForContext(v15, v7, unitController, 0, 0, 1);
  if (HKFormatterIncludesUnitForDisplayTypeInContext(v7, 1, unitController))
  {
    v26 = v26;
    v84 = v26;
    goto LABEL_22;
  }

  v33 = [unitController localizedDisplayNameForDisplayType:v7 value:v15 nameContext:3];
  if ([v7 displayTypeIdentifier] == 2)
  {
    footUnit = [MEMORY[0x1E696C510] footUnit];
    if ([v85 isEqual:footUnit])
    {
    }

    else
    {
      v75 = [self _shouldOmitUnitsInSampleDetailViewForDisplayType:v7];

      if ((v75 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  if ([self _shouldOmitUnitsInSampleDetailViewForDisplayType:v7])
  {
LABEL_18:

    v33 = &stru_1F42FFBE0;
  }

LABEL_19:
  decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x1E696C510] decibelAWeightedSoundPressureLevelUnit];
  v36 = [v85 isEqual:decibelAWeightedSoundPressureLevelUnit];

  if (v36)
  {
    v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v38 = [v37 localizedStringForKey:@"SPL_DECIBEL_UNIT_LONG_FORM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v33 = v38;
  }

  v84 = HKFormatValueAndUnit(v26, v33);

LABEL_22:
  displayTypeIdentifier = [v7 displayTypeIdentifier];
  v40 = [self _titleStringForValueSectionWithDisplayType:v7];
  if (displayTypeIdentifier == 275)
  {
    v91[0] = *MEMORY[0x1E696BC50];
    v91[1] = @"BreathingDisturbanceValue";
    sampleType2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    identifier = HKUIJoinStringsForAutomationIdentifier(sampleType2);
    v43 = v84;
    [v86 addText:v84 detail:v40 baseIdentifier:identifier];
  }

  else
  {
    sampleType2 = [self sampleType];
    identifier = [sampleType2 identifier];
    v90[0] = identifier;
    v90[1] = @"Sample";
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    v45 = HKUIJoinStringsForAutomationIdentifier(v44);
    [v86 addText:v84 detail:v40 baseIdentifier:v45];

    v43 = v84;
  }

  if ([v7 displayTypeIdentifier] == 249)
  {
    quantity3 = [self quantity];
    v47 = [HKMobilityUtilities classificationForAppleWalkingSteadinessQuantity:quantity3];

    v48 = [HKMobilityUtilities localizedTitleForClassification:v47];
    if (v48)
    {
      v80 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v49 = [v80 localizedStringForKey:@"LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      sampleType3 = [self sampleType];
      identifier2 = [sampleType3 identifier];
      v89[0] = identifier2;
      v89[1] = @"SteadinessLevel";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
      selfCopy = self;
      v54 = v53 = unitController;
      v55 = HKUIJoinStringsForAutomationIdentifier(v54);
      [v86 addText:v48 detail:v49 baseIdentifier:v55];

      unitController = v53;
      self = selfCopy;

      v43 = v84;
    }
  }

  if ([v7 displayTypeIdentifier] == 248)
  {
    v56 = objc_alloc(MEMORY[0x1E696AB80]);
    startDate = [self startDate];
    endDate = [self endDate];
    v59 = [v56 initWithStartDate:startDate endDate:endDate];

    _timeZone = [self _timeZone];
    calendarCache = [v86 calendarCache];
    v81 = _timeZone;
    v62 = [calendarCache calendarForTimeZone:_timeZone];

    v63 = MEMORY[0x1E696AB80];
    calendarCache2 = [v86 calendarCache];
    currentCalendar = [calendarCache2 currentCalendar];
    v79 = v62;
    v66 = [v63 hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:v59 sourceCalendar:v62 localCalendar:currentCalendar];

    if (v66)
    {
      hk_mediumDateStyleIntervalFormatter = [MEMORY[0x1E696AB88] hk_mediumDateStyleIntervalFormatter];
      v68 = [hk_mediumDateStyleIntervalFormatter stringFromDateInterval:v66];
      if (v68)
      {
        v77 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v69 = [v77 localizedStringForKey:@"AFIB_BURDEN_DATE_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
        sampleType4 = [self sampleType];
        [sampleType4 identifier];
        v70 = v78 = unitController;
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

        unitController = v78;
      }
    }

    else
    {
      _HKInitializeLogging();
      hk_mediumDateStyleIntervalFormatter = HKLogWellnessDashboard();
      if (os_log_type_enabled(hk_mediumDateStyleIntervalFormatter, OS_LOG_TYPE_FAULT))
      {
        [HKQuantitySample(HKDataMetadataDetailSection) addDetailValuesToSection:hk_mediumDateStyleIntervalFormatter];
      }
    }
  }

  v87.receiver = self;
  v87.super_class = &off_1F4457A98;
  objc_msgSendSuper2(&v87, sel_addDetailValuesToSection_, v86);
}

- (id)_titleStringForValueSectionWithDisplayType:()HKDataMetadataDetailSection
{
  v3 = a3;
  if ([v3 displayTypeIdentifier] == 275)
  {
    localization = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    [localization localizedStringForKey:@"SLEEP_BREATHING_DISTURBANCES_SAMPLE_DETAIL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
  }

  else
  {
    localization = [v3 localization];
    [localization displayName];
  }
  v5 = ;

  return v5;
}

- (id)detailFooter
{
  sampleType = [self sampleType];
  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC58]];
  v3 = [sampleType isEqual:v2];

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