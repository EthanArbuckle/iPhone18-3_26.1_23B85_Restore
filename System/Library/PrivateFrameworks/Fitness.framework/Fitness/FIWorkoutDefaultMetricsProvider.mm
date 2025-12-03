@interface FIWorkoutDefaultMetricsProvider
+ (BOOL)operatingSystemVersion:(id *)version atLeastVersion:(id *)leastVersion;
+ (int64_t)metricsVersionForWorkout:(id)workout;
+ (void)initialize;
- (FIWorkoutDefaultMetricsProvider)initWithMetricsVersion:(int64_t)version activityType:(id)type activityMoveMode:(int64_t)mode deviceSupportsElevationMetrics:(BOOL)metrics deviceSupportsGroundElevationMetrics:(BOOL)elevationMetrics;
- (id)_defaultEnabledMetricsForActivityType:(id)type metricsVersion:(int64_t)version;
- (id)_defaultEnabledMetricsForSwimmingWithLocationType:(int64_t)type metricsVersion:(int64_t)version;
- (id)_defaultEnabledSecondPlatterMetricsForActivityType:(id)type metricsVersion:(int64_t)version;
- (id)_defaultGloryIndoorEnabledMetricsForActivityType:(unint64_t)type;
- (id)_defaultGloryOutdoorEnabledMetricsForActivityType:(unint64_t)type supportsElevationMetrics:(BOOL)metrics;
- (id)_defaultLuckIndoorEnabledMetricsForActivityType:(unint64_t)type;
- (id)_defaultLuckOutdoorEnabledMetricsForActivityType:(unint64_t)type supportsElevationMetrics:(BOOL)metrics;
- (id)_defaultMoonstoneIndoorEnabledMetricsForActivityType:(unint64_t)type;
- (id)_defaultMoonstoneOutdoorEnabledMetricsForActivityType:(unint64_t)type supportsElevationMetrics:(BOOL)metrics;
- (id)_defaultPreGloryIndoorEnabledMetricsForActivityType:(unint64_t)type;
- (id)_defaultPreGloryOutdoorEnabledMetricsForActivityType:(unint64_t)type;
- (id)_indoorDefaultEnabledMetricsForActivityType:(unint64_t)type metricsVersion:(int64_t)version;
- (id)_machineProvidedMetricsForActivityType:(id)type;
- (id)_standardSupportedMetricsWithMetricsVersion:(int64_t)version;
- (id)_supportedMetricsForActivityType:(id)type metricsVersion:(int64_t)version;
- (id)appendMachineMetricsToMetrics:(id)metrics maxNumMetrics:(int64_t)numMetrics activityType:(id)type;
- (id)removeUnsupportedFitnessJuniorMetricsFrom:(id)from;
- (id)supportedMetricsWithIsMachineWorkout:(BOOL)workout activityType:(id)type;
- (void)_updateSupportedMetrics;
@end

@implementation FIWorkoutDefaultMetricsProvider

- (FIWorkoutDefaultMetricsProvider)initWithMetricsVersion:(int64_t)version activityType:(id)type activityMoveMode:(int64_t)mode deviceSupportsElevationMetrics:(BOOL)metrics deviceSupportsGroundElevationMetrics:(BOOL)elevationMetrics
{
  typeCopy = type;
  v23.receiver = self;
  v23.super_class = FIWorkoutDefaultMetricsProvider;
  v14 = [(FIWorkoutDefaultMetricsProvider *)&v23 init];
  v15 = v14;
  if (v14)
  {
    v14->_metricsVersion = version;
    objc_storeStrong(&v14->_activityType, type);
    v15->_activityMoveMode = mode;
    v15->_supportsElevationMetrics = metrics;
    v15->_supportsGroundElevationMetrics = elevationMetrics;
    v16 = [(FIWorkoutDefaultMetricsProvider *)v15 _defaultEnabledMetricsForActivityType:v15->_activityType metricsVersion:v15->_metricsVersion];
    defaultEnabledMetrics = v15->_defaultEnabledMetrics;
    v15->_defaultEnabledMetrics = v16;

    v18 = [(FIWorkoutDefaultMetricsProvider *)v15 _defaultEnabledSecondPlatterMetricsForActivityType:v15->_activityType metricsVersion:v15->_metricsVersion];
    defaultSecondPlatterMetrics = v15->_defaultSecondPlatterMetrics;
    v15->_defaultSecondPlatterMetrics = v18;

    [(FIWorkoutDefaultMetricsProvider *)v15 _updateSupportedMetrics];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = +[FIBluetoothSensorLookup didUpdateBTSensorSeenStatus];
    [defaultCenter addObserver:v15 selector:sel__didUpdateBTSensorSeenStatus_ name:v21 object:0];
  }

  return v15;
}

