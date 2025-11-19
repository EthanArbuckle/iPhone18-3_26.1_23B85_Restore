@interface HKUnitlessNumberFormatter
- (HKUnitlessNumberFormatter)initWithDisplayType:(id)a3 unitPreferenceController:(id)a4 forceUnitlessForAllTypes:(BOOL)a5;
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation HKUnitlessNumberFormatter

- (HKUnitlessNumberFormatter)initWithDisplayType:(id)a3 unitPreferenceController:(id)a4 forceUnitlessForAllTypes:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HKUnitlessNumberFormatter;
  v11 = [(HKUnitlessNumberFormatter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_displayType, a3);
    objc_storeStrong(&v12->_unitPreferenceController, a4);
    v12->_forceUnitlessForAllTypes = a5;
  }

  return v12;
}

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  forceUnitlessForAllTypes = self->_forceUnitlessForAllTypes;
  v7 = a3;
  v8 = [(HKUnitlessNumberFormatter *)self displayType];
  v9 = [(HKUnitlessNumberFormatter *)self unitPreferenceController];
  if (forceUnitlessForAllTypes)
  {
    [v8 hk_defaultChartAxisBoundStringFromValue:v7 defaultNumberFormatter:0 unitController:v9];
  }

  else
  {
    [v8 hk_interactiveChartAxisStringFromValue:v7 defaultNumberFormatter:0 unitController:v9];
  }
  v10 = ;

  return v10;
}

@end