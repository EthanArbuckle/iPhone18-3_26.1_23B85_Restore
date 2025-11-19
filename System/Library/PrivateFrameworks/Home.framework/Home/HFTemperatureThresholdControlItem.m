@interface HFTemperatureThresholdControlItem
+ (id)readOnlyCharacteristicTypes;
- (HFTemperatureThresholdControlItem)initWithValueSource:(id)a3 displayResults:(id)a4;
- (id)numberValueFormatter;
- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)a3;
- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)a3;
@end

@implementation HFTemperatureThresholdControlItem

- (HFTemperatureThresholdControlItem)initWithValueSource:(id)a3 displayResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = *MEMORY[0x277CCFB68];
  if ([v8 _hasWritableCharacteristicsOfType:*MEMORY[0x277CCFB68] valueSource:v6])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (!v11)
  {
    v12 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "This thermostat doesn't have a writable HMCharacteristicTypeTargetTemperature characteristic, which is required in the spec", buf, 2u);
    }
  }

  v13 = objc_opt_class();
  v14 = *MEMORY[0x277CCF8C8];
  if ([v13 _hasWritableCharacteristicsOfType:*MEMORY[0x277CCF8C8] valueSource:v6])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = objc_opt_class();
  v18 = *MEMORY[0x277CCF7F0];
  if ([v17 _hasWritableCharacteristicsOfType:*MEMORY[0x277CCF7F0] valueSource:v6])
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x277CBEB98];
  v21 = v19;
  v22 = [v20 na_setWithSafeObject:v11];
  v25.receiver = self;
  v25.super_class = HFTemperatureThresholdControlItem;
  v23 = [(HFRangeControlItem *)&v25 initWithValueSource:v6 targetCharacteristicTypes:v22 minimumCharacteristicType:v16 maximumCharacteristicType:v21 displayResults:v7];

  return v23;
}

+ (id)readOnlyCharacteristicTypes
{
  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_82_0);
  }

  v3 = qword_27C84C4A0;

  return v3;
}

void __64__HFTemperatureThresholdControlItem_readOnlyCharacteristicTypes__block_invoke_2()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF868];
  v6[0] = *MEMORY[0x277CCFB20];
  v6[1] = v1;
  v6[2] = *MEMORY[0x277CCF818];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = qword_27C84C4A0;
  qword_27C84C4A0 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCFB20]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([v7 integerValue] == 3 && (-[HFRangeControlItem minimumCharacteristicType](self, "minimumCharacteristicType"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = [(HFRangeControlItem *)self maximumCharacteristicType];

      if (v10)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)a3
{
  v3 = [(HFRangeControlItem *)self targetCharacteristicTypes];
  v4 = [v3 anyObject];

  return v4;
}

- (id)numberValueFormatter
{
  v2 = +[HFFormatterManager sharedInstance];
  v3 = [v2 temperatureFormatter];

  [v3 setInputIsCelsius:1];

  return v3;
}

@end