@interface HFTemperatureStatusItem
+ (id)customValueFormatter;
+ (id)titleStringForState:(int64_t)state;
+ (unint64_t)abstractCurrentModeInResponse:(id)response;
+ (unint64_t)abstractTargetModeInResponse:(id)response;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFTemperatureStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"thermometer"];

  return v3;
}

uint64_t __49__HFTemperatureStatusItem_displayValueComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HFTemperatureStatusItem_displayValueComparator__block_invoke_2;
  v12[3] = &unk_277DF72E0;
  v6 = v4;
  v13 = v6;
  v7 = v5;
  v8 = v7;
  v14 = v7;
  if (v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7 != 0;
  }

  v10 = v7;
  if (v6 && v7)
  {
    v9 = __49__HFTemperatureStatusItem_displayValueComparator__block_invoke_2(v12);
    v10 = v14;
  }

  return v9;
}

uint64_t __49__HFTemperatureStatusItem_displayValueComparator__block_invoke_2(uint64_t a1)
{
  v2 = +[HFTemperatureUnitCoordinator sharedCoordinator];
  v3 = [v2 isCelsius];

  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "integerValue")}];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "integerValue")}];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCAB10]);
    [*(a1 + 32) doubleValue];
    v8 = v7;
    v9 = [MEMORY[0x277CCAE48] celsius];
    v10 = [v6 initWithDoubleValue:v9 unit:v8];

    v11 = MEMORY[0x277CCABB0];
    v12 = [MEMORY[0x277CCAE48] fahrenheit];
    v13 = [v10 measurementByConvertingToUnit:v12];
    [v13 doubleValue];
    v14 = [v11 numberWithDouble:?];
    v4 = [v11 numberWithInteger:{objc_msgSend(v14, "integerValue")}];

    v15 = objc_alloc(MEMORY[0x277CCAB10]);
    [*(a1 + 40) doubleValue];
    v17 = v16;
    v18 = [MEMORY[0x277CCAE48] celsius];
    v19 = [v15 initWithDoubleValue:v18 unit:v17];

    v20 = MEMORY[0x277CCABB0];
    v21 = [MEMORY[0x277CCAE48] fahrenheit];
    v22 = [v19 measurementByConvertingToUnit:v21];
    [v22 doubleValue];
    v23 = [v20 numberWithDouble:?];
    v5 = [v20 numberWithInteger:{objc_msgSend(v23, "integerValue")}];
  }

  v24 = [v4 compare:v5];

  return v24;
}

+ (id)customValueFormatter
{
  v2 = +[HFFormatterManager sharedInstance];
  temperatureFormatter = [v2 temperatureFormatter];

  [temperatureFormatter setInputIsCelsius:1];

  return temperatureFormatter;
}

+ (id)titleStringForState:(int64_t)state
{
  if (state > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = _HFLocalizedStringWithDefaultValue(off_277E02458[state], off_277E02458[state], 1);
  }

  return v4;
}

+ (unint64_t)abstractTargetModeInResponse:(id)response
{
  v3 = [(HFTemperatureItemUtilities *)HFThermostatItemUtilities targetHeatingCoolingModeValueInResponse:response];
  v4 = v3;
  if (v3)
  {
    v5 = +[HFTargetRangeUtilities rangeModeForHeatingCoolingMode:](HFTargetRangeUtilities, "rangeModeForHeatingCoolingMode:", [v3 integerValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)abstractCurrentModeInResponse:(id)response
{
  v3 = [(HFTemperatureItemUtilities *)HFThermostatItemUtilities currentHeatingCoolingModeValueInResponse:response];
  v4 = v3;
  if (v3)
  {
    v5 = +[HFTargetRangeUtilities rangeModeForHeatingCoolingMode:](HFTargetRangeUtilities, "rangeModeForHeatingCoolingMode:", [v3 integerValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end