- (id)_defaultEnabledMetricsForActivityType:(id)type metricsVersion:(int64_t)version
{
  typeCopy = type;
  if ([typeCopy effectiveTypeIdentifier] == 46)
  {
    v7 = -[FIWorkoutDefaultMetricsProvider _defaultEnabledMetricsForSwimmingWithLocationType:metricsVersion:](self, "_defaultEnabledMetricsForSwimmingWithLocationType:metricsVersion:", [typeCopy swimmingLocationType], version);
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if (![typeCopy isIndoor] || (-[FIWorkoutDefaultMetricsProvider _indoorDefaultEnabledMetricsForActivityType:metricsVersion:](self, "_indoorDefaultEnabledMetricsForActivityType:metricsVersion:", objc_msgSend(typeCopy, "effectiveTypeIdentifier"), version), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = -[FIWorkoutDefaultMetricsProvider _defaultOutdoorEnabledMetricsForActivityType:metricsVersion:supportsElevationMetrics:](self, "_defaultOutdoorEnabledMetricsForActivityType:metricsVersion:supportsElevationMetrics:", [typeCopy effectiveTypeIdentifier], version, self->_supportsElevationMetrics);
    goto LABEL_6;
  }

LABEL_7:
  v9 = [(FIWorkoutDefaultMetricsProvider *)self removeUnsupportedFitnessJuniorMetricsFrom:v8];

  return v9;
}

- (id)_defaultEnabledSecondPlatterMetricsForActivityType:(id)type metricsVersion:(int64_t)version
{
  v5 = [FIDefaultSecondPlatterMetrics metricsForActivityType:type metricsVersion:version];
  v6 = [(FIWorkoutDefaultMetricsProvider *)self removeUnsupportedFitnessJuniorMetricsFrom:v5];

  return v6;
}

- (id)removeUnsupportedFitnessJuniorMetricsFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (self->_activityMoveMode == 2)
  {
    v6 = [fromCopy mutableCopy];
    [v6 removeObjectsInArray:&unk_285E6A7B8];

    v5 = v6;
  }

  return v5;
}

- (id)_defaultEnabledMetricsForSwimmingWithLocationType:(int64_t)type metricsVersion:(int64_t)version
{
  v14 = *MEMORY[0x277D85DE8];
  if ((version - 2) >= 5)
  {
    if (!version && type < 3)
    {
      v5 = &unk_279004940;
      goto LABEL_4;
    }
  }

  else if (type < 3)
  {
    v5 = &unk_279004928;
LABEL_4:
    result = v5[type];
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithInteger:type];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_24B35E000, v9, OS_LOG_TYPE_DEFAULT, "Can't find default Glory metrics for swimming workout with location type %@", &v12, 0xCu);
  }

  result = 0;
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_indoorDefaultEnabledMetricsForActivityType:(unint64_t)type metricsVersion:(int64_t)version
{
  v5 = 0;
  if (version > 5)
  {
    if (version == 6)
    {
      v5 = [(FIWorkoutDefaultMetricsProvider *)self _defaultMoonstoneIndoorEnabledMetricsForActivityType:type];
    }

    else if (version == 101)
    {
      v5 = [(FIWorkoutDefaultMetricsProvider *)self _defaultLuckIndoorEnabledMetricsForActivityType:type];
    }
  }

  else if ((version - 2) >= 4)
  {
    if (!version)
    {
      v5 = [(FIWorkoutDefaultMetricsProvider *)self _defaultPreGloryIndoorEnabledMetricsForActivityType:type];
    }
  }

  else
  {
    v5 = [(FIWorkoutDefaultMetricsProvider *)self _defaultGloryIndoorEnabledMetricsForActivityType:type];
  }

  return v5;
}

