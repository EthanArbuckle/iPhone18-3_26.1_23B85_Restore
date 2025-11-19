@interface FIDefaultSecondPlatterMetrics
+ (id)boltMetricsForActivityType:(id)a3;
+ (id)metricsForActivityType:(id)a3 metricsVersion:(int64_t)a4;
+ (id)moonstoneMetricsForActivityType:(id)a3;
+ (id)velocityMetricsForActivityType:(id)a3;
@end

@implementation FIDefaultSecondPlatterMetrics

+ (id)metricsForActivityType:(id)a3 metricsVersion:(int64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 6:
      v7 = [a1 moonstoneMetricsForActivityType:v6];
      goto LABEL_7;
    case 5:
      v7 = [a1 velocityMetricsForActivityType:v6];
      goto LABEL_7;
    case 4:
      v7 = [a1 boltMetricsForActivityType:v6];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v8;
}

+ (id)boltMetricsForActivityType:(id)a3
{
  v4 = a3;
  v5 = [v4 effectiveTypeIdentifier];
  if (v5 <= 36)
  {
    if (v5 == 13)
    {
      if (![v4 isIndoor])
      {
        v9 = &unk_285E6AEF0;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (v5 != 24)
    {
      goto LABEL_18;
    }

LABEL_8:
    v9 = &unk_285E6AF38;
    goto LABEL_21;
  }

  if (v5 != 52)
  {
    if (v5 != 46)
    {
      if (v5 == 37)
      {
        v6 = [v4 isIndoor];
        v7 = &unk_285E6AEC0;
        v8 = &unk_285E6AED8;
        goto LABEL_10;
      }

LABEL_18:
      v9 = [a1 boltDefaultNonDistance];
      goto LABEL_21;
    }

    v10 = [v4 swimmingLocationType];
    switch(v10)
    {
      case 0:
        goto LABEL_18;
      case 1:
        v9 = &unk_285E6AF08;
        goto LABEL_21;
      case 2:
        v9 = &unk_285E6AF20;
        goto LABEL_21;
    }

    goto LABEL_8;
  }

  v6 = [v4 isIndoor];
  v7 = &unk_285E6AF50;
  v8 = &unk_285E6AF68;
LABEL_10:
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

LABEL_21:

  return v9;
}

+ (id)velocityMetricsForActivityType:(id)a3
{
  v4 = a3;
  if ([v4 effectiveTypeIdentifier] != 13)
  {
    v13 = [a1 boltMetricsForActivityType:v4];
LABEL_22:
    v12 = v13;
    goto LABEL_23;
  }

  v5 = +[FIBluetoothSensorLookup hasHadPairedCyclingPowerSensors];
  v6 = +[FIBluetoothSensorLookup hasHadPairedCyclingCadenceSensors];
  v7 = +[FIBluetoothSensorLookup hasHadPairedCyclingSpeedSensors];
  v8 = [v4 isIndoor];
  v9 = v5 && v6;
  v10 = v5 || v6;
  if (v8 && !v7)
  {
    if (v9)
    {
      v11 = &unk_285E6AFE0;
    }

    else
    {
      v11 = &unk_285E6AFF8;
    }

    if (v5)
    {
      v12 = v11;
    }

    else
    {
      v12 = &unk_285E6B010;
    }

    if (v10)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v9)
  {
    v14 = &unk_285E6AF80;
  }

  else
  {
    v14 = &unk_285E6AF98;
  }

  if (v5)
  {
    v12 = v14;
  }

  else
  {
    v12 = &unk_285E6AFB0;
  }

  if (v10)
  {
    goto LABEL_23;
  }

  if ([v4 isIndoor])
  {
LABEL_21:
    v13 = [objc_opt_class() boltDefaultNonDistance];
    goto LABEL_22;
  }

  v12 = &unk_285E6AFC8;
LABEL_23:

  return v12;
}

+ (id)moonstoneMetricsForActivityType:(id)a3
{
  v4 = a3;
  v5 = [v4 effectiveTypeIdentifier];
  if (v5 <= 59)
  {
    if (v5 == 31)
    {
      v6 = &unk_285E6B088;
    }

    else
    {
      if (v5 != 35 || [v4 isIndoor])
      {
LABEL_9:
        v6 = [a1 velocityMetricsForActivityType:v4];
        goto LABEL_13;
      }

      v6 = &unk_285E6B070;
    }
  }

  else
  {
    if (v5 != 60)
    {
      if (v5 == 67 || v5 == 61)
      {
        v6 = &unk_285E6B058;
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    v6 = &unk_285E6B040;
  }

LABEL_13:

  return v6;
}

@end