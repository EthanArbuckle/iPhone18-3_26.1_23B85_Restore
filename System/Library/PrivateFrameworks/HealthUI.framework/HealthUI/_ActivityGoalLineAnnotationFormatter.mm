@interface _ActivityGoalLineAnnotationFormatter
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation _ActivityGoalLineAnnotationFormatter

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  numberCopy = number;
  v7 = HKDecimalFormatter([type roundingMode]);
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"GOAL_LINE_AXIS_LABEL %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v7 stringFromNumber:numberCopy];

  v12 = [v8 stringWithFormat:v10, v11];

  return v12;
}

@end