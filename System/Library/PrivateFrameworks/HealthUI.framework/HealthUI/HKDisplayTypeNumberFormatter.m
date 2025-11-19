@interface HKDisplayTypeNumberFormatter
- (HKDisplayTypeNumberFormatter)initWithDisplayType:(id)a3 unitController:(id)a4;
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation HKDisplayTypeNumberFormatter

- (HKDisplayTypeNumberFormatter)initWithDisplayType:(id)a3 unitController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HKDisplayTypeNumberFormatter;
  v9 = [(HKDisplayTypeNumberFormatter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayType, a3);
    objc_storeStrong(&v10->_unitController, a4);
    v11 = [(HKUnitPreferenceController *)v10->_unitController unitForDisplayType:v10->_displayType];
    v12 = [(HKDisplayType *)v10->_displayType hk_valueFormatterForUnit:v11];
    valueFormatter = v10->_valueFormatter;
    v10->_valueFormatter = v12;
  }

  return v10;
}

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  displayType = a4;
  if (!a4)
  {
    displayType = self->_displayType;
  }

  unitController = a5;
  if (!a5)
  {
    unitController = self->_unitController;
  }

  valueFormatter = self->_valueFormatter;
  v11 = displayType;
  v12 = a5;
  v13 = a4;
  v14 = [(HKDisplayTypeValueFormatter *)valueFormatter stringFromValue:a3 displayType:v11 unitController:unitController];

  return v14;
}

@end