@interface HKAxisLabelDimensionDisplayType
- (HKAxisLabelDimensionDisplayType)initWithDisplayType:(id)a3 unitPreferencesController:(id)a4;
- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4;
@end

@implementation HKAxisLabelDimensionDisplayType

- (HKAxisLabelDimensionDisplayType)initWithDisplayType:(id)a3 unitPreferencesController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HKAxisLabelDimensionDisplayType;
  v9 = [(HKAxisLabelDimensionDisplayType *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unitController, a4);
    objc_storeStrong(&v10->_displayType, a3);
    v11 = [(HKUnitPreferenceController *)v10->_unitController unitForDisplayType:v10->_displayType];
    v12 = [(HKDisplayType *)v10->_displayType hk_valueFormatterForUnit:v11];
    valueFormatter = v10->_valueFormatter;
    v10->_valueFormatter = v12;
  }

  return v10;
}

- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4
{
  v5 = a3;
  v6 = [(HKAxisLabelDimensionDisplayType *)self valueFormatter];
  v7 = [(HKAxisLabelDimensionDisplayType *)self displayType];
  v8 = [(HKAxisLabelDimensionDisplayType *)self unitController];
  v9 = [v6 stringFromValue:v5 displayType:v7 unitController:v8];

  return v9;
}

@end