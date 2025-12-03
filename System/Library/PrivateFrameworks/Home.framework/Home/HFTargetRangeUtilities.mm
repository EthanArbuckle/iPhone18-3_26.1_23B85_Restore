@interface HFTargetRangeUtilities
+ (id)targetRelativePercentValueWithTargetMode:(unint64_t)mode currentMode:(unint64_t)currentMode rawTargetRelativePercentValue:(id)value minimumThresholdRelativePercentValue:(id)percentValue maximumThresholdRelativePercentValue:(id)relativePercentValue;
+ (id)targetRelativePercentValueWithTargetMode:(unint64_t)mode currentMode:(unint64_t)currentMode rawTargetResponse:(id)response minimumThresholdResponse:(id)thresholdResponse maximumThresholdResponse:(id)maximumThresholdResponse;
+ (id)targetValueForService:(id)service valueProvider:(id)provider;
+ (id)targetValueWithTargetMode:(unint64_t)mode currentMode:(unint64_t)currentMode rawTargetResponse:(id)response minimumThresholdResponse:(id)thresholdResponse maximumThresholdResponse:(id)maximumThresholdResponse;
+ (unint64_t)rangeModeForCurrentHeaterCoolerState:(int64_t)state;
+ (unint64_t)rangeModeForCurrentHumidifierDehumidifierState:(int64_t)state;
+ (unint64_t)rangeModeForHeatingCoolingMode:(int64_t)mode;
+ (unint64_t)rangeModeForTargetHeaterCoolerState:(int64_t)state;
+ (unint64_t)rangeModeForTargetHumidifierDehumidifierState:(int64_t)state;
@end

@implementation HFTargetRangeUtilities

+ (unint64_t)rangeModeForHeatingCoolingMode:(int64_t)mode
{
  if ((mode - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return mode;
  }
}

+ (unint64_t)rangeModeForTargetHeaterCoolerState:(int64_t)state
{
  if (state > 2)
  {
    return 0;
  }

  else
  {
    return qword_20DD975C0[state];
  }
}

+ (unint64_t)rangeModeForCurrentHeaterCoolerState:(int64_t)state
{
  if (state == 3)
  {
    return 2;
  }

  else
  {
    return state == 2;
  }
}

+ (unint64_t)rangeModeForTargetHumidifierDehumidifierState:(int64_t)state
{
  if (state > 2)
  {
    return 0;
  }

  else
  {
    return qword_20DD975C0[state];
  }
}

+ (unint64_t)rangeModeForCurrentHumidifierDehumidifierState:(int64_t)state
{
  if (state == 3)
  {
    return 2;
  }

  else
  {
    return state == 2;
  }
}

+ (id)targetRelativePercentValueWithTargetMode:(unint64_t)mode currentMode:(unint64_t)currentMode rawTargetRelativePercentValue:(id)value minimumThresholdRelativePercentValue:(id)percentValue maximumThresholdRelativePercentValue:(id)relativePercentValue
{
  valueCopy = value;
  percentValueCopy = percentValue;
  relativePercentValueCopy = relativePercentValue;
  if (currentMode == 3)
  {
    NSLog(&cfstr_CurrentmodeSho.isa);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __183__HFTargetRangeUtilities_targetRelativePercentValueWithTargetMode_currentMode_rawTargetRelativePercentValue_minimumThresholdRelativePercentValue_maximumThresholdRelativePercentValue___block_invoke;
  v20[3] = &unk_277DFDE18;
  currentModeCopy = currentMode;
  modeCopy = mode;
  v21 = valueCopy;
  v22 = percentValueCopy;
  v23 = relativePercentValueCopy;
  v14 = relativePercentValueCopy;
  v15 = percentValueCopy;
  v16 = valueCopy;
  v18 = __183__HFTargetRangeUtilities_targetRelativePercentValueWithTargetMode_currentMode_rawTargetRelativePercentValue_minimumThresholdRelativePercentValue_maximumThresholdRelativePercentValue___block_invoke(v20, v17);

  return v18;
}

id __183__HFTargetRangeUtilities_targetRelativePercentValueWithTargetMode_currentMode_rawTargetRelativePercentValue_minimumThresholdRelativePercentValue_maximumThresholdRelativePercentValue___block_invoke(void *a1, id a2)
{
  v3 = a1[7];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (a1[8] != 3)
      {
        v5 = a1[4];
        if (v5)
        {
          goto LABEL_30;
        }
      }

      v5 = a1[6];
      if (v5)
      {
        goto LABEL_30;
      }

LABEL_25:
      v6 = 4;
      goto LABEL_26;
    }

    if (v3 != 3)
    {
      goto LABEL_31;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_31;
    }

    v4 = a1[8];
LABEL_5:
    if (v4 != 3)
    {
      v5 = a1[4];
      if (v5)
      {
        goto LABEL_30;
      }
    }

    v5 = a1[5];
    if (v5)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v4 = a1[8];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[4];
      if (v5)
      {
        goto LABEL_30;
      }

      v6 = 6;
      goto LABEL_26;
    }

    if (v4 != 3)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_5;
    }

    v5 = a1[4];
    if (!v5)
    {
      v6 = 5;
LABEL_26:
      v5 = a1[v6];
    }

