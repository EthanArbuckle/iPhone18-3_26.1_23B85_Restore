@interface HKElectrocardiogram(HealthUI)
+ (id)hk_localizedAverageBPM:()HealthUI;
+ (id)hk_positiveNumSymptomsTextColor;
- (__CFString)hk_localizedNumSymptoms;
- (id)_hk_waveformPathsWithNumberOfValues:()HealthUI transform:maximumNumberOfValuesPerPath:shouldResetXValues:initialValuesToOmit:minimumValueInMicrovolts:maximumValueInMicrovolts:;
- (id)_hk_waveformPathsWithPointsPerSecond:()HealthUI pointsPerMillivolt:maximumNumberOfValuesPerPath:shouldResetXValues:initialValuesToOmit:minimumValueInMicrovolts:maximumValueInMicrovolts:;
- (id)hk_BPMTextColor;
- (id)hk_cardHeaderColor;
- (id)hk_classificationTextColor;
- (id)hk_localizedAverageBPM;
- (id)hk_localizedDuration;
- (id)hk_localizedUppercaseNumSymptoms;
- (id)hk_numSymptomsTextColor;
- (id)hk_timeStampCompositingFilter;
- (id)hk_timeStampTextColor;
- (id)hk_waveformPathsWithNumberOfValues:()HealthUI fitToWidth:pointsPerMillivolt:minimumValueInMillivolts:maximumValueInMillivolts:;
- (uint64_t)hk_cardBackgroundColor;
- (uint64_t)hk_waveformPathsWithPointsPerSecond:()HealthUI pointsPerMillivolt:minimumValueInMillivolts:maximumValueInMillivolts:;
- (uint64_t)hk_waveformPathsWithPointsPerSecond:()HealthUI pointsPerMillivolt:wrappingDuration:omittingInitialDuration:;
- (uint64_t)hk_waveformPathsWithPointsPerSecond:()HealthUI pointsPerMillivolt:wrappingDuration:omittingInitialDuration:minimumValueInMillivolts:maximumValueInMillivolts:;
@end

@implementation HKElectrocardiogram(HealthUI)

- (id)hk_waveformPathsWithNumberOfValues:()HealthUI fitToWidth:pointsPerMillivolt:minimumValueInMillivolts:maximumValueInMillivolts:
{
  CGAffineTransformMakeScale(&v15, a2 / a7, a3 / 1000.0);
  *&v11 = a4 * 1000.0;
  *&v12 = a5 * 1000.0;
  v13 = [a1 _hk_waveformPathsWithNumberOfValues:a7 transform:&v15 maximumNumberOfValuesPerPath:0 shouldResetXValues:0 initialValuesToOmit:0 minimumValueInMicrovolts:v11 maximumValueInMicrovolts:v12];

  return v13;
}

- (id)_hk_waveformPathsWithNumberOfValues:()HealthUI transform:maximumNumberOfValuesPerPath:shouldResetXValues:initialValuesToOmit:minimumValueInMicrovolts:maximumValueInMicrovolts:
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __197__HKElectrocardiogram_HealthUI___hk_waveformPathsWithNumberOfValues_transform_maximumNumberOfValuesPerPath_shouldResetXValues_initialValuesToOmit_minimumValueInMicrovolts_maximumValueInMicrovolts___block_invoke;
  v20[3] = &unk_1E81B5D60;
  v20[6] = a9;
  v20[7] = a5;
  v20[8] = a7;
  v26 = a8;
  v20[4] = &v27;
  v20[5] = &v33;
  v24 = a3;
  v25 = a2;
  v17 = a6[1];
  v21 = *a6;
  v22 = v17;
  v23 = a6[2];
  [a1 _enumerateDataForLead:1 block:v20];
  [v34[5] addObject:v28[5]];
  v18 = v34[5];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v18;
}

- (uint64_t)hk_waveformPathsWithPointsPerSecond:()HealthUI pointsPerMillivolt:minimumValueInMillivolts:maximumValueInMillivolts:
{
  *&a5 = *&a5 * 1000.0;
  *&a6 = *&a6 * 1000.0;
  return [a1 _hk_waveformPathsWithPointsPerSecond:2560 pointsPerMillivolt:0 maximumNumberOfValuesPerPath:0 shouldResetXValues:a3 initialValuesToOmit:a4 minimumValueInMicrovolts:a5 maximumValueInMicrovolts:a6];
}

- (uint64_t)hk_waveformPathsWithPointsPerSecond:()HealthUI pointsPerMillivolt:wrappingDuration:omittingInitialDuration:
{
  LODWORD(a7) = -1081711002;
  LODWORD(a8) = 1073951539;
  return [a1 hk_waveformPathsWithPointsPerSecond:a3 pointsPerMillivolt:a4 wrappingDuration:a5 omittingInitialDuration:a6 minimumValueInMillivolts:a7 maximumValueInMillivolts:a8];
}

- (uint64_t)hk_waveformPathsWithPointsPerSecond:()HealthUI pointsPerMillivolt:wrappingDuration:omittingInitialDuration:minimumValueInMillivolts:maximumValueInMillivolts:
{
  v14 = [a1 samplingFrequency];
  v15 = [MEMORY[0x1E696C510] hertzUnit];
  [v14 doubleValueForUnit:v15];
  v17 = v16;

  v20 = vcvtpd_s64_f64(v17 * a4);
  v21 = vcvtpd_s64_f64(v17 * a5);

  *&v18 = a6 * 1000.0;
  *&v19 = a7 * 1000.0;
  return [a1 _hk_waveformPathsWithPointsPerSecond:v20 pointsPerMillivolt:1 maximumNumberOfValuesPerPath:v21 shouldResetXValues:a2 initialValuesToOmit:a3 minimumValueInMicrovolts:v18 maximumValueInMicrovolts:v19];
}

