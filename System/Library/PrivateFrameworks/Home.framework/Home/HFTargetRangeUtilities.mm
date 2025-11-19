@interface HFTargetRangeUtilities
+ (id)targetRelativePercentValueWithTargetMode:(unint64_t)a3 currentMode:(unint64_t)a4 rawTargetRelativePercentValue:(id)a5 minimumThresholdRelativePercentValue:(id)a6 maximumThresholdRelativePercentValue:(id)a7;
+ (id)targetRelativePercentValueWithTargetMode:(unint64_t)a3 currentMode:(unint64_t)a4 rawTargetResponse:(id)a5 minimumThresholdResponse:(id)a6 maximumThresholdResponse:(id)a7;
+ (id)targetValueForService:(id)a3 valueProvider:(id)a4;
+ (id)targetValueWithTargetMode:(unint64_t)a3 currentMode:(unint64_t)a4 rawTargetResponse:(id)a5 minimumThresholdResponse:(id)a6 maximumThresholdResponse:(id)a7;
+ (unint64_t)rangeModeForCurrentHeaterCoolerState:(int64_t)a3;
+ (unint64_t)rangeModeForCurrentHumidifierDehumidifierState:(int64_t)a3;
+ (unint64_t)rangeModeForHeatingCoolingMode:(int64_t)a3;
+ (unint64_t)rangeModeForTargetHeaterCoolerState:(int64_t)a3;
+ (unint64_t)rangeModeForTargetHumidifierDehumidifierState:(int64_t)a3;
@end

@implementation HFTargetRangeUtilities

+ (unint64_t)rangeModeForHeatingCoolingMode:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (unint64_t)rangeModeForTargetHeaterCoolerState:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_20DD975C0[a3];
  }
}

+ (unint64_t)rangeModeForCurrentHeaterCoolerState:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

+ (unint64_t)rangeModeForTargetHumidifierDehumidifierState:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_20DD975C0[a3];
  }
}

+ (unint64_t)rangeModeForCurrentHumidifierDehumidifierState:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

+ (id)targetRelativePercentValueWithTargetMode:(unint64_t)a3 currentMode:(unint64_t)a4 rawTargetRelativePercentValue:(id)a5 minimumThresholdRelativePercentValue:(id)a6 maximumThresholdRelativePercentValue:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (a4 == 3)
  {
    NSLog(&cfstr_CurrentmodeSho.isa);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __183__HFTargetRangeUtilities_targetRelativePercentValueWithTargetMode_currentMode_rawTargetRelativePercentValue_minimumThresholdRelativePercentValue_maximumThresholdRelativePercentValue___block_invoke;
  v20[3] = &unk_277DFDE18;
  v24 = a4;
  v25 = a3;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
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

+ (id)targetRelativePercentValueWithTargetMode:(unint64_t)a3 currentMode:(unint64_t)a4 rawTargetResponse:(id)a5 minimumThresholdResponse:(id)a6 maximumThresholdResponse:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [[HFRelativePercentValue alloc] initWithCharacteristicReadResponse:v13];

  v15 = [[HFRelativePercentValue alloc] initWithCharacteristicReadResponse:v12];
  v16 = [[HFRelativePercentValue alloc] initWithCharacteristicReadResponse:v11];

  v17 = [objc_opt_class() targetRelativePercentValueWithTargetMode:a3 currentMode:a4 rawTargetRelativePercentValue:v14 minimumThresholdRelativePercentValue:v15 maximumThresholdRelativePercentValue:v16];

  return v17;
}

+ (id)targetValueWithTargetMode:(unint64_t)a3 currentMode:(unint64_t)a4 rawTargetResponse:(id)a5 minimumThresholdResponse:(id)a6 maximumThresholdResponse:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [objc_opt_class() targetRelativePercentValueWithTargetMode:a3 currentMode:a4 rawTargetResponse:v13 minimumThresholdResponse:v12 maximumThresholdResponse:v11];

  if (v14)
  {
    v15 = [v14 value];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)targetValueForService:(id)a3 valueProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:a1 file:@"HFTargetRangeUtilities.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"valueProvider != nil"}];
  }

  v9 = [v7 serviceType];
  v10 = [v9 isEqualToString:*MEMORY[0x277CD0F30]];

  if (!v10)
  {
    v16 = [v7 serviceType];
    v17 = [v16 isEqualToString:*MEMORY[0x277CD0E60]];

    if (v17)
    {
      v12 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF8C8]];
      v46 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF7F0]];
      v18 = [v7 hf_characteristicOfType:*MEMORY[0x277CCFB18]];
      if (v18)
      {
        v19 = v8[2](v8, v18);
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

      v32 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF810]];
      if (v32)
      {
        v33 = v8[2](v8, v32);
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
      v20 = [v7 serviceType];
      v21 = [v20 isEqualToString:*MEMORY[0x277CD0E68]];

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

      v12 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF8E0]];
      v46 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF888]];
      v18 = [v7 hf_characteristicOfType:*MEMORY[0x277CCFB30]];
      if (v18)
      {
        v22 = v8[2](v8, v18);
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

      v32 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF828]];
      if (v32)
      {
        v33 = v8[2](v8, v32);
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

  v11 = [v7 hf_characteristicOfType:*MEMORY[0x277CCFB68]];
  v12 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF8C8]];
  v46 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF7F0]];
  v13 = [v7 hf_characteristicOfType:*MEMORY[0x277CCFB20]];
  if (v13)
  {
    v14 = v8[2](v8, v13);
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

  v29 = [v7 hf_characteristicOfType:*MEMORY[0x277CCF818]];
  if (v29)
  {
    v30 = v8[2](v8, v29);
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
    v18 = v8[2](v8, v11);
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
    v36 = v8[2](v8, v12);
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
    v39 = v8[2](v8, v46);
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
    v42 = [v40 value];
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

@end