LABEL_30:
    a2 = v5;
    goto LABEL_31;
  }

  v5 = a1[4];
  if (v5)
  {
    goto LABEL_30;
  }

  v5 = a1[6];
  if (a1[5])
  {
    if (!v5)
    {
      v5 = a1[5];
      goto LABEL_30;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  a2 = 0;
LABEL_31:

  return a2;
}

+ (id)targetRelativePercentValueWithTargetMode:(unint64_t)mode currentMode:(unint64_t)currentMode rawTargetResponse:(id)response minimumThresholdResponse:(id)thresholdResponse maximumThresholdResponse:(id)maximumThresholdResponse
{
  maximumThresholdResponseCopy = maximumThresholdResponse;
  thresholdResponseCopy = thresholdResponse;
  responseCopy = response;
  v14 = [[HFRelativePercentValue alloc] initWithCharacteristicReadResponse:responseCopy];

  v15 = [[HFRelativePercentValue alloc] initWithCharacteristicReadResponse:thresholdResponseCopy];
  v16 = [[HFRelativePercentValue alloc] initWithCharacteristicReadResponse:maximumThresholdResponseCopy];

  v17 = [objc_opt_class() targetRelativePercentValueWithTargetMode:mode currentMode:currentMode rawTargetRelativePercentValue:v14 minimumThresholdRelativePercentValue:v15 maximumThresholdRelativePercentValue:v16];

  return v17;
}

+ (id)targetValueWithTargetMode:(unint64_t)mode currentMode:(unint64_t)currentMode rawTargetResponse:(id)response minimumThresholdResponse:(id)thresholdResponse maximumThresholdResponse:(id)maximumThresholdResponse
{
  maximumThresholdResponseCopy = maximumThresholdResponse;
  thresholdResponseCopy = thresholdResponse;
  responseCopy = response;
  v14 = [objc_opt_class() targetRelativePercentValueWithTargetMode:mode currentMode:currentMode rawTargetResponse:responseCopy minimumThresholdResponse:thresholdResponseCopy maximumThresholdResponse:maximumThresholdResponseCopy];

  if (v14)
  {
    value = [v14 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

+ (id)targetValueForService:(id)service valueProvider:(id)provider
{
  serviceCopy = service;
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFTargetRangeUtilities.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"valueProvider != nil"}];
  }

  serviceType = [serviceCopy serviceType];
  v10 = [serviceType isEqualToString:*MEMORY[0x277CD0F30]];

  if (!v10)
  {
    serviceType2 = [serviceCopy serviceType];
    v17 = [serviceType2 isEqualToString:*MEMORY[0x277CD0E60]];

    if (v17)
    {
      v12 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF8C8]];
      v46 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF7F0]];
      v18 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCFB18]];
      if (v18)
      {
        v19 = providerCopy[2](providerCopy, v18);
        if (v19)
        {
          v15 = [objc_opt_class() rangeModeForTargetHeaterCoolerState:{objc_msgSend(v19, "integerValue")}];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v32 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF810]];
      if (v32)
      {
        v33 = providerCopy[2](providerCopy, v32);
        if (v33)
        {
          v34 = [objc_opt_class() rangeModeForCurrentHeaterCoolerState:{objc_msgSend(v33, "integerValue")}];
LABEL_40:
          v45 = v34;
LABEL_43:

          goto LABEL_44;
        }

        goto LABEL_42;
      }
    }

    else
    {
      serviceType3 = [serviceCopy serviceType];
      v21 = [serviceType3 isEqualToString:*MEMORY[0x277CD0E68]];

      if (!v21)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v46 = 0;
        v27 = 0;
        v11 = 0;
        v28 = 0;
        goto LABEL_53;
      }

      v12 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF8E0]];
      v46 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF888]];
      v18 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCFB30]];
      if (v18)
      {
        v22 = providerCopy[2](providerCopy, v18);
        if (v22)
        {
          v15 = [objc_opt_class() rangeModeForTargetHumidifierDehumidifierState:{objc_msgSend(v22, "integerValue")}];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v32 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF828]];
      if (v32)
      {
        v33 = providerCopy[2](providerCopy, v32);
        if (v33)
        {
          v34 = [objc_opt_class() rangeModeForCurrentHumidifierDehumidifierState:{objc_msgSend(v33, "integerValue")}];
          goto LABEL_40;
        }

LABEL_42:
        v45 = 0;
        goto LABEL_43;
      }
    }

    v45 = 0;
