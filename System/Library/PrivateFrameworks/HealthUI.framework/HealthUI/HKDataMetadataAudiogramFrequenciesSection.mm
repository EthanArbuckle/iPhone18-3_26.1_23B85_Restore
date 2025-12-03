@interface HKDataMetadataAudiogramFrequenciesSection
- (HKDataMetadataAudiogramFrequenciesSection)initWithSample:(id)sample leftEar:(BOOL)ear unitController:(id)controller;
- (id)_formattedFrequencyStringFromSensitivityPoint:(id)point;
- (id)_formattedSensitivityStringFromSensitivityPoint:(id)point isLeftEar:(BOOL)ear unitController:(id)controller;
- (id)_sensitivityQuantityFromSensitivityPoint:(id)point isLeftEar:(BOOL)ear;
- (void)_addCellsFromAudiogramSample:(id)sample forLeftEar:(BOOL)ear unitController:(id)controller;
@end

@implementation HKDataMetadataAudiogramFrequenciesSection

- (HKDataMetadataAudiogramFrequenciesSection)initWithSample:(id)sample leftEar:(BOOL)ear unitController:(id)controller
{
  earCopy = ear;
  sampleCopy = sample;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = sampleCopy;
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = v11;
    if (earCopy)
    {
      v13 = @"LEFT_FULL";
    }

    else
    {
      v13 = @"RIGHT_FULL";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v19.receiver = self;
    v19.super_class = HKDataMetadataAudiogramFrequenciesSection;
    v15 = [(HKDataMetadataSimpleSection *)&v19 initWithTitle:v14];
    v16 = v15;
    if (v15)
    {
      [(HKDataMetadataAudiogramFrequenciesSection *)v15 _addCellsFromAudiogramSample:v10 forLeftEar:earCopy unitController:controllerCopy];
    }

    self = v16;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_sensitivityQuantityFromSensitivityPoint:(id)point isLeftEar:(BOOL)ear
{
  v4 = !ear;
  tests = [point tests];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__HKDataMetadataAudiogramFrequenciesSection__sensitivityQuantityFromSensitivityPoint_isLeftEar___block_invoke;
  v10[3] = &__block_descriptor_40_e36_B16__0__HKAudiogramSensitivityTest_8l;
  v10[4] = v4;
  v6 = [tests hk_filter:v10];
  firstObject = [v6 firstObject];

  sensitivity = [firstObject sensitivity];

  return sensitivity;
}

- (void)_addCellsFromAudiogramSample:(id)sample forLeftEar:(BOOL)ear unitController:(id)controller
{
  earCopy = ear;
  v30 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [sample sensitivityPoints];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = *v25;
    if (earCopy)
    {
      v10 = @"Left";
    }

    else
    {
      v10 = @"Right";
    }

    v21 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [(HKDataMetadataAudiogramFrequenciesSection *)self _sensitivityQuantityFromSensitivityPoint:v12 isLeftEar:earCopy];
        if (v13)
        {
          v14 = [(HKDataMetadataAudiogramFrequenciesSection *)self _formattedFrequencyStringFromSensitivityPoint:v12];
          v15 = [(HKDataMetadataAudiogramFrequenciesSection *)self _formattedSensitivityStringFromSensitivityPoint:v12 isLeftEar:earCopy unitController:controllerCopy];
          v16 = v21;
          v17 = [v14 hk_stringByReplacingSpacesWithString:&stru_1F42FFBE0];
          v28[0] = @"HKAudiogramSample";
          v28[1] = v16;
          v28[2] = @"Sensitivity";
          v28[3] = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];

          v19 = HKUIJoinStringsForAutomationIdentifier(v18);
          [(HKDataMetadataSimpleSection *)self addText:v15 detail:v14 baseIdentifier:v19];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }
}

- (id)_formattedFrequencyStringFromSensitivityPoint:(id)point
{
  frequency = [point frequency];
  hertzUnit = [MEMORY[0x1E696C510] hertzUnit];
  [frequency doubleValueForUnit:hertzUnit];
  v6 = v5;

  v7 = HKNumberFormatterWithDecimalPrecision(5, 0);
  v8 = v6 / 1000.0;
  if (v6 / 1000.0 >= 1.0)
  {
    v9 = @"KILOHERTZ_NUMBERLESS_UNIT";
  }

  else
  {
    v8 = v6;
    v9 = @"HERTZ_NUMBERLESS_UNIT";
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v11 = [v7 stringFromNumber:v10];

  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v14 = HKFormatValueAndUnit(v11, v13);

  return v14;
}

- (id)_formattedSensitivityStringFromSensitivityPoint:(id)point isLeftEar:(BOOL)ear unitController:(id)controller
{
  earCopy = ear;
  pointCopy = point;
  controllerCopy = controller;
  decibelHearingLevelUnit = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
  v11 = [(HKDataMetadataAudiogramFrequenciesSection *)self _sensitivityQuantityFromSensitivityPoint:pointCopy isLeftEar:earCopy];
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  features = [mEMORY[0x1E696C608] features];
  yodel = [features yodel];

  if (yodel)
  {
    tests = [pointCopy tests];
    v16 = tests;
    if (earCopy)
    {
      v17 = &__block_literal_global_9;
    }

    else
    {
      v17 = &__block_literal_global_332;
    }

    v18 = [tests hk_filter:v17];

    firstObject = [v18 firstObject];
    clampedSensitivity = [firstObject clampedSensitivity];

    firstObject2 = [v18 firstObject];
    clampingRange = [firstObject2 clampingRange];

    if (clampedSensitivity)
    {
      v44 = pointCopy;
      v23 = MEMORY[0x1E696AD98];
      [clampedSensitivity doubleValueForUnit:decibelHearingLevelUnit];
      v25 = [v23 numberWithDouble:HKRoundWithPositiveZeroForDoubleValue(v24)];
      v26 = HKNumberFormatterFromTemplate(0);
      v27 = 1;
      v43 = HKFormattedStringFromValue(v25, 0, controllerCopy, 1, v26);

      lowerBound = [clampingRange lowerBound];
      if (([lowerBound hk_isGreaterThanQuantity:v11] & 1) == 0)
      {
        lowerBound2 = [clampingRange lowerBound];
        v27 = [lowerBound2 isEqual:v11];
      }

      upperBound = [clampingRange upperBound];
      if ([upperBound hk_isLessThanQuantity:v11])
      {

        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_12:
        v42 = controllerCopy;
        v32 = @"AUDIOGRAM_SENSITIVITY_POINT_VALUE_WITH_UNIT_CLAMPED_FROM_BELOW_%@";
LABEL_15:
        v33 = MEMORY[0x1E696AEC0];
        v34 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v35 = [v34 localizedStringForKey:v32 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
        v36 = [v33 localizedStringWithFormat:v35, v43];

        pointCopy = v44;
        controllerCopy = v42;
        goto LABEL_19;
      }

      upperBound2 = [clampingRange upperBound];
      v41 = [upperBound2 isEqual:v11];

      if (v27)
      {
        goto LABEL_12;
      }

      if (v41)
      {
LABEL_14:
        v42 = controllerCopy;
        v32 = @"AUDIOGRAM_SENSITIVITY_POINT_VALUE_WITH_UNIT_CLAMPED_FROM_ABOVE_%@";
        goto LABEL_15;
      }

      pointCopy = v44;
    }
  }

  v37 = MEMORY[0x1E696AD98];
  [v11 doubleValueForUnit:decibelHearingLevelUnit];
  clampedSensitivity = [v37 numberWithDouble:HKRoundWithPositiveZeroForDoubleValue(v38)];
  v39 = HKNumberFormatterFromTemplate(0);
  clampingRange = HKFormattedStringFromValue(clampedSensitivity, 0, controllerCopy, 1, v39);

  v25 = [controllerCopy localizedDisplayNameForUnit:decibelHearingLevelUnit value:clampedSensitivity];
  v36 = HKFormatValueAndUnit(clampingRange, v25);
LABEL_19:

  return v36;
}

BOOL __118__HKDataMetadataAudiogramFrequenciesSection__formattedSensitivityStringFromSensitivityPoint_isLeftEar_unitController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 side] == 0;
  }

  return v3;
}

BOOL __118__HKDataMetadataAudiogramFrequenciesSection__formattedSensitivityStringFromSensitivityPoint_isLeftEar_unitController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 side] == 1;
  }

  return v3;
}

@end