@interface _ActivityGoalLineAnnotationFormatter
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation _ActivityGoalLineAnnotationFormatter

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v6 = a3;
  v7 = HKDecimalFormatter([a4 roundingMode]);
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"GOAL_LINE_AXIS_LABEL %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v7 stringFromNumber:v6];

  v12 = [v8 stringWithFormat:v10, v11];

  return v12;
}

@end