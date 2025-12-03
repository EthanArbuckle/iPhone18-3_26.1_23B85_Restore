@interface HFHumidifierDehumidifierThresholdControlItem
+ (id)readOnlyCharacteristicTypes;
- (HFHumidifierDehumidifierThresholdControlItem)initWithValueSource:(id)source displayResults:(id)results;
- (id)numberValueFormatter;
- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)type;
- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)type;
@end

@implementation HFHumidifierDehumidifierThresholdControlItem

- (HFHumidifierDehumidifierThresholdControlItem)initWithValueSource:(id)source displayResults:(id)results
{
  sourceCopy = source;
  resultsCopy = results;
  v8 = objc_opt_class();
  v9 = *MEMORY[0x277CCF8E0];
  v10 = [v8 _hasWritableCharacteristicsOfType:*MEMORY[0x277CCF8E0] valueSource:sourceCopy];
  v11 = objc_opt_class();
  v12 = *MEMORY[0x277CCF888];
  v13 = [v11 _hasWritableCharacteristicsOfType:*MEMORY[0x277CCF888] valueSource:sourceCopy];
  if (v10)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v17 = v9;
    v18 = v12;
    v19 = [MEMORY[0x277CBEB98] setWithObjects:{v17, v18, 0}];
    goto LABEL_14;
  }

  if (v10)
  {
    v15 = MEMORY[0x277CBEB98];
    v16 = v9;
LABEL_10:
    v19 = [v15 setWithObject:v16];
    v18 = 0;
    v17 = 0;
    goto LABEL_14;
  }

  if (v13)
  {
    v15 = MEMORY[0x277CBEB98];
    v16 = v12;
    goto LABEL_10;
  }

  v20 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "A humidifier/dehumidifier service has neither a humidify threshold nor a dehumidify threshold characteristic. We can't do anything with that.", buf, 2u);
  }

  v18 = 0;
  v17 = 0;
  v19 = 0;
LABEL_14:
  v23.receiver = self;
  v23.super_class = HFHumidifierDehumidifierThresholdControlItem;
  v21 = [(HFRangeControlItem *)&v23 initWithValueSource:sourceCopy targetCharacteristicTypes:v19 minimumCharacteristicType:v17 maximumCharacteristicType:v18 displayResults:resultsCopy];

  return v21;
}

+ (id)readOnlyCharacteristicTypes
{
  if (qword_27C84C4B8 != -1)
  {
    dispatch_once(&qword_27C84C4B8, &__block_literal_global_103);
  }

  v3 = qword_27C84C4C0;

  return v3;
}

void __75__HFHumidifierDehumidifierThresholdControlItem_readOnlyCharacteristicTypes__block_invoke_2()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF850];
  v6[0] = *MEMORY[0x277CCFB30];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_27C84C4C0;
  qword_27C84C4C0 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)rangeModeWithCharacteristicValuesKeyedByType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  v5 = [typeCopy objectForKeyedSubscript:*MEMORY[0x277CCFB30]];
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
      maximumCharacteristicType = [(HFRangeControlItem *)self maximumCharacteristicType];

      if (maximumCharacteristicType)
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

- (id)targetCharacteristicTypeWithCharacteristicValuesKeyedByType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  v5 = [typeCopy objectForKeyedSubscript:*MEMORY[0x277CCFB30]];

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
    goto LABEL_23;
  }

  v8 = objc_opt_class();
  v9 = *MEMORY[0x277CCF8E0];
  valueSource = [(HFControlItem *)self valueSource];
  v11 = [v8 _hasWritableCharacteristicsOfType:v9 valueSource:valueSource];

  v12 = objc_opt_class();
  v13 = *MEMORY[0x277CCF888];
  valueSource2 = [(HFControlItem *)self valueSource];
  v15 = [v12 _hasWritableCharacteristicsOfType:v13 valueSource:valueSource2];

  integerValue = [v7 integerValue];
  if (integerValue == 1)
  {
    if (v11)
    {
      v17 = v9;
      goto LABEL_11;
    }

    v20 = HFLogForCategory(0x2CuLL);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v21 = "Humidifer service is in the state HMCharacteristicValueTargetHumidifierDehumidifierStateHumidify, but has no humidify threshold characteristic";
    v22 = buf;
  }

  else if (integerValue == 2)
  {
    if (v15)
    {
      v17 = v13;
LABEL_11:
      v18 = v17;
      goto LABEL_24;
    }

    v20 = HFLogForCategory(0x2CuLL);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v24 = 0;
    v21 = "Dehumidifier service is in the state HMCharacteristicValueTargetHumidifierDehumidifierStateDehumidify, but has no dehumidify threshold characteristic";
    v22 = &v24;
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      v19 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "A humidifier/dehumidifier is in Auto mode, but it doesn't have a HumidifierThreshold characteristic. This is not supported in the spec.", v27, 2u);
      }
    }

    if (v15)
    {
      goto LABEL_23;
    }

    v20 = HFLogForCategory(0x2CuLL);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v26 = 0;
    v21 = "A humidifier/dehumidifier is in Auto mode, but it doesn't have a DehumidifierThreshold characteristic. This is not supported in the spec.";
    v22 = &v26;
  }

  _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, v21, v22, 2u);
LABEL_22:

LABEL_23:
  v18 = 0;
LABEL_24:

  return v18;
}

- (id)numberValueFormatter
{
  v2 = +[HFFormatterManager sharedInstance];
  percentFormatter = [v2 percentFormatter];

  return percentFormatter;
}

@end