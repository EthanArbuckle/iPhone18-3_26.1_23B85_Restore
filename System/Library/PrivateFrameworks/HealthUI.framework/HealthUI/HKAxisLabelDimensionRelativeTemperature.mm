@interface HKAxisLabelDimensionRelativeTemperature
- (HKAxisLabelDimensionRelativeTemperature)initWithDisplayType:(id)a3 unitPreferencesController:(id)a4;
- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4;
@end

@implementation HKAxisLabelDimensionRelativeTemperature

- (HKAxisLabelDimensionRelativeTemperature)initWithDisplayType:(id)a3 unitPreferencesController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HKAxisLabelDimensionRelativeTemperature;
  v9 = [(HKAxisLabelDimensionRelativeTemperature *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unitController, a4);
    objc_storeStrong(&v10->_displayType, a3);
    v11 = MEMORY[0x1E696C510];
    v12 = [(HKUnitPreferenceController *)v10->_unitController unitForDisplayType:v10->_displayType];
    v13 = [v11 _changeInUnit:v12];

    v14 = [(HKDisplayType *)v10->_displayType hk_valueFormatterForUnit:v13];
    valueFormatter = v10->_valueFormatter;
    v10->_valueFormatter = v14;
  }

  return v10;
}

- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4
{
  v5 = a3;
  [v5 doubleValue];
  if (v6 == 0.0)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"TEMPERATURE_BASELINE_SHORT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  }

  else
  {
    v7 = [(HKAxisLabelDimensionRelativeTemperature *)self valueFormatter];
    v9 = [(HKAxisLabelDimensionRelativeTemperature *)self displayType];
    v10 = [(HKAxisLabelDimensionRelativeTemperature *)self unitController];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"TEMPERATURE_QUANTITY_AXIS_LABEL_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
    v8 = [v7 stringFromValue:v5 displayType:v9 unitController:v10 formatString:v12];
  }

  return v8;
}

@end