- (id)_defaultMoonstoneIndoorEnabledMetricsForActivityType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type <= 0x29 && ((1 << type) & 0x28800000000) != 0)
  {
    v4 = &unk_285E6A830;
  }

  else
  {
    v4 = [(FIWorkoutDefaultMetricsProvider *)self _defaultGloryIndoorEnabledMetricsForActivityType:type];
    if (!v4)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x277CCABB0];
        v9 = v7;
        v10 = [v8 numberWithUnsignedInteger:type];
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_24B35E000, v9, OS_LOG_TYPE_DEFAULT, "Can't find default Moonstone metrics for indoor workout of type %@", &v11, 0xCu);
      }

      v4 = 0;
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_defaultLuckIndoorEnabledMetricsForActivityType:(unint64_t)type
{
  if (type == 37 || type == 52)
  {
    return &unk_285E6A848;
  }

  else
  {
    return &unk_285E6A860;
  }
}

- (id)_defaultGloryIndoorEnabledMetricsForActivityType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  result = &unk_285E6A878;
  if (type != 52 && type != 37)
  {
    if (type == 13)
    {
      result = &unk_285E6A890;
    }

    else
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v5;
        v8 = [v6 numberWithUnsignedInteger:type];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Can't find default Glory metrics for indoor workout of type %@", &v10, 0xCu);
      }

      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_defaultPreGloryIndoorEnabledMetricsForActivityType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  result = &unk_285E6A8A8;
  if (type != 52 && type != 37)
  {
    if (type == 13)
    {
      result = &unk_285E6A8C0;
    }

    else
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v5;
        v8 = [v6 numberWithUnsignedInteger:type];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Can't find default Pre-Glory metrics for indoor workout of type %@", &v10, 0xCu);
      }

      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_defaultGloryOutdoorEnabledMetricsForActivityType:(unint64_t)type supportsElevationMetrics:(BOOL)metrics
{
  if (type > 51)
  {
    if (type - 70 >= 2)
    {
      if (type == 52)
      {
        return &unk_285E6A950;
      }

      return &unk_285E6A998;
    }

    v5 = &unk_285E6A938;
    v6 = &unk_285E6A920;
  }

  else
  {
    switch(type)
    {
      case 0xDuLL:
        v5 = &unk_285E6A8F0;
        v6 = &unk_285E6A8D8;
        break;
      case 0x18uLL:
        v5 = &unk_285E6A980;
        v6 = &unk_285E6A968;
        break;
      case 0x25uLL:
        return &unk_285E6A908;
      default:
        return &unk_285E6A998;
    }
  }

  if (metrics)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (id)_defaultMoonstoneOutdoorEnabledMetricsForActivityType:(unint64_t)type supportsElevationMetrics:(BOOL)metrics
{
  if (type > 35)
  {
    if (type > 59)
    {
      if (type > 66)
      {
        if (type == 75)
        {
          goto LABEL_32;
        }

        if (type != 67)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (type == 60)
        {
          v6 = &unk_285E6A9B0;

          return v6;
        }

        if (type != 61)
        {
          goto LABEL_44;
        }
      }

      v6 = &unk_285E6A9C8;

      return v6;
    }

    if (type != 36)
    {
      if (type == 39)
      {
        v6 = &unk_285E6AA28;

        return v6;
      }

      if (type != 41)
      {
        goto LABEL_44;
      }
    }

LABEL_32:
    v6 = &unk_285E6AA40;

    return v6;
  }

  if (type <= 24)
  {
    if (type != 1 && type != 3)
    {
      if (type != 21)
      {
        goto LABEL_44;
      }

      v6 = &unk_285E6AA10;

      return v6;
    }

    goto LABEL_32;
  }

  if (type <= 30)
  {
    if (type != 25 && type != 27)
    {
LABEL_44:
      v6 = [(FIWorkoutDefaultMetricsProvider *)self _defaultGloryOutdoorEnabledMetricsForActivityType:v4 supportsElevationMetrics:?];

      return v6;
    }

    goto LABEL_32;
  }

  if (type == 31)
  {
    v6 = &unk_285E6A9E0;
  }

  else
  {
    if (type != 35)
    {
      goto LABEL_44;
    }

    v6 = &unk_285E6A9F8;
  }

  return v6;
}

- (id)_defaultLuckOutdoorEnabledMetricsForActivityType:(unint64_t)type supportsElevationMetrics:(BOOL)metrics
{
  if (type > 38)
  {
    if (type > 69)
    {
      if (type - 70 < 2)
      {
        return &unk_285E6AAE8;
      }

      return &unk_285E6AB00;
    }

    if (type != 39)
    {
      if (type == 52)
      {
        return &unk_285E6AA58;
      }

      if (type != 60)
      {
        return &unk_285E6AB00;
      }
    }

    return &unk_285E6AAB8;
  }

  if (type > 30)
  {
    if (type != 31 && type != 35)
    {
      if (type == 37)
      {
        return &unk_285E6AAA0;
      }

      return &unk_285E6AB00;
    }

    return &unk_285E6AAB8;
  }

  if (type == 13)
  {
    return &unk_285E6AAD0;
  }

  if (type != 24)
  {
    return &unk_285E6AB00;
  }

  if (metrics)
  {
    return &unk_285E6AA70;
  }

  else
  {
    return &unk_285E6AA88;
  }
}

- (id)_defaultPreGloryOutdoorEnabledMetricsForActivityType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type <= 36)
  {
    if (type == 13)
    {
      result = &unk_285E6AB18;
      goto LABEL_17;
    }

    if (type != 16 && type != 35)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v4 = type - 44;
  if (type - 44 > 0x1B)
  {
    goto LABEL_13;
  }

  if (((1 << v4) & 0x82001) != 0)
  {
LABEL_16:
    result = &unk_285E6AB78;
    goto LABEL_17;
  }

  if (((1 << v4) & 0xC000000) != 0)
  {
    result = &unk_285E6AB48;
    goto LABEL_17;
  }

  if (type == 52)
  {
    result = &unk_285E6AB60;
    goto LABEL_17;
  }

LABEL_13:
  if (type == 3000)
  {
    goto LABEL_16;
  }

  if (type == 37)
  {
    result = &unk_285E6AB30;
    goto LABEL_17;
  }

LABEL_18:
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithUnsignedInteger:type];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_24B35E000, v9, OS_LOG_TYPE_DEFAULT, "Can't find metrics for outdoor/unspecified workout of type %@", &v11, 0xCu);
  }

  result = 0;
