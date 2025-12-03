@interface HFTemperatureItemUtilities
+ (id)currentHeatingCoolingModeValueInResponse:(id)response;
+ (id)integerTemperatureRangeWithinNumberRange:(id)range representsCelsius:(BOOL)celsius;
+ (id)targetHeatingCoolingModeValueInResponse:(id)response;
+ (id)targetTemperatureValueInResponse:(id)response;
+ (int64_t)_heatingCoolingValueForCurrentHeaterCoolerState:(int64_t)state isActive:(BOOL)active;
+ (int64_t)_heatingCoolingValueForTargetHeaterCoolerState:(int64_t)state isActive:(BOOL)active;
@end

@implementation HFTemperatureItemUtilities

+ (id)currentHeatingCoolingModeValueInResponse:(id)response
{
  responseCopy = response;
  v5 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF818]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  if (!v6)
  {
    v7 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF810]];
    characteristic = [v7 characteristic];
    service = [characteristic service];

    if (service)
    {
      v10 = [v7 valueWithExpectedClass:objc_opt_class()];
      v11 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF748] inService:service];
      v12 = [v11 valueWithExpectedClass:objc_opt_class()];

      v6 = 0;
      if (v10 && v12)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "_heatingCoolingValueForCurrentHeaterCoolerState:isActive:", objc_msgSend(v10, "integerValue"), objc_msgSend(v12, "BOOLValue"))}];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (int64_t)_heatingCoolingValueForTargetHeaterCoolerState:(int64_t)state isActive:(BOOL)active
{
  result = 0;
  if (state <= 2 && active)
  {
    return qword_20DD97680[state];
  }

  return result;
}

+ (id)targetHeatingCoolingModeValueInResponse:(id)response
{
  responseCopy = response;
  v5 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB20]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  if (!v6)
  {
    v7 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB18]];
    characteristic = [v7 characteristic];
    service = [characteristic service];

    if (service)
    {
      v10 = [v7 valueWithExpectedClass:objc_opt_class()];
      v11 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF748] inService:service];
      v12 = [v11 valueWithExpectedClass:objc_opt_class()];

      v6 = 0;
      if (v10 && v12)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "_heatingCoolingValueForTargetHeaterCoolerState:isActive:", objc_msgSend(v10, "integerValue"), objc_msgSend(v12, "BOOLValue"))}];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)targetTemperatureValueInResponse:(id)response
{
  responseCopy = response;
  v5 = [self currentHeatingCoolingModeValueInResponse:responseCopy];
  v6 = [self targetHeatingCoolingModeValueInResponse:responseCopy];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = +[HFTargetRangeUtilities rangeModeForHeatingCoolingMode:](HFTargetRangeUtilities, "rangeModeForHeatingCoolingMode:", [v5 integerValue]);
    v10 = +[HFTargetRangeUtilities rangeModeForHeatingCoolingMode:](HFTargetRangeUtilities, "rangeModeForHeatingCoolingMode:", [v7 integerValue]);
    v11 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF8C8]];
    v12 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF7F0]];
    v13 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB68]];
    v8 = [HFTargetRangeUtilities targetValueWithTargetMode:v10 currentMode:v9 rawTargetResponse:v13 minimumThresholdResponse:v11 maximumThresholdResponse:v12];
  }

  return v8;
}

+ (int64_t)_heatingCoolingValueForCurrentHeaterCoolerState:(int64_t)state isActive:(BOOL)active
{
  v4 = state == 2;
  if (state == 3)
  {
    v4 = 2;
  }

  if (active)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (id)integerTemperatureRangeWithinNumberRange:(id)range representsCelsius:(BOOL)celsius
{
  celsiusCopy = celsius;
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  [minValue doubleValue];
  if (celsiusCopy)
  {
    v8 = ceil(v7);

    maxValue = [rangeCopy maxValue];

    [maxValue doubleValue];
    v11 = floor(v10);
  }

  else
  {
    v12 = ceil(v7 * 9.0 / 5.0 + 32.0);

    v8 = (v12 + -32.0) * 5.0 / 9.0;
    maxValue2 = [rangeCopy maxValue];

    [maxValue2 doubleValue];
    v15 = floor(v14 * 9.0 / 5.0 + 32.0);

    v11 = (v15 + -32.0) * 5.0 / 9.0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v18 = [HFNumberRange rangeWithMaxValue:v16 minValue:v17];

  return v18;
}

@end