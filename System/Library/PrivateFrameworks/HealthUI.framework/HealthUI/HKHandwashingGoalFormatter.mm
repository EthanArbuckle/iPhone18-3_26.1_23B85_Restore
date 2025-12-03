@interface HKHandwashingGoalFormatter
- (HKHandwashingGoalFormatter)initWithDisplayType:(id)type unitPreferenceController:(id)controller;
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation HKHandwashingGoalFormatter

- (HKHandwashingGoalFormatter)initWithDisplayType:(id)type unitPreferenceController:(id)controller
{
  typeCopy = type;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = HKHandwashingGoalFormatter;
  v8 = [(HKHandwashingGoalFormatter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKHandwashingGoalFormatter *)v8 setDisplayType:typeCopy];
    [(HKHandwashingGoalFormatter *)v9 setUnitPreferenceController:controllerCopy];
  }

  return v9;
}

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  numberCopy = number;
  unitPreferenceController = [(HKHandwashingGoalFormatter *)self unitPreferenceController];
  displayType = [(HKHandwashingGoalFormatter *)self displayType];
  v9 = [unitPreferenceController unitForDisplayType:displayType];

  displayType2 = [(HKHandwashingGoalFormatter *)self displayType];
  v11 = [displayType2 hk_valueFormatterForUnit:v9];

  displayType3 = [(HKHandwashingGoalFormatter *)self displayType];
  unitPreferenceController2 = [(HKHandwashingGoalFormatter *)self unitPreferenceController];
  v14 = [v11 stringFromValue:numberCopy displayType:displayType3 unitController:unitPreferenceController2];

  return v14;
}

@end