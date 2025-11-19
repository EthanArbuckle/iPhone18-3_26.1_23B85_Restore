@interface HKWorkout(HKUIAdditions)
+ (id)hkui_localizedWorkoutStringForValue:()HKUIAdditions;
- (id)hkui_localizedActivityTypeName;
@end

@implementation HKWorkout(HKUIAdditions)

- (id)hkui_localizedActivityTypeName
{
  [a1 workoutActivityType];

  return HKUILocalizedWorkoutTypeName();
}

+ (id)hkui_localizedWorkoutStringForValue:()HKUIAdditions
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"WORKOUT_NUMBERED_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [v5 integerValue];

  v9 = [v3 stringWithFormat:v7, v8];

  return v9;
}

@end