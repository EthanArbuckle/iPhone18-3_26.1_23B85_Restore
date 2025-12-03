@interface HKUnitlessNumberFormatter
- (HKUnitlessNumberFormatter)initWithDisplayType:(id)type unitPreferenceController:(id)controller forceUnitlessForAllTypes:(BOOL)types;
- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller;
@end

@implementation HKUnitlessNumberFormatter

- (HKUnitlessNumberFormatter)initWithDisplayType:(id)type unitPreferenceController:(id)controller forceUnitlessForAllTypes:(BOOL)types
{
  typeCopy = type;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = HKUnitlessNumberFormatter;
  v11 = [(HKUnitlessNumberFormatter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_displayType, type);
    objc_storeStrong(&v12->_unitPreferenceController, controller);
    v12->_forceUnitlessForAllTypes = types;
  }

  return v12;
}

- (id)stringFromNumber:(id)number displayType:(id)type unitController:(id)controller
{
  forceUnitlessForAllTypes = self->_forceUnitlessForAllTypes;
  numberCopy = number;
  displayType = [(HKUnitlessNumberFormatter *)self displayType];
  unitPreferenceController = [(HKUnitlessNumberFormatter *)self unitPreferenceController];
  if (forceUnitlessForAllTypes)
  {
    [displayType hk_defaultChartAxisBoundStringFromValue:numberCopy defaultNumberFormatter:0 unitController:unitPreferenceController];
  }

  else
  {
    [displayType hk_interactiveChartAxisStringFromValue:numberCopy defaultNumberFormatter:0 unitController:unitPreferenceController];
  }
  v10 = ;

  return v10;
}

@end