LABEL_17:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateSupportedMetrics
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24B35E000, v3, OS_LOG_TYPE_DEFAULT, "Updating supported metrics", v6, 2u);
  }

  v4 = [(FIWorkoutDefaultMetricsProvider *)self _supportedMetricsForActivityType:self->_activityType metricsVersion:self->_metricsVersion];
  supportedMetrics = self->_supportedMetrics;
  self->_supportedMetrics = v4;
}

- (id)_supportedMetricsForActivityType:(id)type metricsVersion:(int64_t)version
{
  v35 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  effectiveTypeIdentifier = [typeCopy effectiveTypeIdentifier];
  if (effectiveTypeIdentifier > 38)
  {
    if (effectiveTypeIdentifier > 60)
    {
      if (effectiveTypeIdentifier <= 69)
      {
        if (effectiveTypeIdentifier == 61 || effectiveTypeIdentifier == 67)
        {
          v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
          if (version < 6)
          {
            goto LABEL_55;
          }

          v9 = &unk_285E6AE00;
          goto LABEL_53;
        }

        goto LABEL_87;
      }

      if ((effectiveTypeIdentifier - 70) >= 2)
      {
        if (effectiveTypeIdentifier == 75)
        {
          goto LABEL_51;
        }

        goto LABEL_87;
      }

      if ([typeCopy isIndoor])
      {
        v8 = &unk_285E6AC68;
      }

      else
      {
        v8 = [&unk_285E6AC68 arrayByAddingObject:&unk_285E69AE0];
      }

      if (([typeCopy isIndoor] & 1) == 0 && self->_supportsGroundElevationMetrics)
      {
        v21 = [v8 arrayByAddingObject:&unk_285E69C60];

        v8 = v21;
      }

      if (version < 4)
      {
        goto LABEL_55;
      }

      v12 = &unk_285E6AC80;
LABEL_77:
      v22 = [v8 arrayByAddingObjectsFromArray:v12];

      goto LABEL_78;
    }

    if (effectiveTypeIdentifier <= 45)
    {
      if (effectiveTypeIdentifier == 39)
      {
        v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
        isIndoor = [typeCopy isIndoor];
        if (version >= 6 && (isIndoor & 1) == 0)
        {
          v9 = &unk_285E6ADE8;
          goto LABEL_53;
        }

        goto LABEL_55;
      }

      if (effectiveTypeIdentifier == 41)
      {
        goto LABEL_37;
      }

      goto LABEL_87;
    }

    if (effectiveTypeIdentifier == 46)
    {
      if ([typeCopy swimmingLocationType] == 1)
      {
        v8 = [&unk_285E6ACF8 arrayByAddingObject:&unk_285E69A80];
      }

      else
      {
        v8 = &unk_285E6ACF8;
      }

      if (version < 4)
      {
        goto LABEL_55;
      }

      v22 = [v8 arrayByAddingObjectsFromArray:&unk_285E6AD10];

      if (version >= 6)
      {
        v8 = [v22 arrayByAddingObjectsFromArray:&unk_285E6AD28];

        if (_os_feature_enabled_impl())
        {
          v9 = &unk_285E6AD40;
          goto LABEL_53;
        }

        goto LABEL_55;
      }

LABEL_79:
      v8 = v22;
      goto LABEL_55;
    }

    if (effectiveTypeIdentifier != 52)
    {
      if (effectiveTypeIdentifier == 60)
      {
        v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
        if (version < 6)
        {
          goto LABEL_55;
        }

        v9 = &unk_285E6AD58;
        goto LABEL_53;
      }

      goto LABEL_87;
    }

LABEL_20:
    if (([typeCopy isIndoor] & 1) != 0 || !self->_supportsElevationMetrics)
    {
      v8 = &unk_285E6AC38;
    }

    else
    {
      v8 = [&unk_285E6AC38 arrayByAddingObject:&unk_285E69AE0];
    }

    if (([typeCopy isIndoor] & 1) == 0 && self->_supportsGroundElevationMetrics)
    {
      v11 = [v8 arrayByAddingObject:&unk_285E69C60];

      v8 = v11;
    }

    if (version < 4)
    {
      goto LABEL_55;
    }

    v12 = &unk_285E6AC50;
    goto LABEL_77;
  }

  if (effectiveTypeIdentifier <= 24)
  {
    if (effectiveTypeIdentifier <= 12)
    {
      if (effectiveTypeIdentifier == 1 || effectiveTypeIdentifier == 3)
      {
        goto LABEL_51;
      }

      goto LABEL_87;
    }

    if (effectiveTypeIdentifier == 13)
    {
      if ([typeCopy isIndoor])
      {
        if (version < 4)
        {
          v8 = &unk_285E6AB90;
          goto LABEL_59;
        }

        v8 = [&unk_285E6AB90 arrayByAddingObjectsFromArray:&unk_285E6ABA8];
      }

      else
      {
        if (version < 4)
        {
          v8 = &unk_285E6ABC0;
        }

        else
        {
          v25 = [&unk_285E6ABC0 arrayByAddingObjectsFromArray:&unk_285E6ABD8];
          v8 = v25;
          if (version != 4)
          {
            v26 = [v25 arrayByAddingObject:&unk_285E69C48];

            v8 = v26;
          }
        }

        if (self->_supportsElevationMetrics)
        {
          v30 = [v8 arrayByAddingObject:&unk_285E69AE0];

          v8 = v30;
        }

        if (self->_supportsGroundElevationMetrics)
        {
          v31 = [v8 arrayByAddingObject:&unk_285E69C60];

          v8 = v31;
        }
      }

      if (version >= 5)
      {
        v13 = [v8 arrayByAddingObjectsFromArray:&unk_285E6ABF0];

        if (_os_feature_enabled_impl())
        {
          v32 = [v13 arrayByAddingObjectsFromArray:&unk_285E6AC08];

          v13 = v32;
        }

        if (![typeCopy isIndoor] || !+[FIBluetoothSensorLookup hasHadPairedCyclingSpeedSensors](FIBluetoothSensorLookup, "hasHadPairedCyclingSpeedSensors"))
        {
          goto LABEL_54;
        }

        v8 = [v13 arrayByAddingObjectsFromArray:&unk_285E6AC20];
      }

      goto LABEL_55;
    }

    if (effectiveTypeIdentifier == 21)
    {
      v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
      if (version < 6)
      {
        goto LABEL_55;
      }

      v9 = &unk_285E6ADA0;
LABEL_53:
      v13 = [v8 arrayByAddingObjectsFromArray:v9];

LABEL_54:
      v8 = v13;
      goto LABEL_55;
    }

    if (effectiveTypeIdentifier != 24)
    {
LABEL_87:
      v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  if (effectiveTypeIdentifier > 34)
  {
    switch(effectiveTypeIdentifier)
    {
      case '#':
        v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
        isIndoor2 = [typeCopy isIndoor];
        if (version >= 6 && (isIndoor2 & 1) == 0)
        {
          v9 = &unk_285E6AD70;
          goto LABEL_53;
        }

        goto LABEL_55;
      case '$':
        goto LABEL_51;
      case '%':
        if (version < 2)
        {
          v8 = &unk_285E6AC98;
        }

        else
        {
          v8 = [&unk_285E6AC98 arrayByAddingObjectsFromArray:&unk_285E6ACB0];
        }

        if (([typeCopy isIndoor] & 1) == 0 && self->_supportsElevationMetrics)
        {
          v27 = [v8 arrayByAddingObject:&unk_285E69AE0];

          v8 = v27;
        }

        if (([typeCopy isIndoor] & 1) == 0 && self->_supportsGroundElevationMetrics)
        {
          v28 = [v8 arrayByAddingObject:&unk_285E69C60];

          v8 = v28;
        }

        if (version < 4)
        {
          goto LABEL_55;
        }

        v22 = [v8 arrayByAddingObjectsFromArray:&unk_285E6ACC8];

        if (([typeCopy isIndoor] & 1) == 0 && objc_msgSend(MEMORY[0x277CC1D38], "isRunningFormAvailable") && self->_activityMoveMode == 1)
        {
          v29 = [v22 arrayByAddingObjectsFromArray:&unk_285E6ACE0];

          v22 = v29;
        }

LABEL_78:
        if (version != 4)
        {
          v8 = [v22 arrayByAddingObject:&unk_285E69C48];

          goto LABEL_55;
        }

        goto LABEL_79;
    }

    goto LABEL_87;
  }

  if (effectiveTypeIdentifier != 25)
  {
    if (effectiveTypeIdentifier != 27)
    {
      if (effectiveTypeIdentifier == 31)
      {
        v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
        if (version < 6)
        {
          goto LABEL_55;
        }

        v9 = &unk_285E6AD88;
        goto LABEL_53;
      }

      goto LABEL_87;
    }

LABEL_51:
    v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
    if (version < 6)
    {
      goto LABEL_55;
    }

    v9 = &unk_285E6ADB8;
    goto LABEL_53;
  }

LABEL_37:
  v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:version];
  isIndoor3 = [typeCopy isIndoor];
  if (version >= 6 && (isIndoor3 & 1) == 0)
  {
    v9 = &unk_285E6ADD0;
    goto LABEL_53;
  }

LABEL_55:
  if (!v8)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = v14;
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(typeCopy, "effectiveTypeIdentifier")}];
      v33 = 138412290;
      v34 = v17;
      _os_log_impl(&dword_24B35E000, v16, OS_LOG_TYPE_DEFAULT, "Can't find supported metrics for workout of type %@", &v33, 0xCu);
    }

    v8 = 0;
  }

