@interface HKDisplayTypeNumberFormatter
- (HKDisplayTypeNumberFormatter)initWithDisplayType:(id)type unitController:(id)controller;
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation HKDisplayTypeNumberFormatter

- (HKDisplayTypeNumberFormatter)initWithDisplayType:(id)type unitController:(id)controller
{
  typeCopy = type;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = HKDisplayTypeNumberFormatter;
  v9 = [(HKDisplayTypeNumberFormatter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayType, type);
    objc_storeStrong(&v10->_unitController, controller);
    v11 = [(HKUnitPreferenceController *)v10->_unitController unitForDisplayType:v10->_displayType];
    v12 = [(HKDisplayType *)v10->_displayType hk_valueFormatterForUnit:v11];
    valueFormatter = v10->_valueFormatter;
    v10->_valueFormatter = v12;
  }

  return v10;
}

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  displayType = type;
  if (!type)
  {
    displayType = self->_displayType;
  }

  unitController = controller;
  if (!controller)
  {
    unitController = self->_unitController;
  }

  valueFormatter = self->_valueFormatter;
  v11 = displayType;
  controllerCopy = controller;
  typeCopy = type;
  v14 = [(HKDisplayTypeValueFormatter *)valueFormatter stringFromValue:number displayType:v11 unitController:unitController];

  return v14;
}

@end