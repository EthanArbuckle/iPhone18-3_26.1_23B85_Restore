@interface HKAxisLabelDimensionRelativeTemperature
- (HKAxisLabelDimensionRelativeTemperature)initWithDisplayType:(id)type unitPreferencesController:(id)controller;
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation HKAxisLabelDimensionRelativeTemperature

- (HKAxisLabelDimensionRelativeTemperature)initWithDisplayType:(id)type unitPreferencesController:(id)controller
{
  typeCopy = type;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = HKAxisLabelDimensionRelativeTemperature;
  v9 = [(HKAxisLabelDimensionRelativeTemperature *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unitController, controller);
    objc_storeStrong(&v10->_displayType, type);
    v11 = MEMORY[0x1E696C510];
    v12 = [(HKUnitPreferenceController *)v10->_unitController unitForDisplayType:v10->_displayType];
    v13 = [v11 _changeInUnit:v12];

    v14 = [(HKDisplayType *)v10->_displayType hk_valueFormatterForUnit:v13];
    valueFormatter = v10->_valueFormatter;
    v10->_valueFormatter = v14;
  }

  return v10;
}

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  locationCopy = location;
  [locationCopy doubleValue];
  if (v6 == 0.0)
  {
    valueFormatter = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [valueFormatter localizedStringForKey:@"TEMPERATURE_BASELINE_SHORT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  }

  else
  {
    valueFormatter = [(HKAxisLabelDimensionRelativeTemperature *)self valueFormatter];
    displayType = [(HKAxisLabelDimensionRelativeTemperature *)self displayType];
    unitController = [(HKAxisLabelDimensionRelativeTemperature *)self unitController];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"TEMPERATURE_QUANTITY_AXIS_LABEL_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
    v8 = [valueFormatter stringFromValue:locationCopy displayType:displayType unitController:unitController formatString:v12];
  }

  return v8;
}

@end