@interface HKDataMetadataDataSource
- (HKDataMetadataDataSource)initWithSample:(id)sample unitPreferenceController:(id)controller;
- (id)_formattedValueTextForVO2MaxQuantityObject:(id)object key:(id)key section:(id)section;
- (id)_mediaSourceDisplayNamesForSample:(id)sample;
- (void)addAdditionalOxygenSaturationDetailValuesToSection:(id)section key:(id)key value:(id)value;
- (void)addDetailValuesToSection:(id)section;
@end

@implementation HKDataMetadataDataSource

- (HKDataMetadataDataSource)initWithSample:(id)sample unitPreferenceController:(id)controller
{
  sampleCopy = sample;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = HKDataMetadataDataSource;
  v8 = [(HKDataMetadataDataSource *)&v12 init];
  if (v8)
  {
    v9 = [sampleCopy copy];
    sample = v8->_sample;
    v8->_sample = v9;

    objc_storeStrong(&v8->_unitPreferenceController, controller);
  }

  return v8;
}

- (void)addDetailValuesToSection:(id)section
{
  sectionCopy = section;
  metadata = [(HKSample *)self->_sample metadata];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__HKDataMetadataDataSource_addDetailValuesToSection___block_invoke;
  v7[3] = &unk_1E81BB5F0;
  v7[4] = self;
  v8 = sectionCopy;
  v6 = sectionCopy;
  [metadata enumerateKeysAndObjectsUsingBlock:v7];
}