- (id)_hk_waveformPathsWithPointsPerSecond:()HealthUI pointsPerMillivolt:maximumNumberOfValuesPerPath:shouldResetXValues:initialValuesToOmit:minimumValueInMicrovolts:maximumValueInMicrovolts:
{
  v17 = [a1 endDate];
  v18 = [a1 startDate];
  [v17 timeIntervalSinceDate:v18];
  v20 = v19 * a2;

  v21 = v20 / [a1 numberOfVoltageMeasurements];
  v22 = [a1 numberOfVoltageMeasurements];
  CGAffineTransformMakeScale(&v27, v21, a3 / 1000.0);
  *&v23 = a4;
  *&v24 = a5;
  v25 = [a1 _hk_waveformPathsWithNumberOfValues:v22 transform:&v27 maximumNumberOfValuesPerPath:a7 shouldResetXValues:a8 initialValuesToOmit:a9 minimumValueInMicrovolts:v23 maximumValueInMicrovolts:v24];

  return v25;
}

- (id)hk_cardHeaderColor
{
  v1 = [a1 _hk_classificationHasAbnormalHeaderColorAndStyle];
  v2 = objc_opt_class();
  if (v1)
  {
    [v2 hk_abnormalCardHeaderColor];
  }

  else
  {
    [v2 hk_defaultCardHeaderColor];
  }
  v3 = ;

  return v3;
}

- (uint64_t)hk_cardBackgroundColor
{
  v0 = objc_opt_class();

  return [v0 hk_defaultCardBackgroundColor];
}

- (id)hk_classificationTextColor
{
  v1 = [a1 _hk_classificationHasAbnormalHeaderColorAndStyle];
  v2 = objc_opt_class();
  if (v1)
  {
    [v2 hk_abnormalClassificationTextColor];
  }

  else
  {
    [v2 hk_defaultClassificationTextColor];
  }
  v3 = ;

  return v3;
}

- (id)hk_timeStampTextColor
{
  v1 = [a1 _hk_classificationHasAbnormalHeaderColorAndStyle];
  v2 = objc_opt_class();
  if (v1)
  {
    [v2 hk_abnormalTimeStampTextColor];
  }

  else
  {
    [v2 hk_defaultTimeStampTextColor];
  }
  v3 = ;

  return v3;
}

- (id)hk_timeStampCompositingFilter
{
  v1 = [a1 _hk_classificationHasAbnormalHeaderColorAndStyle];
  v2 = objc_opt_class();
  if (v1)
  {
    [v2 hk_abnormalTimeStampCompositingFilter];
  }

  else
  {
    [v2 hk_defaultTimeStampCompositingFilter];
  }
  v3 = ;

  return v3;
}

- (id)hk_BPMTextColor
{
  v1 = [a1 _hk_classificationHasAbnormalBPMFontColorAndStyle];
  v2 = objc_opt_class();
  if (v1)
  {
    [v2 hk_abnormalBPMTextColor];
  }

  else
  {
    [v2 hk_defaultBPMTextColor];
  }
  v3 = ;

  return v3;
}

- (id)hk_numSymptomsTextColor
{
  v1 = [a1 hk_hasPositiveSymptoms];
  v2 = objc_opt_class();
  if (v1)
  {
    [v2 hk_positiveNumSymptomsTextColor];
  }

  else
  {
    [v2 hk_defaultNumSymptomsTextColor];
  }
  v3 = ;

  return v3;
}

+ (id)hk_positiveNumSymptomsTextColor
{
  v0 = [HKDisplayCategory categoryWithID:11];
  v1 = [v0 color];

  return v1;
}

+ (id)hk_localizedAverageBPM:()HealthUI
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AD98];
    [a3 _beatsPerMinute];
    v4 = [v3 numberWithDouble:?];
    v5 = [MEMORY[0x1E696ADA0] hk_heartRateNumberFormatter];
    v6 = [v5 stringFromNumber:v4];

    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"AVERAGE_BEATS_PER_MINUTE_SHORT_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
    v10 = HKConditionallyRedactedHeartRhythmString();
    v11 = [v7 localizedStringWithFormat:v10, v6];
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v4 localizedStringForKey:@"NO_AVERAGE_BEATS_PER_MINUTE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
    v11 = HKConditionallyRedactedHeartRhythmString();
  }

  return v11;
}

- (id)hk_localizedAverageBPM
{
  v2 = objc_opt_class();
  v3 = [a1 averageHeartRate];
  v4 = [v2 hk_localizedAverageBPM:v3];

  return v4;
}

- (id)hk_localizedDuration
{
  v2 = [MEMORY[0x1E696AB70] hk_fullStyleDateComponentsFormatter];
  v3 = [a1 startDate];
  v4 = [a1 endDate];
  v5 = [v2 stringFromDate:v3 toDate:v4];

  return v5;
}

- (__CFString)hk_localizedNumSymptoms
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 _localizedSymptoms];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];

  if ([a1 hk_isSymptomsNotSet])
  {
    v5 = &stru_1F42FFBE0;
  }

  else
  {
    if ([a1 hk_isSymptomsNoSymptoms])
    {

      v4 = &unk_1F43821A0;
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"SYMPTOM_COUNT_NUMBERED_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
    v9 = HKConditionallyRedactedHeartRhythmString();
    v5 = [v6 localizedStringWithFormat:v9, objc_msgSend(v4, "integerValue")];
  }

  return v5;
}

- (id)hk_localizedUppercaseNumSymptoms
{
  v1 = [a1 hk_localizedNumSymptoms];
  v2 = [v1 localizedUppercaseString];

  return v2;
}

@end