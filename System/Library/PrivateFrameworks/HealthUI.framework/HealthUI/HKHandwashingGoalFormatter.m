@interface HKHandwashingGoalFormatter
- (HKHandwashingGoalFormatter)initWithDisplayType:(id)a3 unitPreferenceController:(id)a4;
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation HKHandwashingGoalFormatter

- (HKHandwashingGoalFormatter)initWithDisplayType:(id)a3 unitPreferenceController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKHandwashingGoalFormatter;
  v8 = [(HKHandwashingGoalFormatter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKHandwashingGoalFormatter *)v8 setDisplayType:v6];
    [(HKHandwashingGoalFormatter *)v9 setUnitPreferenceController:v7];
  }

  return v9;
}

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v6 = a3;
  v7 = [(HKHandwashingGoalFormatter *)self unitPreferenceController];
  v8 = [(HKHandwashingGoalFormatter *)self displayType];
  v9 = [v7 unitForDisplayType:v8];

  v10 = [(HKHandwashingGoalFormatter *)self displayType];
  v11 = [v10 hk_valueFormatterForUnit:v9];

  v12 = [(HKHandwashingGoalFormatter *)self displayType];
  v13 = [(HKHandwashingGoalFormatter *)self unitPreferenceController];
  v14 = [v11 stringFromValue:v6 displayType:v12 unitController:v13];

  return v14;
}

@end