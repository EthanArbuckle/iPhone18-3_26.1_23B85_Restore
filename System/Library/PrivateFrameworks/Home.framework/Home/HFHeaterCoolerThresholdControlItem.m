@interface HFHeaterCoolerThresholdControlItem
+ (id)readOnlyCharacteristicTypes;
- (HFHeaterCoolerThresholdControlItem)initWithValueSource:(id)a3 displayResults:(id)a4;
- (id)numberValueFormatter;
- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)a3;
- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)a3;
@end

@implementation HFHeaterCoolerThresholdControlItem

- (HFHeaterCoolerThresholdControlItem)initWithValueSource:(id)a3 displayResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB98] set];
  v9 = objc_opt_class();
  v10 = *MEMORY[0x277CCF8C8];
  v11 = [v9 _hasWritableCharacteristicsOfType:*MEMORY[0x277CCF8C8] valueSource:v6];
  v12 = objc_opt_class();
  v13 = *MEMORY[0x277CCF7F0];
  v14 = [v12 _hasWritableCharacteristicsOfType:*MEMORY[0x277CCF7F0] valueSource:v6];
  if (v11)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (v11)
    {
      v16 = MEMORY[0x277CBEB98];
      v17 = v10;
    }

    else
    {
      if (!v14)
      {
        v18 = 0;
        v19 = 0;
        goto LABEL_12;
      }

      v16 = MEMORY[0x277CBEB98];
      v17 = v13;
    }

    v20 = [v16 setWithObject:v17];
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = v10;
    v19 = v13;
    v20 = [MEMORY[0x277CBEB98] setWithObjects:{v18, v19, 0}];
  }

  v8 = v20;
LABEL_12:
  v23.receiver = self;
  v23.super_class = HFHeaterCoolerThresholdControlItem;
  v21 = [(HFRangeControlItem *)&v23 initWithValueSource:v6 targetCharacteristicTypes:v8 minimumCharacteristicType:v18 maximumCharacteristicType:v19 displayResults:v7];

  return v21;
}

+ (id)readOnlyCharacteristicTypes
{
  if (qword_27C84C4A8 != -1)
  {
    dispatch_once(&qword_27C84C4A8, &__block_literal_global_94);
  }

  v3 = qword_27C84C4B0;

  return v3;
}

void __65__HFHeaterCoolerThresholdControlItem_readOnlyCharacteristicTypes__block_invoke_2()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF748];
  v7[0] = *MEMORY[0x277CCFB18];
  v7[1] = v1;
  v2 = *MEMORY[0x277CCF810];
  v7[2] = *MEMORY[0x277CCF868];
  v7[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = qword_27C84C4B0;
  qword_27C84C4B0 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)numberValueFormatter
{
  v2 = +[HFFormatterManager sharedInstance];
  v3 = [v2 temperatureFormatter];

  [v3 setInputIsCelsius:1];

  return v3;
}

- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCFB18]];
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
    if ([v7 integerValue] || (-[HFRangeControlItem minimumCharacteristicType](self, "minimumCharacteristicType"), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = 1;
    }

    else
    {
      v10 = v9;
      v11 = [(HFRangeControlItem *)self maximumCharacteristicType];

      if (v11)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCFB18]];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = objc_opt_class();
  v9 = *MEMORY[0x277CCF8C8];
  v10 = [(HFControlItem *)self valueSource];
  v11 = [v8 _hasWritableCharacteristicsOfType:v9 valueSource:v10];

  v12 = objc_opt_class();
  v13 = *MEMORY[0x277CCF7F0];
  v14 = [(HFControlItem *)self valueSource];
  v15 = [v12 _hasWritableCharacteristicsOfType:v13 valueSource:v14];

  v16 = [v7 integerValue];
  if (v16 == 1)
  {
    if (!v11)
    {
      v18 = HFLogForCategory(0x2CuLL);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      v27 = 0;
      v19 = "Heater/Cooler service is in the state HMCharacteristicValueTargetHeaterCoolerStateHeat, but has no heating threshold characteristic";
      v20 = &v27;
LABEL_32:
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
      goto LABEL_19;
    }

LABEL_17:
    v17 = v9;
    goto LABEL_27;
  }

  if (v16 != 2)
  {
    if ((v11 & 1) == 0)
    {
      v23 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_ERROR, "A heater/cooler is in Auto mode, but it doesn't have a HeatingThreshold characteristic. This is not supported in the spec.", buf, 2u);
      }

      if (v15)
      {
        v24 = v13;
      }

      else
      {
        v24 = 0;
      }

      v17 = v24;
      goto LABEL_27;
    }

    if (v15)
    {
LABEL_20:
      v22 = 0;
      goto LABEL_28;
    }

    v21 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "A heater/cooler is in Auto mode, but it doesn't have a CoolingThreshold characteristic. This is not supported in the spec.", v28, 2u);
    }

    goto LABEL_17;
  }

  if (!v15)
  {
    v18 = HFLogForCategory(0x2CuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v26 = 0;
    v19 = "Heater/Cooler service is in the state HMCharacteristicValueTargetHeaterCoolerStateCool, but has no cooling threshold characteristic";
    v20 = &v26;
    goto LABEL_32;
  }

  v17 = v13;
LABEL_27:
  v22 = v17;
LABEL_28:

  return v22;
}

@end