LABEL_44:

    v24 = 0;
    v11 = 0;
    goto LABEL_45;
  }

  v11 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCFB68]];
  v12 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF8C8]];
  v46 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF7F0]];
  v13 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCFB20]];
  if (v13)
  {
    v14 = providerCopy[2](providerCopy, v13);
    if (v14)
    {
      v15 = [objc_opt_class() rangeModeForHeatingCoolingMode:{objc_msgSend(v14, "integerValue")}];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v29 = [serviceCopy hf_characteristicOfType:*MEMORY[0x277CCF818]];
  if (v29)
  {
    v30 = providerCopy[2](providerCopy, v29);
    if (v30)
    {
      v45 = [objc_opt_class() rangeModeForHeatingCoolingMode:{objc_msgSend(v30, "integerValue")}];
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  if (v11)
  {
    v31 = [HFRelativePercentValue alloc];
    v18 = providerCopy[2](providerCopy, v11);
    v24 = [(HFRelativePercentValue *)v31 initWithValue:v18 forCharacteristic:v11];
LABEL_45:

    goto LABEL_46;
  }

  v24 = 0;
LABEL_46:
  v26 = v15;
  v23 = v12;
  if (v12)
  {
    v35 = [HFRelativePercentValue alloc];
    v36 = providerCopy[2](providerCopy, v12);
    v37 = v12;
    v23 = [(HFRelativePercentValue *)v35 initWithValue:v36 forCharacteristic:v12];
  }

  else
  {
    v37 = 0;
  }

  if (v46)
  {
    v38 = [HFRelativePercentValue alloc];
    v39 = providerCopy[2](providerCopy, v46);
    v28 = [(HFRelativePercentValue *)v38 initWithValue:v39 forCharacteristic:v46];
  }

  else
  {
    v46 = 0;
    v28 = 0;
  }

  v27 = v37;
  v25 = v45;
LABEL_53:
  v40 = [objc_opt_class() targetRelativePercentValueWithTargetMode:v26 currentMode:v25 rawTargetRelativePercentValue:v24 minimumThresholdRelativePercentValue:v23 maximumThresholdRelativePercentValue:v28];
  v41 = v40;
  if (v40)
  {
    value = [v40 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

@end