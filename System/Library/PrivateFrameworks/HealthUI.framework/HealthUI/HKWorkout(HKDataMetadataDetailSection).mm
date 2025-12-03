@interface HKWorkout(HKDataMetadataDetailSection)
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKWorkout(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self workoutActivityType];
  v21 = HKUILocalizedWorkoutTypeName();
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"WORKOUT_TYPE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  sampleType = [self sampleType];
  identifier = [sampleType identifier];
  v24[0] = identifier;
  v24[1] = @"Type";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v10 = HKUIJoinStringsForAutomationIdentifier(v9);
  [v4 addText:v21 detail:v6 baseIdentifier:v10];

  v11 = objc_alloc_init(HKWorkoutDurationNumberFormatter);
  [(HKTimePeriodWithSecondsNumberFormatter *)v11 setAllowMillisecondPrecision:1];
  v12 = MEMORY[0x1E696AD98];
  [self duration];
  v13 = [v12 numberWithDouble:?];
  v14 = [(HKTimePeriodWithSecondsNumberFormatter *)v11 stringFromNumber:v13 displayType:0 unitController:0];

  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"DURATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  sampleType2 = [self sampleType];
  identifier2 = [sampleType2 identifier];
  v23[0] = identifier2;
  v23[1] = @"Duration";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v20 = HKUIJoinStringsForAutomationIdentifier(v19);
  [v4 addText:v14 detail:v16 baseIdentifier:v20];

  v22.receiver = self;
  v22.super_class = &off_1F4452D88;
  objc_msgSendSuper2(&v22, sel_addDetailValuesToSection_, v4);
}

@end