LABEL_59:
  if (self->_activityMoveMode == 2)
  {
    v18 = [v8 mutableCopy];
    [v18 removeObjectsInArray:&unk_285E6AE18];

    v8 = v18;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_standardSupportedMetricsWithMetricsVersion:(int64_t)version
{
  if (version < 4)
  {
    v5 = &unk_285E6AE30;
  }

  else
  {
    v5 = [&unk_285E6AE30 arrayByAddingObjectsFromArray:{&unk_285E6AE48, v3}];
  }

  return v5;
}

- (id)_machineProvidedMetricsForActivityType:(id)type
{
  effectiveTypeIdentifier = [type effectiveTypeIdentifier];
  if (effectiveTypeIdentifier <= 36)
  {
    v5 = &unk_285E6AEA8;
    if (effectiveTypeIdentifier != 16)
    {
      v5 = 0;
    }

    if (effectiveTypeIdentifier == 13)
    {
      return &unk_285E6AE90;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    switch(effectiveTypeIdentifier)
    {
      case '4':
        return &unk_285E6AE60;
      case ',':
        return &unk_285E6AE78;
      case '%':
        return &unk_285E6AE60;
      default:
        return 0;
    }
  }
}

- (id)appendMachineMetricsToMetrics:(id)metrics maxNumMetrics:(int64_t)numMetrics activityType:(id)type
{
  metricsCopy = metrics;
  typeCopy = type;
  v10 = [(FIWorkoutDefaultMetricsProvider *)self _machineProvidedMetricsForActivityType:typeCopy];
  if ([metricsCopy count] < numMetrics)
  {
    while (1)
    {
      v11 = [v10 count];
      if (!metricsCopy || !v11)
      {
        break;
      }

      firstObject = [v10 firstObject];
      if (([metricsCopy containsObject:firstObject] & 1) == 0)
      {
        v13 = [metricsCopy arrayByAddingObject:firstObject];

        metricsCopy = v13;
      }

      v14 = [v10 subarrayWithRange:{1, objc_msgSend(v10, "count") - 1}];

      v10 = v14;
      if ([metricsCopy count] >= numMetrics)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = v10;
LABEL_9:
  v15 = metricsCopy;

  return metricsCopy;
}

- (id)supportedMetricsWithIsMachineWorkout:(BOOL)workout activityType:(id)type
{
  workoutCopy = workout;
  typeCopy = type;
  supportedMetrics = [(FIWorkoutDefaultMetricsProvider *)self supportedMetrics];
  if (workoutCopy)
  {
    v8 = [(FIWorkoutDefaultMetricsProvider *)self appendMachineMetricsToMetrics:supportedMetrics maxNumMetrics:0x7FFFFFFFLL activityType:typeCopy];

    supportedMetrics = v8;
  }

  return supportedMetrics;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    HKNSOperatingSystemVersionFromString();
    moonstoneVersion = v2;
    qword_280B17E98 = v3;
    HKNSOperatingSystemVersionFromString();
    velocityVersion = v2;
    qword_280B17E80 = v3;
    HKNSOperatingSystemVersionFromString();
    boltVersion = v2;
    qword_280B17EF0 = v3;
    HKNSOperatingSystemVersionFromString();
    gloryCVersion = v2;
    qword_280B17ED0 = v3;
    HKNSOperatingSystemVersionFromString();
    gloryVersion = v2;
    qword_280B17EB8 = v3;
    HKNSOperatingSystemVersionFromString();
  }
}

+ (int64_t)metricsVersionForWorkout:(id)workout
{
  workoutCopy = workout;
  sourceRevision = [workoutCopy sourceRevision];
  productType = [sourceRevision productType];
  v7 = [productType rangeOfString:*MEMORY[0x277CCC8C8]];

  sourceRevision2 = [workoutCopy sourceRevision];
  productType2 = [sourceRevision2 productType];
  v10 = [productType2 rangeOfString:*MEMORY[0x277CCC8D0]];

  v25 = 0uLL;
  v26 = 0;
  sourceRevision3 = [workoutCopy sourceRevision];

  if (sourceRevision3)
  {
    [sourceRevision3 operatingSystemVersion];
  }

  else
  {
    v23 = 0uLL;
    v24 = 0;
  }

  FIEffectiveOperatingSystemVersion(&v23, &v25);

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = 0;
  }

  else
  {
    v23 = v25;
    v24 = v26;
    v21 = moonstoneVersion;
    v22 = qword_280B17E98;
    v13 = [self operatingSystemVersion:&v23 atLeastVersion:&v21];
    v23 = v25;
    v24 = v26;
    v21 = velocityVersion;
    v22 = qword_280B17E80;
    v14 = [self operatingSystemVersion:&v23 atLeastVersion:&v21];
    v23 = v25;
    v24 = v26;
    v21 = boltVersion;
    v22 = qword_280B17EF0;
    v15 = [self operatingSystemVersion:&v23 atLeastVersion:&v21];
    v23 = v25;
    v24 = v26;
    v21 = gloryCVersion;
    v22 = qword_280B17ED0;
    v16 = [self operatingSystemVersion:&v23 atLeastVersion:&v21];
    v23 = v25;
    v24 = v26;
    v21 = gloryVersion;
    v22 = qword_280B17EB8;
    v17 = [self operatingSystemVersion:&v23 atLeastVersion:&v21];
    v18 = 4;
    if (v14)
    {
      v18 = 5;
    }

    if (v13)
    {
      result = 6;
    }

    else
    {
      result = v18;
    }

    if ((v13 & 1) == 0 && (v14 & 1) == 0 && (v15 & 1) == 0)
    {
      v19 = v17 == 0;
      v20 = 2;
      if (v19)
      {
        v20 = 0;
      }

      if (v16)
      {
        result = 3;
      }

      else
      {
        result = v20;
      }
    }
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = v25;
    v24 = v26;
    v21 = moonstoneVersion;
    v22 = qword_280B17E98;
    if ([self operatingSystemVersion:&v23 atLeastVersion:&v21])
    {
      return 101;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

+ (BOOL)operatingSystemVersion:(id *)version atLeastVersion:(id *)leastVersion
{
  v6 = *leastVersion;
  v5 = *version;
  return (HKNSOperatingSystemVersionCompare() + 1) < 2;
}

@end