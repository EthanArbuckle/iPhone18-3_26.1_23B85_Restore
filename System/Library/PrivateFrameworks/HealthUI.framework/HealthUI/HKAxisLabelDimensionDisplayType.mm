@interface HKAxisLabelDimensionDisplayType
- (HKAxisLabelDimensionDisplayType)initWithDisplayType:(id)type unitPreferencesController:(id)controller;
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation HKAxisLabelDimensionDisplayType

- (HKAxisLabelDimensionDisplayType)initWithDisplayType:(id)type unitPreferencesController:(id)controller
{
  typeCopy = type;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = HKAxisLabelDimensionDisplayType;
  v9 = [(HKAxisLabelDimensionDisplayType *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unitController, controller);
    objc_storeStrong(&v10->_displayType, type);
    v11 = [(HKUnitPreferenceController *)v10->_unitController unitForDisplayType:v10->_displayType];
    v12 = [(HKDisplayType *)v10->_displayType hk_valueFormatterForUnit:v11];
    valueFormatter = v10->_valueFormatter;
    v10->_valueFormatter = v12;
  }

  return v10;
}

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  locationCopy = location;
  valueFormatter = [(HKAxisLabelDimensionDisplayType *)self valueFormatter];
  displayType = [(HKAxisLabelDimensionDisplayType *)self displayType];
  unitController = [(HKAxisLabelDimensionDisplayType *)self unitController];
  v9 = [valueFormatter stringFromValue:locationCopy displayType:displayType unitController:unitController];

  return v9;
}

@end