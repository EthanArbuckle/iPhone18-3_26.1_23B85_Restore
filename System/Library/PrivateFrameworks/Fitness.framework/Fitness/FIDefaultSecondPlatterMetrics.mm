@interface FIDefaultSecondPlatterMetrics
+ (id)boltMetricsForActivityType:(id)type;
+ (id)metricsForActivityType:(id)type metricsVersion:(int64_t)version;
+ (id)moonstoneMetricsForActivityType:(id)type;
+ (id)velocityMetricsForActivityType:(id)type;
@end

@implementation FIDefaultSecondPlatterMetrics

+ (id)metricsForActivityType:(id)type metricsVersion:(int64_t)version
{
  typeCopy = type;
  switch(version)
  {
    case 6:
      v7 = [self moonstoneMetricsForActivityType:typeCopy];
      goto LABEL_7;
    case 5:
      v7 = [self velocityMetricsForActivityType:typeCopy];
      goto LABEL_7;
    case 4:
      v7 = [self boltMetricsForActivityType:typeCopy];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v8;
}

+ (id)boltMetricsForActivityType:(id)type
{
  typeCopy = type;
  effectiveTypeIdentifier = [typeCopy effectiveTypeIdentifier];
  if (effectiveTypeIdentifier <= 36)
  {
    if (effectiveTypeIdentifier == 13)
    {
      if (![typeCopy isIndoor])
      {
        boltDefaultNonDistance = &unk_285E6AEF0;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (effectiveTypeIdentifier != 24)
    {
      goto LABEL_18;
    }

LABEL_8:
    boltDefaultNonDistance = &unk_285E6AF38;
    goto LABEL_21;
  }

  if (effectiveTypeIdentifier != 52)
  {
    if (effectiveTypeIdentifier != 46)
    {
      if (effectiveTypeIdentifier == 37)
      {
        isIndoor = [typeCopy isIndoor];
        v7 = &unk_285E6AEC0;
        v8 = &unk_285E6AED8;
        goto LABEL_10;
      }

LABEL_18:
      boltDefaultNonDistance = [self boltDefaultNonDistance];
      goto LABEL_21;
    }

    swimmingLocationType = [typeCopy swimmingLocationType];
    switch(swimmingLocationType)
    {
      case 0:
        goto LABEL_18;
      case 1:
        boltDefaultNonDistance = &unk_285E6AF08;
        goto LABEL_21;
      case 2:
        boltDefaultNonDistance = &unk_285E6AF20;
        goto LABEL_21;
    }

    goto LABEL_8;
  }

  isIndoor = [typeCopy isIndoor];
  v7 = &unk_285E6AF50;
  v8 = &unk_285E6AF68;
LABEL_10:
  if (isIndoor)
  {
    boltDefaultNonDistance = v8;
  }

  else
  {
    boltDefaultNonDistance = v7;
  }

LABEL_21:

  return boltDefaultNonDistance;
}

+ (id)velocityMetricsForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy effectiveTypeIdentifier] != 13)
  {
    boltDefaultNonDistance = [self boltMetricsForActivityType:typeCopy];
LABEL_22:
    v12 = boltDefaultNonDistance;
    goto LABEL_23;
  }

  v5 = +[FIBluetoothSensorLookup hasHadPairedCyclingPowerSensors];
  v6 = +[FIBluetoothSensorLookup hasHadPairedCyclingCadenceSensors];
  v7 = +[FIBluetoothSensorLookup hasHadPairedCyclingSpeedSensors];
  isIndoor = [typeCopy isIndoor];
  v9 = v5 && v6;
  v10 = v5 || v6;
  if (isIndoor && !v7)
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

  if ([typeCopy isIndoor])
  {
LABEL_21:
    boltDefaultNonDistance = [objc_opt_class() boltDefaultNonDistance];
    goto LABEL_22;
  }

  v12 = &unk_285E6AFC8;
LABEL_23:

  return v12;
}

+ (id)moonstoneMetricsForActivityType:(id)type
{
  typeCopy = type;
  effectiveTypeIdentifier = [typeCopy effectiveTypeIdentifier];
  if (effectiveTypeIdentifier <= 59)
  {
    if (effectiveTypeIdentifier == 31)
    {
      v6 = &unk_285E6B088;
    }

    else
    {
      if (effectiveTypeIdentifier != 35 || [typeCopy isIndoor])
      {
LABEL_9:
        v6 = [self velocityMetricsForActivityType:typeCopy];
        goto LABEL_13;
      }

      v6 = &unk_285E6B070;
    }
  }

  else
  {
    if (effectiveTypeIdentifier != 60)
    {
      if (effectiveTypeIdentifier == 67 || effectiveTypeIdentifier == 61)
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