void __53__HKDataMetadataDataSource_addDetailValuesToSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v274[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MACancelDownloadErrorDomain_block_invoke_onceToken != -1)
  {
    __53__HKDataMetadataDataSource_addDetailValuesToSection___block_invoke_cold_1();
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BAF0]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"HEART_RATE_SENSOR_LOCATION_%@", v6];
    v7 = LABEL_7:;
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [(__CFString *)v8 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_8:
    v10 = v9;
LABEL_9:

LABEL_10:
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA60]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"BODY_TEMP_SENSOR_LOCATION_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB78]])
  {
    v7 = [MEMORY[0x1E695DFE8] timeZoneWithName:v6];
    if (!v7)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v18 = [*(*(a1 + 32) + 8) startDate];
    v19 = [v7 isDaylightSavingTimeForDate:v18];

    if (v19)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    v8 = [MEMORY[0x1E695DF58] currentLocale];
    v9 = [v7 localizedName:v20 locale:v8];
    goto LABEL_8;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BBB0]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"HK_WEATHER_CONDITION_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BBC0]])
  {
    v7 = _HKWeatherTemperatureUnit();
    v21 = [MEMORY[0x1E696C510] degreeFahrenheitUnit];
    v22 = [v7 isEqual:v21];
    v23 = @"DEGREES_CELSIUS_NUMBERED_UNIT";
    if (v22)
    {
      v23 = @"DEGREES_FAHRENHEIT_NUMBERED_UNIT";
    }

    v8 = v23;

    if (![v6 isCompatibleWithUnit:v7])
    {
      v10 = 0;
      goto LABEL_9;
    }

    [v6 doubleValueForUnit:v7];
    v25 = v24;
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v27 = HKLocalizedStringForNumberWithDecimalPrecision(v26, 2, 0);

    v28 = MEMORY[0x1E696AEC0];
    v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v30 = [v29 localizedStringForKey:v8 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v31 = [v28 localizedStringWithFormat:v30, v25];

    v10 = HKFormatValueAndUnit(v27, v31);

    goto LABEL_32;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BBB8]])
  {
    v32 = [v6 _unit];
    [v6 doubleValueForUnit:v32];
    v34 = v33;

    v35 = HKIntegerFormatter();
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    v37 = [v35 stringFromNumber:v36];

    v38 = MEMORY[0x1E696AEC0];
    v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v40 = [v39 localizedStringForKey:@"PERCENT_NUMBERED_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v10 = [v38 stringWithFormat:@"%@%@", v37, v40];

    goto LABEL_11;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB10]])
  {
    v41 = [MEMORY[0x1E696C510] meterUnit];
    v42 = [v6 isCompatibleWithUnit:v41];

    if (v42)
    {
      v43 = *(*(a1 + 32) + 8);
      v7 = [*(a1 + 40) displayTypeController];
      v8 = [*(a1 + 40) unitController];
      v9 = [v43 hk_localizedStringForAssociatedDistanceQuantity:v6 displayTypeController:v7 unitController:v8];
      goto LABEL_8;
    }

    goto LABEL_79;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB58]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SWIMMING_LOCATION_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB60]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SWIMMING_STROKE_STYLE_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB08]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"INSULIN_DELIVERY_REASON_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA58]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"MEAL_TIME_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB88]])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"VO2_MAX_TEST_TYPE_%@", v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA48]])
  {
    v44 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
    [v6 doubleValueForUnit:v44];
    v46 = v45;

    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
    v47 = HKLocalizedStringForNumberWithDecimalPrecision(v7, 1, 0);
LABEL_52:
    v10 = v47;
    goto LABEL_10;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB20]])
  {
    v48 = [MEMORY[0x1E696C510] unitFromString:@"lx"];
    [v6 doubleValueForUnit:v48];
    v50 = v49;

    v51 = [*(*(a1 + 32) + 16) healthStore];
    v52 = [HKDisplayTypeController sharedInstanceForHealthStore:v51];
    v258 = [v52 displayTypeWithIdentifier:&unk_1F43846D8];

    v53 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
    v54 = HKFormattedStringFromValue(v53, v258, *(*(a1 + 32) + 16), 0, 0);

    v55 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v56 = [v55 localizedStringForKey:@"MAXIMUM_LIGHT_INTENSITY_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v10 = HKFormatValueAndUnit(v54, v56);
    v57 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v58 = [v57 localizedStringForKey:@"MAXIMUM_LIGHT_INTENSITY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

LABEL_55:
    v11 = 0;
    v5 = v58;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BAC0]])
  {
LABEL_57:
    v10 = 0;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA08]])
  {
    v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v60 = v59;
    v61 = @"ACTIVITY_TYPE";
    v62 = @"HealthUI-Localizable";
    goto LABEL_60;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BB30]])
  {
    v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v66 = @"HealthUI-Localizable";
    v58 = [v65 localizedStringForKey:@"PHYSICAL_EFFORT_ESTIMATION_TYPE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v67 = [v6 unsignedIntegerValue];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"PHYSICAL_EFFORT_ESTIMATION_%ld", v67];
    v70 = LABEL_68:;
    v71 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v71 localizedStringForKey:v70 value:&stru_1F42FFBE0 table:v66];

    goto LABEL_55;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E696BA78]])
  {
    v68 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v66 = @"HealthUI-Localizable";
    v58 = [v68 localizedStringForKey:@"CYCLING_FUNCTIONAL_THRESHOLD_POWER_TEST_TYPE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v69 = [v6 unsignedIntegerValue];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"CYCLING_FUNCTIONAL_THRESHOLD_POWER_TEST_%ld", v69];
    goto LABEL_68;
  }

  v72 = *MEMORY[0x1E696BAC8];
  if ([v5 isEqualToString:*MEMORY[0x1E696BAC8]])
  {
    v73 = [*(*(a1 + 32) + 8) metadata];
    v74 = *MEMORY[0x1E696C720];
    v13 = [v73 objectForKey:*MEMORY[0x1E696C720]];

    v75 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v76 = v75;
    if (v13)
    {
      v15 = [v75 localizedStringForKey:v74 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HEART_RATE_CONTEXT_%@", v13];
      v77 = [v13 integerValue];
      v259 = *(a1 + 40);
      v78 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v79 = v78;
      if (v77 == 9)
      {
        v80 = [v78 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
        v96 = HKConditionallyRedactedHeartRhythmString();
        v273[0] = v72;
        v273[1] = @"StreamingECG";
        v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v273 count:2];
        v100 = HKUIJoinStringsForAutomationIdentifier(v97);
        [v259 addText:v96 detail:v15 baseIdentifier:v100];

LABEL_95:
        v10 = 0;
LABEL_17:

        goto LABEL_18;
      }

      if (v77 == 10)
      {
        v80 = [v78 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];
        v274[0] = v72;
        v274[1] = @"OxygenSaturation";
        v81 = MEMORY[0x1E695DEC8];
        v82 = v274;
      }

      else
      {
        v80 = [v78 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v272[0] = v72;
        v272[1] = @"HeartRateContext";
        v81 = MEMORY[0x1E695DEC8];
        v82 = v272;
      }

      v96 = [v81 arrayWithObjects:v82 count:2];
      v97 = HKUIJoinStringsForAutomationIdentifier(v96);
      v98 = v259;
    }

    else
    {
      v15 = [v75 localizedStringForKey:v72 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HEART_RATE_MOTION_CONTEXT_%@", v6];
      v95 = *(a1 + 40);
      v79 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v80 = [v79 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v271[0] = v72;
      v271[1] = @"Sample";
      v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v271 count:2];
      v97 = HKUIJoinStringsForAutomationIdentifier(v96);
      v98 = v95;
    }

    [v98 addText:v80 detail:v15 baseIdentifier:v97];
    goto LABEL_95;
  }

  v83 = *MEMORY[0x1E696C6D0];
  if ([v5 isEqualToString:*MEMORY[0x1E696C6D0]])
  {
    v84 = [*(a1 + 32) _mediaSourceDisplayNamesForSample:*(*(a1 + 32) + 8)];
    if (!v84)
    {
LABEL_78:

      goto LABEL_79;
    }

    v85 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v86 = [v85 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v87 = *(a1 + 40);
    v270[0] = v83;
    v270[1] = @"Sample";
    v88 = MEMORY[0x1E695DEC8];
    v89 = v270;
LABEL_77:
    v90 = [v88 arrayWithObjects:v89 count:2];
    v91 = HKUIJoinStringsForAutomationIdentifier(v90);
    [v87 addText:v84 detail:v86 baseIdentifier:v91];

    goto LABEL_78;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 isEqualToString:*MEMORY[0x1E696BB68]] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696BB70]))
  {
    if ([MACancelDownloadErrorDomain_block_invoke___metadataKeysExpectingBoolean containsObject:v5])
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      if ([v6 BOOLValue])
      {
        v99 = @"YES";
      }

      else
      {
        v99 = @"NO";
      }

      v47 = [v7 localizedStringForKey:v99 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      goto LABEL_52;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA40]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v101 = MEMORY[0x1E696C510];
        v102 = v6;
        v7 = [v101 decibelAWeightedSoundPressureLevelUnit];
        [v102 doubleValueForUnit:v7];
        v104 = v103;

        v105 = [*(*(a1 + 32) + 16) healthStore];
        v106 = [HKDisplayTypeController sharedInstanceForHealthStore:v105];
        v8 = [v106 displayTypeWithIdentifier:&unk_1F43846F0];

        v107 = [MEMORY[0x1E696AD98] numberWithDouble:v104];
        v27 = HKFormattedStringFromValue(v107, v8, *(*(a1 + 32) + 16), 0, 0);

        v108 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v109 = [v108 localizedStringForKey:@"SPL_DECIBEL_UNIT_LONG_FORM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

        v10 = HKFormatValueAndUnit(v27, v109);

LABEL_32:
        goto LABEL_9;
      }
    }

    if (([v5 isEqualToString:*MEMORY[0x1E696BA98]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696BAA0]))
    {
      v110 = [*(*(a1 + 32) + 16) healthStore];
      v111 = [HKDisplayTypeController sharedInstanceForHealthStore:v110];
      v112 = [v111 displayTypeWithIdentifier:&unk_1F4384708];

      v260 = v112;
      v113 = [*(*(a1 + 32) + 16) unitForDisplayType:v112];
      v114 = [MEMORY[0x1E696C510] mileUnit];
      if ([v113 isEqual:v114])
      {
        [MEMORY[0x1E696C510] footUnit];
      }

      else
      {
        [MEMORY[0x1E696C510] meterUnit];
      }
      v115 = ;

      v116 = [MEMORY[0x1E696C510] mileUnit];
      v117 = [v113 isEqual:v116];
      v118 = @"METERS_NUMBERLESS_UNIT";
      if (v117)
      {
        v118 = @"FEET_NUMBERLESS_UNIT";
      }

      v119 = v118;

      if ([v6 isCompatibleWithUnit:v115])
      {
        [v6 doubleValueForUnit:v115];
        v121 = v120;
        v122 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v255 = HKLocalizedStringForNumberWithDecimalPrecision(v122, 2, 0);

        v123 = MEMORY[0x1E696AEC0];
        v124 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v125 = [v124 localizedStringForKey:v119 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v126 = [v123 localizedStringWithFormat:v125, v121];

        v10 = HKFormatValueAndUnit(v255, v126);
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_11;
    }

    v127 = *MEMORY[0x1E696C6E0];
    if ([v5 isEqualToString:*MEMORY[0x1E696C6E0]])
    {
      v128 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BLOOD_OXYGEN_CONTEXT_%@", v6];
      v84 = [v128 localizedStringForKey:v129 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];

      v130 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v86 = [v130 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];

      v87 = *(a1 + 40);
      v269[0] = v127;
      v269[1] = @"Sample";
      v88 = MEMORY[0x1E695DEC8];
      v89 = v269;
      goto LABEL_77;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA50]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v131 = v6;
        v132 = _HKBarometricPressureUnit();
        v133 = [MEMORY[0x1E696C510] inchesOfMercuryUnit];
        v134 = [v132 isEqual:v133];

        v135 = @"HECTOPASCALS_NUMBERED_UNIT";
        if (v134)
        {
          v135 = @"INCHES_OF_MERCURY_NUMBERED_UNIT";
        }

        v261 = v135;
        if ([v131 isCompatibleWithUnit:v132])
        {
          if (v134)
          {
            v136 = 2;
          }

          else
          {
            v136 = 0;
          }

          [v131 doubleValueForUnit:v132];
          v138 = v137;
          v139 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          v140 = HKLocalizedStringForNumberWithDecimalPrecision(v139, v136, 0);

          v141 = MEMORY[0x1E696AEC0];
          v142 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v143 = [v142 localizedStringForKey:v261 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v144 = [v141 localizedStringWithFormat:v143, v138];

          v10 = HKFormatValueAndUnit(v140, v144);
          v145 = [*(*(a1 + 32) + 8) sampleType];
          v146 = [v145 identifier];
          v11 = v146 == *MEMORY[0x1E696BD58];
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        goto LABEL_12;
      }
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA20]])
    {
      v147 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v148 = [v147 localizedStringForKey:@"ECG_ALGORITHM_VERSION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
      v149 = HKConditionallyRedactedHeartRhythmString();

      v11 = 0;
      v5 = v149;
      goto LABEL_13;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696C750]])
    {
      goto LABEL_57;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BB90]])
    {
      v150 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v151 = v150;
      v152 = @"CARDIO_FITNESS_VALUE";
LABEL_130:
      v63 = [v150 localizedStringForKey:v152 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];

      v64 = [*(a1 + 32) _formattedValueTextForVO2MaxQuantityObject:v6 key:v63 section:*(a1 + 40)];
      goto LABEL_62;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BB18]])
    {
      v150 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v151 = v150;
      v152 = @"CARDIO_FITNESS_NOTIFICATION_THRESHOLD";
      goto LABEL_130;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696C770]])
    {
      v153 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v154 = v153;
      v155 = @"CARDIO_FITNESS_RELATED_MEDICATIONS";
      v156 = @"HealthUI-Localizable-CardioFitness";
LABEL_133:
      v157 = [v153 localizedStringForKey:v155 value:&stru_1F42FFBE0 table:v156];

      v158 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      if ([v6 BOOLValue])
      {
        v159 = @"YES";
      }

      else
      {
        v159 = @"NO";
      }

      v10 = [v158 localizedStringForKey:v159 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v11 = 0;
      v5 = v157;
      goto LABEL_12;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA90]])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"DEVICE_PLACEMENT_SIDE_%@", v6];
      goto LABEL_7;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA10]])
    {
      v160 = [v6 stringValue];
LABEL_141:
      v10 = v160;
      goto LABEL_11;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA38]])
    {
      v161 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v63 = [v161 localizedStringForKey:@"IRN_ALGORITHM_VERSION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-IRN2"];

      v64 = [v6 stringValue];
      goto LABEL_62;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BB38]])
    {
      v153 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v154 = v153;
      v155 = @"METADATA_TITLE_QUANTITY_CLAMPED_TO_LOWER_BOUND";
      v156 = @"HealthUI-Localizable-AFibBurden";
      goto LABEL_133;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BA80]])
    {
      v160 = HKLocalizedStringForDateAndTemplate(v6, 10);
      goto LABEL_141;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BAE8]])
    {
      v162 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v66 = @"HealthUI-Localizable-Lyon";
      v58 = [v162 localizedStringForKey:@"HEART_RATE_RECOVERY_TEST_TYPE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Lyon"];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"HEART_RATE_RECOVERY_TEST_TYPE_%@", v6];
      goto LABEL_68;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BAD8]])
    {
      v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v60 = v59;
      v61 = @"HEART_RATE_RECOVERY_ACTIVITY_TYPE";
      v62 = @"HealthUI-Localizable-Lyon";
LABEL_60:
      v63 = [v59 localizedStringForKey:v61 value:&stru_1F42FFBE0 table:v62];

      [v6 unsignedIntegerValue];
      if (_HKWorkoutActivityTypeIsValid())
      {
        v64 = HKUILocalizedWorkoutTypeName();
LABEL_62:
        v10 = v64;
LABEL_63:
        v11 = 0;
        v5 = v63;
        goto LABEL_12;
      }

LABEL_173:
      v11 = 0;
      v5 = v63;
      goto LABEL_13;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E696BAD0]])
    {
      v163 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v63 = [v163 localizedStringForKey:@"HEART_RATE_RECOVERY_ACTIVITY_DURATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Lyon"];

      v164 = [MEMORY[0x1E696C510] secondUnit];
      v165 = v6;
      if ([v165 isCompatibleWithUnit:v164])
      {
        v166 = MEMORY[0x1E696AD98];
        v167 = [MEMORY[0x1E696C510] secondUnit];
        [v165 doubleValueForUnit:v167];
        v168 = [v166 numberWithDouble:?];

        v169 = objc_alloc_init(HKWorkoutDurationNumberFormatter);
        [(HKTimePeriodWithSecondsNumberFormatter *)v169 setAllowMillisecondPrecision:1];
        v10 = [(HKTimePeriodWithSecondsNumberFormatter *)v169 stringFromNumber:v168 displayType:0 unitController:0];

LABEL_159:
        goto LABEL_160;
      }
    }

    else
    {
      if (![v5 isEqualToString:*MEMORY[0x1E696BAE0]])
      {
        if ([v5 isEqualToString:*MEMORY[0x1E696BB80]])
        {
          v177 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v66 = @"HealthUI-Localizable";
          v58 = [v177 localizedStringForKey:@"USER_MOTION_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

          [MEMORY[0x1E696AEC0] stringWithFormat:@"USER_MOTION_CONTEXT_%@", v6];
          goto LABEL_68;
        }

        if (![v5 isEqualToString:*MEMORY[0x1E696BB48]])
        {
          if ([v5 isEqualToString:*MEMORY[0x1E696C758]])
          {
            v179 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            v262 = [v179 localizedStringForKey:@"SKIN_SURFACE_TEMPERATURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];

            v180 = [*(*(a1 + 32) + 16) healthStore];
            v181 = [HKDisplayTypeController sharedInstanceForHealthStore:v180];
            v182 = [v181 displayTypeWithIdentifier:&unk_1F4384720];

            v256 = v182;
            v183 = [*(*(a1 + 32) + 16) unitForDisplayType:v182];
            v184 = [MEMORY[0x1E696C510] degreeFahrenheitUnit];
            v185 = [v183 isEqual:v184];
            v186 = @"DEGREES_CELSIUS_NUMBERED_UNIT";
            if (v185)
            {
              v186 = @"DEGREES_FAHRENHEIT_NUMBERED_UNIT";
            }

            v187 = v186;

            v188 = v6;
            if ([v188 isCompatibleWithUnit:v183])
            {
              [v188 doubleValueForUnit:v183];
              v190 = v189;
              v191 = [MEMORY[0x1E696AD98] numberWithDouble:?];
              v192 = HKLocalizedStringForNumberWithDecimalPrecision(v191, 2, 0);

              v193 = MEMORY[0x1E696AEC0];
              v194 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v195 = [v194 localizedStringForKey:v187 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
              v196 = [v193 localizedStringWithFormat:v195, v190];

              v10 = HKFormatValueAndUnit(v192, v196);
            }

            else
            {
              v10 = 0;
            }

            v11 = 0;
            v5 = v262;
          }

          else
          {
            if ([v5 isEqualToString:*MEMORY[0x1E696C740]])
            {
              v197 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v63 = [v197 localizedStringForKey:@"INTERNAL_LIVEON_ALGORITHM_VERSION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

              goto LABEL_173;
            }

            if (![v5 isEqualToString:*MEMORY[0x1E696BB40]])
            {
              if ([v5 isEqualToString:*MEMORY[0x1E696BBA8]])
              {
                v205 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                v66 = @"HealthUI-Localizable";
                v58 = [v205 localizedStringForKey:@"WATER_SALINITY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                [MEMORY[0x1E696AEC0] stringWithFormat:@"WATER_SALINITY_%@", v6];
                goto LABEL_68;
              }

              v206 = *MEMORY[0x1E696C700];
              if ([v5 isEqualToString:*MEMORY[0x1E696C700]])
              {
                v207 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                v208 = [v207 localizedStringForKey:@"TAKEN_WITH_CONGESTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                v209 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                if ([v6 BOOLValue])
                {
                  v210 = @"YES";
                }

                else
                {
                  v210 = @"NO";
                }

                v211 = [v209 localizedStringForKey:v210 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                v212 = *(a1 + 40);
                v268 = v206;
                v213 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v268 count:1];
                v214 = HKUIJoinStringsForAutomationIdentifier(v213);
                v257 = v211;
                v263 = v208;
                [v212 addText:v211 detail:v208 baseIdentifier:v214];

                v215 = [*(*(a1 + 32) + 8) metadata];
                v216 = *MEMORY[0x1E696C710];
                v217 = [v215 objectForKey:*MEMORY[0x1E696C710]];

                if (v217)
                {
                  v218 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                  v219 = [v218 localizedStringForKey:@"TAKEN_WITH_RECENT_LOUD_EXPOSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                  v220 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                  if ([v217 BOOLValue])
                  {
                    v221 = @"YES";
                  }

                  else
                  {
                    v221 = @"NO";
                  }

                  v222 = [v220 localizedStringForKey:v221 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

                  v223 = *(a1 + 40);
                  v267 = v216;
                  v224 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v267 count:1];
                  v225 = HKUIJoinStringsForAutomationIdentifier(v224);
                  [v223 addText:v222 detail:v219 baseIdentifier:v225];
                }
              }

              else
              {
                v226 = *MEMORY[0x1E696C708];
                if (![v5 isEqualToString:*MEMORY[0x1E696C708]])
                {
                  goto LABEL_79;
                }

                v227 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                v228 = [v227 localizedStringForKey:@"AUDIOGRAM_LEFT_EAR_NOISE_LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];

                v229 = MEMORY[0x1E696AD98];
                [v6 doubleValue];
                v230 = [v229 numberWithDouble:?];
                v231 = HKLocalizedStringForNumberWithDecimalPrecision(v230, 0, 0);

                v232 = objc_alloc(MEMORY[0x1E696AEC0]);
                v233 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                v234 = [v233 localizedStringForKey:@"AUDIOGRAM_EAR_NOISE_LEVEL_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
                v257 = v231;
                v235 = [v232 initWithFormat:v234, v231];

                v236 = *(a1 + 40);
                v266 = v226;
                v237 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v266 count:1];
                v238 = HKUIJoinStringsForAutomationIdentifier(v237);
                v254 = v235;
                v263 = v228;
                [v236 addText:v235 detail:v228 baseIdentifier:v238];

                v239 = [*(*(a1 + 32) + 8) metadata];
                v240 = *MEMORY[0x1E696C718];
                v241 = [v239 objectForKey:*MEMORY[0x1E696C718]];

                if (v241)
                {
                  v242 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                  v243 = [v242 localizedStringForKey:@"AUDIOGRAM_RIGHT_EAR_NOISE_LEVEL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];

                  v244 = MEMORY[0x1E696AD98];
                  [v241 doubleValue];
                  v245 = [v244 numberWithDouble:?];
                  v246 = HKLocalizedStringForNumberWithDecimalPrecision(v245, 0, 0);

                  v247 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v248 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                  v249 = [v248 localizedStringForKey:@"AUDIOGRAM_EAR_NOISE_LEVEL_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
                  v250 = [v247 initWithFormat:v249, v246];

                  v251 = *(a1 + 40);
                  v265 = v240;
                  v252 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v265 count:1];
                  v253 = HKUIJoinStringsForAutomationIdentifier(v252);
                  [v251 addText:v250 detail:v243 baseIdentifier:v253];
                }
              }

              goto LABEL_79;
            }

            v198 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            if ([v6 BOOLValue])
            {
              v199 = @"YES";
            }

            else
            {
              v199 = @"NO";
            }

            v10 = [v198 localizedStringForKey:v199 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

            v200 = [*(*(a1 + 32) + 8) sampleType];
            v201 = [v200 identifier];
            v202 = [v201 isEqualToString:*MEMORY[0x1E696BDE8]];

            if (!v202)
            {
              goto LABEL_11;
            }

            v203 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            v204 = [v203 localizedStringForKey:@"BEYOND_MAXIMUM_DEPTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Charon"];

            v11 = 0;
            v5 = v204;
          }

LABEL_12:
          if (v10)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v178 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v63 = [v178 localizedStringForKey:@"SESSION_ESTIMATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_173;
        }

        v164 = [*(*(a1 + 32) + 8) sampleType];
        v10 = [v6 localizedStringForType:v164];
LABEL_160:

        goto LABEL_63;
      }

      v170 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v63 = [v170 localizedStringForKey:@"HEART_RATE_RECOVERY_MAX_OBSERVED_HEART_RATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Lyon"];

      v164 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
      v165 = v6;
      if ([v165 isCompatibleWithUnit:v164])
      {
        [v165 doubleValueForUnit:v164];
        v171 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v172 = HKLocalizedStringForNumberWithDecimalPrecision(v171, 0, 0);

        v173 = MEMORY[0x1E696AEC0];
        v174 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v175 = [v174 localizedStringForKey:@"BEATS_PER_MINUTE_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v176 = [v173 localizedStringWithFormat:v175, 0];

        v10 = HKFormatValueAndUnit(v172, v176);

        goto LABEL_159;
      }
    }

    v10 = 0;
    goto LABEL_159;
  }

  v92 = [*(*(a1 + 32) + 8) sourceRevision];
  v93 = [v92 source];
  v94 = [v93 _hasFirstPartyBundleID];

  if (v94)
  {
    goto LABEL_57;
  }

LABEL_79:
  v11 = 0;
LABEL_13:
  v10 = [v6 description];
LABEL_14:
  if ((_HKMetadataKeyIsPrivate() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v14 = [*(*(a1 + 32) + 8) sampleType];
    v15 = [v14 identifier];

    v264[0] = v15;
    v264[1] = v5;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v264 count:2];
    v17 = HKUIJoinStringsForAutomationIdentifier(v16);

    [*(a1 + 40) addText:v10 detail:v13 baseIdentifier:v17];
    if (v11)
    {
      [*(a1 + 32) addAdditionalOxygenSaturationDetailValuesToSection:*(a1 + 40) key:v5 value:v6];
    }

    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __53__HKDataMetadataDataSource_addDetailValuesToSection___block_invoke_2()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696BBA0], *MEMORY[0x1E696BB00], *MEMORY[0x1E696BA68], *MEMORY[0x1E696BB98], *MEMORY[0x1E696BAB8], *MEMORY[0x1E696BB28], *MEMORY[0x1E696BB50], *MEMORY[0x1E696BA18], *MEMORY[0x1E696BA30], 0}];
  v1 = MACancelDownloadErrorDomain_block_invoke___metadataKeysExpectingBoolean;
  MACancelDownloadErrorDomain_block_invoke___metadataKeysExpectingBoolean = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_formattedValueTextForVO2MaxQuantityObject:(id)object key:(id)key section:(id)section
{
  objectCopy = object;
  sectionCopy = section;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    displayTypeController = [sectionCopy displayTypeController];
    v10 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384738];

    unitController = [sectionCopy unitController];
    v12 = [unitController unitForDisplayType:v10];
    [v8 doubleValueForUnit:v12];
    v14 = v13;
    presentation = [v10 presentation];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    v17 = [presentation adjustedValueForDaemonValue:v16];

    v18 = HKFormattedStringFromValueForContext(v17, v10, unitController, 0, 0, 1);
    if (HKFormatterIncludesUnitForDisplayTypeInContext(v10, 1, unitController))
    {
      v19 = v18;
    }

    else
    {
      v20 = [unitController localizedDisplayNameForDisplayType:v10 value:v17 nameContext:3];
      v19 = HKFormatValueAndUnit(v18, v20);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)addAdditionalOxygenSaturationDetailValuesToSection:(id)section key:(id)key value:(id)value
{
  v20[2] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  valueCopy = value;
  if ([key isEqualToString:*MEMORY[0x1E696BA50]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v10 = [v9 localizedStringForKey:@"SCANDIUM_OVERLAY_LOW_AIR_PRESSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];

      v11 = valueCopy;
      v12 = HKOxygenSaturationLowBarometricPressureThresholdQuantity();
      v13 = [v11 hk_isGreaterThanQuantity:v12];

      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v15 = v14;
      if (v13)
      {
        v16 = @"NO";
      }

      else
      {
        v16 = @"YES";
      }

      v17 = [v14 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v20[0] = *MEMORY[0x1E696BD58];
      v20[1] = @"HighElevationEnvironment";
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      v19 = HKUIJoinStringsForAutomationIdentifier(v18);
      [sectionCopy addText:v17 detail:v10 baseIdentifier:v19];
    }
  }
}

- (id)_mediaSourceDisplayNamesForSample:(id)sample
{
  v37 = *MEMORY[0x1E69E9840];
  metadata = [(HKSample *)self->_sample metadata];
  v4 = [metadata objectForKey:*MEMORY[0x1E696C6D0]];
  v5 = [v4 componentsSeparatedByString:{@", "}];

  if (![v5 count])
  {
    v24 = 0;
    goto LABEL_21;
  }

  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v8 = 0x1E696A000;
  if (!v7)
  {
    goto LABEL_19;
  }

  v9 = v7;
  v29 = v5;
  v10 = 0;
  v11 = 0;
  v12 = *v33;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v32 + 1) + 8 * i);
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v16 = [v14 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      v31 = 0;
      v17 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v16 allowPlaceholder:1 error:&v31];
      v18 = v17;
      if (v17)
      {
        localizedName = [v17 localizedName];
        if (localizedName)
        {
          v20 = localizedName;
          [v30 addObject:localizedName];
        }
      }

      else
      {
        v21 = [v16 isEqualToString:@"com.apple.WebKit.WebContent"];
        v10 |= v21;
        v11 |= v21 ^ 1;
      }
    }

    v9 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v9);

  if (v10)
  {
    v8 = 0x1E696A000uLL;
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = [v22 localizedStringForKey:@"MEDIA_SOURCE_WEB_CONTENT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v30 addObject:v23];

    v5 = v29;
    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v5 = v29;
  v8 = 0x1E696A000uLL;
  if (v11)
  {
LABEL_18:
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v25 = [v6 localizedStringForKey:@"MEDIA_SOURCE_OTHER_SOURCE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v30 addObject:v25];

LABEL_19:
  }

LABEL_20:
  v26 = [*(v8 + 2792) bundleWithIdentifier:@"com.apple.HealthUI"];
  v27 = [v26 localizedStringForKey:@"CHART_COMMA_SEPARATOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v24 = [v30 componentsJoinedByString:v27];

LABEL_21:

  return v24;
}

@end