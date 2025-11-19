@interface FIWorkoutDefaultMetricsProvider
+ (BOOL)operatingSystemVersion:(id *)a3 atLeastVersion:(id *)a4;
+ (int64_t)metricsVersionForWorkout:(id)a3;
+ (void)initialize;
- (FIWorkoutDefaultMetricsProvider)initWithMetricsVersion:(int64_t)a3 activityType:(id)a4 activityMoveMode:(int64_t)a5 deviceSupportsElevationMetrics:(BOOL)a6 deviceSupportsGroundElevationMetrics:(BOOL)a7;
- (id)_defaultEnabledMetricsForActivityType:(id)a3 metricsVersion:(int64_t)a4;
- (id)_defaultEnabledMetricsForSwimmingWithLocationType:(int64_t)a3 metricsVersion:(int64_t)a4;
- (id)_defaultEnabledSecondPlatterMetricsForActivityType:(id)a3 metricsVersion:(int64_t)a4;
- (id)_defaultGloryIndoorEnabledMetricsForActivityType:(unint64_t)a3;
- (id)_defaultGloryOutdoorEnabledMetricsForActivityType:(unint64_t)a3 supportsElevationMetrics:(BOOL)a4;
- (id)_defaultLuckIndoorEnabledMetricsForActivityType:(unint64_t)a3;
- (id)_defaultLuckOutdoorEnabledMetricsForActivityType:(unint64_t)a3 supportsElevationMetrics:(BOOL)a4;
- (id)_defaultMoonstoneIndoorEnabledMetricsForActivityType:(unint64_t)a3;
- (id)_defaultMoonstoneOutdoorEnabledMetricsForActivityType:(unint64_t)a3 supportsElevationMetrics:(BOOL)a4;
- (id)_defaultPreGloryIndoorEnabledMetricsForActivityType:(unint64_t)a3;
- (id)_defaultPreGloryOutdoorEnabledMetricsForActivityType:(unint64_t)a3;
- (id)_indoorDefaultEnabledMetricsForActivityType:(unint64_t)a3 metricsVersion:(int64_t)a4;
- (id)_machineProvidedMetricsForActivityType:(id)a3;
- (id)_standardSupportedMetricsWithMetricsVersion:(int64_t)a3;
- (id)_supportedMetricsForActivityType:(id)a3 metricsVersion:(int64_t)a4;
- (id)appendMachineMetricsToMetrics:(id)a3 maxNumMetrics:(int64_t)a4 activityType:(id)a5;
- (id)removeUnsupportedFitnessJuniorMetricsFrom:(id)a3;
- (id)supportedMetricsWithIsMachineWorkout:(BOOL)a3 activityType:(id)a4;
- (void)_updateSupportedMetrics;
@end

@implementation FIWorkoutDefaultMetricsProvider

- (FIWorkoutDefaultMetricsProvider)initWithMetricsVersion:(int64_t)a3 activityType:(id)a4 activityMoveMode:(int64_t)a5 deviceSupportsElevationMetrics:(BOOL)a6 deviceSupportsGroundElevationMetrics:(BOOL)a7
{
  v13 = a4;
  v23.receiver = self;
  v23.super_class = FIWorkoutDefaultMetricsProvider;
  v14 = [(FIWorkoutDefaultMetricsProvider *)&v23 init];
  v15 = v14;
  if (v14)
  {
    v14->_metricsVersion = a3;
    objc_storeStrong(&v14->_activityType, a4);
    v15->_activityMoveMode = a5;
    v15->_supportsElevationMetrics = a6;
    v15->_supportsGroundElevationMetrics = a7;
    v16 = [(FIWorkoutDefaultMetricsProvider *)v15 _defaultEnabledMetricsForActivityType:v15->_activityType metricsVersion:v15->_metricsVersion];
    defaultEnabledMetrics = v15->_defaultEnabledMetrics;
    v15->_defaultEnabledMetrics = v16;

    v18 = [(FIWorkoutDefaultMetricsProvider *)v15 _defaultEnabledSecondPlatterMetricsForActivityType:v15->_activityType metricsVersion:v15->_metricsVersion];
    defaultSecondPlatterMetrics = v15->_defaultSecondPlatterMetrics;
    v15->_defaultSecondPlatterMetrics = v18;

    [(FIWorkoutDefaultMetricsProvider *)v15 _updateSupportedMetrics];
    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = +[FIBluetoothSensorLookup didUpdateBTSensorSeenStatus];
    [v20 addObserver:v15 selector:sel__didUpdateBTSensorSeenStatus_ name:v21 object:0];
  }

  return v15;
}

- (id)_defaultEnabledMetricsForActivityType:(id)a3 metricsVersion:(int64_t)a4
{
  v6 = a3;
  if ([v6 effectiveTypeIdentifier] == 46)
  {
    v7 = -[FIWorkoutDefaultMetricsProvider _defaultEnabledMetricsForSwimmingWithLocationType:metricsVersion:](self, "_defaultEnabledMetricsForSwimmingWithLocationType:metricsVersion:", [v6 swimmingLocationType], a4);
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if (![v6 isIndoor] || (-[FIWorkoutDefaultMetricsProvider _indoorDefaultEnabledMetricsForActivityType:metricsVersion:](self, "_indoorDefaultEnabledMetricsForActivityType:metricsVersion:", objc_msgSend(v6, "effectiveTypeIdentifier"), a4), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = -[FIWorkoutDefaultMetricsProvider _defaultOutdoorEnabledMetricsForActivityType:metricsVersion:supportsElevationMetrics:](self, "_defaultOutdoorEnabledMetricsForActivityType:metricsVersion:supportsElevationMetrics:", [v6 effectiveTypeIdentifier], a4, self->_supportsElevationMetrics);
    goto LABEL_6;
  }

LABEL_7:
  v9 = [(FIWorkoutDefaultMetricsProvider *)self removeUnsupportedFitnessJuniorMetricsFrom:v8];

  return v9;
}

- (id)_defaultEnabledSecondPlatterMetricsForActivityType:(id)a3 metricsVersion:(int64_t)a4
{
  v5 = [FIDefaultSecondPlatterMetrics metricsForActivityType:a3 metricsVersion:a4];
  v6 = [(FIWorkoutDefaultMetricsProvider *)self removeUnsupportedFitnessJuniorMetricsFrom:v5];

  return v6;
}

- (id)removeUnsupportedFitnessJuniorMetricsFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activityMoveMode == 2)
  {
    v6 = [v4 mutableCopy];
    [v6 removeObjectsInArray:&unk_285E6A7B8];

    v5 = v6;
  }

  return v5;
}

- (id)_defaultEnabledMetricsForSwimmingWithLocationType:(int64_t)a3 metricsVersion:(int64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if ((a4 - 2) >= 5)
  {
    if (!a4 && a3 < 3)
    {
      v5 = &unk_279004940;
      goto LABEL_4;
    }
  }

  else if (a3 < 3)
  {
    v5 = &unk_279004928;
LABEL_4:
    result = v5[a3];
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithInteger:a3];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_24B35E000, v9, OS_LOG_TYPE_DEFAULT, "Can't find default Glory metrics for swimming workout with location type %@", &v12, 0xCu);
  }

  result = 0;
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_indoorDefaultEnabledMetricsForActivityType:(unint64_t)a3 metricsVersion:(int64_t)a4
{
  v5 = 0;
  if (a4 > 5)
  {
    if (a4 == 6)
    {
      v5 = [(FIWorkoutDefaultMetricsProvider *)self _defaultMoonstoneIndoorEnabledMetricsForActivityType:a3];
    }

    else if (a4 == 101)
    {
      v5 = [(FIWorkoutDefaultMetricsProvider *)self _defaultLuckIndoorEnabledMetricsForActivityType:a3];
    }
  }

  else if ((a4 - 2) >= 4)
  {
    if (!a4)
    {
      v5 = [(FIWorkoutDefaultMetricsProvider *)self _defaultPreGloryIndoorEnabledMetricsForActivityType:a3];
    }
  }

  else
  {
    v5 = [(FIWorkoutDefaultMetricsProvider *)self _defaultGloryIndoorEnabledMetricsForActivityType:a3];
  }

  return v5;
}

- (id)_defaultMoonstoneIndoorEnabledMetricsForActivityType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x29 && ((1 << a3) & 0x28800000000) != 0)
  {
    v4 = &unk_285E6A830;
  }

  else
  {
    v4 = [(FIWorkoutDefaultMetricsProvider *)self _defaultGloryIndoorEnabledMetricsForActivityType:a3];
    if (!v4)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x277CCABB0];
        v9 = v7;
        v10 = [v8 numberWithUnsignedInteger:a3];
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

- (id)_defaultLuckIndoorEnabledMetricsForActivityType:(unint64_t)a3
{
  if (a3 == 37 || a3 == 52)
  {
    return &unk_285E6A848;
  }

  else
  {
    return &unk_285E6A860;
  }
}

- (id)_defaultGloryIndoorEnabledMetricsForActivityType:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  result = &unk_285E6A878;
  if (a3 != 52 && a3 != 37)
  {
    if (a3 == 13)
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
        v8 = [v6 numberWithUnsignedInteger:a3];
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

- (id)_defaultPreGloryIndoorEnabledMetricsForActivityType:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  result = &unk_285E6A8A8;
  if (a3 != 52 && a3 != 37)
  {
    if (a3 == 13)
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
        v8 = [v6 numberWithUnsignedInteger:a3];
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

- (id)_defaultGloryOutdoorEnabledMetricsForActivityType:(unint64_t)a3 supportsElevationMetrics:(BOOL)a4
{
  if (a3 > 51)
  {
    if (a3 - 70 >= 2)
    {
      if (a3 == 52)
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
    switch(a3)
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

  if (a4)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (id)_defaultMoonstoneOutdoorEnabledMetricsForActivityType:(unint64_t)a3 supportsElevationMetrics:(BOOL)a4
{
  if (a3 > 35)
  {
    if (a3 > 59)
    {
      if (a3 > 66)
      {
        if (a3 == 75)
        {
          goto LABEL_32;
        }

        if (a3 != 67)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (a3 == 60)
        {
          v6 = &unk_285E6A9B0;

          return v6;
        }

        if (a3 != 61)
        {
          goto LABEL_44;
        }
      }

      v6 = &unk_285E6A9C8;

      return v6;
    }

    if (a3 != 36)
    {
      if (a3 == 39)
      {
        v6 = &unk_285E6AA28;

        return v6;
      }

      if (a3 != 41)
      {
        goto LABEL_44;
      }
    }

LABEL_32:
    v6 = &unk_285E6AA40;

    return v6;
  }

  if (a3 <= 24)
  {
    if (a3 != 1 && a3 != 3)
    {
      if (a3 != 21)
      {
        goto LABEL_44;
      }

      v6 = &unk_285E6AA10;

      return v6;
    }

    goto LABEL_32;
  }

  if (a3 <= 30)
  {
    if (a3 != 25 && a3 != 27)
    {
LABEL_44:
      v6 = [(FIWorkoutDefaultMetricsProvider *)self _defaultGloryOutdoorEnabledMetricsForActivityType:v4 supportsElevationMetrics:?];

      return v6;
    }

    goto LABEL_32;
  }

  if (a3 == 31)
  {
    v6 = &unk_285E6A9E0;
  }

  else
  {
    if (a3 != 35)
    {
      goto LABEL_44;
    }

    v6 = &unk_285E6A9F8;
  }

  return v6;
}

- (id)_defaultLuckOutdoorEnabledMetricsForActivityType:(unint64_t)a3 supportsElevationMetrics:(BOOL)a4
{
  if (a3 > 38)
  {
    if (a3 > 69)
    {
      if (a3 - 70 < 2)
      {
        return &unk_285E6AAE8;
      }

      return &unk_285E6AB00;
    }

    if (a3 != 39)
    {
      if (a3 == 52)
      {
        return &unk_285E6AA58;
      }

      if (a3 != 60)
      {
        return &unk_285E6AB00;
      }
    }

    return &unk_285E6AAB8;
  }

  if (a3 > 30)
  {
    if (a3 != 31 && a3 != 35)
    {
      if (a3 == 37)
      {
        return &unk_285E6AAA0;
      }

      return &unk_285E6AB00;
    }

    return &unk_285E6AAB8;
  }

  if (a3 == 13)
  {
    return &unk_285E6AAD0;
  }

  if (a3 != 24)
  {
    return &unk_285E6AB00;
  }

  if (a4)
  {
    return &unk_285E6AA70;
  }

  else
  {
    return &unk_285E6AA88;
  }
}

- (id)_defaultPreGloryOutdoorEnabledMetricsForActivityType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 <= 36)
  {
    if (a3 == 13)
    {
      result = &unk_285E6AB18;
      goto LABEL_17;
    }

    if (a3 != 16 && a3 != 35)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v4 = a3 - 44;
  if (a3 - 44 > 0x1B)
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

  if (a3 == 52)
  {
    result = &unk_285E6AB60;
    goto LABEL_17;
  }

LABEL_13:
  if (a3 == 3000)
  {
    goto LABEL_16;
  }

  if (a3 == 37)
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
    v10 = [v8 numberWithUnsignedInteger:a3];
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

- (id)_supportedMetricsForActivityType:(id)a3 metricsVersion:(int64_t)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 effectiveTypeIdentifier];
  if (v7 > 38)
  {
    if (v7 > 60)
    {
      if (v7 <= 69)
      {
        if (v7 == 61 || v7 == 67)
        {
          v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
          if (a4 < 6)
          {
            goto LABEL_55;
          }

          v9 = &unk_285E6AE00;
          goto LABEL_53;
        }

        goto LABEL_87;
      }

      if ((v7 - 70) >= 2)
      {
        if (v7 == 75)
        {
          goto LABEL_51;
        }

        goto LABEL_87;
      }

      if ([v6 isIndoor])
      {
        v8 = &unk_285E6AC68;
      }

      else
      {
        v8 = [&unk_285E6AC68 arrayByAddingObject:&unk_285E69AE0];
      }

      if (([v6 isIndoor] & 1) == 0 && self->_supportsGroundElevationMetrics)
      {
        v21 = [v8 arrayByAddingObject:&unk_285E69C60];

        v8 = v21;
      }

      if (a4 < 4)
      {
        goto LABEL_55;
      }

      v12 = &unk_285E6AC80;
LABEL_77:
      v22 = [v8 arrayByAddingObjectsFromArray:v12];

      goto LABEL_78;
    }

    if (v7 <= 45)
    {
      if (v7 == 39)
      {
        v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
        v24 = [v6 isIndoor];
        if (a4 >= 6 && (v24 & 1) == 0)
        {
          v9 = &unk_285E6ADE8;
          goto LABEL_53;
        }

        goto LABEL_55;
      }

      if (v7 == 41)
      {
        goto LABEL_37;
      }

      goto LABEL_87;
    }

    if (v7 == 46)
    {
      if ([v6 swimmingLocationType] == 1)
      {
        v8 = [&unk_285E6ACF8 arrayByAddingObject:&unk_285E69A80];
      }

      else
      {
        v8 = &unk_285E6ACF8;
      }

      if (a4 < 4)
      {
        goto LABEL_55;
      }

      v22 = [v8 arrayByAddingObjectsFromArray:&unk_285E6AD10];

      if (a4 >= 6)
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

    if (v7 != 52)
    {
      if (v7 == 60)
      {
        v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
        if (a4 < 6)
        {
          goto LABEL_55;
        }

        v9 = &unk_285E6AD58;
        goto LABEL_53;
      }

      goto LABEL_87;
    }

LABEL_20:
    if (([v6 isIndoor] & 1) != 0 || !self->_supportsElevationMetrics)
    {
      v8 = &unk_285E6AC38;
    }

    else
    {
      v8 = [&unk_285E6AC38 arrayByAddingObject:&unk_285E69AE0];
    }

    if (([v6 isIndoor] & 1) == 0 && self->_supportsGroundElevationMetrics)
    {
      v11 = [v8 arrayByAddingObject:&unk_285E69C60];

      v8 = v11;
    }

    if (a4 < 4)
    {
      goto LABEL_55;
    }

    v12 = &unk_285E6AC50;
    goto LABEL_77;
  }

  if (v7 <= 24)
  {
    if (v7 <= 12)
    {
      if (v7 == 1 || v7 == 3)
      {
        goto LABEL_51;
      }

      goto LABEL_87;
    }

    if (v7 == 13)
    {
      if ([v6 isIndoor])
      {
        if (a4 < 4)
        {
          v8 = &unk_285E6AB90;
          goto LABEL_59;
        }

        v8 = [&unk_285E6AB90 arrayByAddingObjectsFromArray:&unk_285E6ABA8];
      }

      else
      {
        if (a4 < 4)
        {
          v8 = &unk_285E6ABC0;
        }

        else
        {
          v25 = [&unk_285E6ABC0 arrayByAddingObjectsFromArray:&unk_285E6ABD8];
          v8 = v25;
          if (a4 != 4)
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

      if (a4 >= 5)
      {
        v13 = [v8 arrayByAddingObjectsFromArray:&unk_285E6ABF0];

        if (_os_feature_enabled_impl())
        {
          v32 = [v13 arrayByAddingObjectsFromArray:&unk_285E6AC08];

          v13 = v32;
        }

        if (![v6 isIndoor] || !+[FIBluetoothSensorLookup hasHadPairedCyclingSpeedSensors](FIBluetoothSensorLookup, "hasHadPairedCyclingSpeedSensors"))
        {
          goto LABEL_54;
        }

        v8 = [v13 arrayByAddingObjectsFromArray:&unk_285E6AC20];
      }

      goto LABEL_55;
    }

    if (v7 == 21)
    {
      v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
      if (a4 < 6)
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

    if (v7 != 24)
    {
LABEL_87:
      v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  if (v7 > 34)
  {
    switch(v7)
    {
      case '#':
        v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
        v23 = [v6 isIndoor];
        if (a4 >= 6 && (v23 & 1) == 0)
        {
          v9 = &unk_285E6AD70;
          goto LABEL_53;
        }

        goto LABEL_55;
      case '$':
        goto LABEL_51;
      case '%':
        if (a4 < 2)
        {
          v8 = &unk_285E6AC98;
        }

        else
        {
          v8 = [&unk_285E6AC98 arrayByAddingObjectsFromArray:&unk_285E6ACB0];
        }

        if (([v6 isIndoor] & 1) == 0 && self->_supportsElevationMetrics)
        {
          v27 = [v8 arrayByAddingObject:&unk_285E69AE0];

          v8 = v27;
        }

        if (([v6 isIndoor] & 1) == 0 && self->_supportsGroundElevationMetrics)
        {
          v28 = [v8 arrayByAddingObject:&unk_285E69C60];

          v8 = v28;
        }

        if (a4 < 4)
        {
          goto LABEL_55;
        }

        v22 = [v8 arrayByAddingObjectsFromArray:&unk_285E6ACC8];

        if (([v6 isIndoor] & 1) == 0 && objc_msgSend(MEMORY[0x277CC1D38], "isRunningFormAvailable") && self->_activityMoveMode == 1)
        {
          v29 = [v22 arrayByAddingObjectsFromArray:&unk_285E6ACE0];

          v22 = v29;
        }

LABEL_78:
        if (a4 != 4)
        {
          v8 = [v22 arrayByAddingObject:&unk_285E69C48];

          goto LABEL_55;
        }

        goto LABEL_79;
    }

    goto LABEL_87;
  }

  if (v7 != 25)
  {
    if (v7 != 27)
    {
      if (v7 == 31)
      {
        v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
        if (a4 < 6)
        {
          goto LABEL_55;
        }

        v9 = &unk_285E6AD88;
        goto LABEL_53;
      }

      goto LABEL_87;
    }

LABEL_51:
    v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
    if (a4 < 6)
    {
      goto LABEL_55;
    }

    v9 = &unk_285E6ADB8;
    goto LABEL_53;
  }

LABEL_37:
  v8 = [(FIWorkoutDefaultMetricsProvider *)self _standardSupportedMetricsWithMetricsVersion:a4];
  v10 = [v6 isIndoor];
  if (a4 >= 6 && (v10 & 1) == 0)
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
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v6, "effectiveTypeIdentifier")}];
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

- (id)_standardSupportedMetricsWithMetricsVersion:(int64_t)a3
{
  if (a3 < 4)
  {
    v5 = &unk_285E6AE30;
  }

  else
  {
    v5 = [&unk_285E6AE30 arrayByAddingObjectsFromArray:{&unk_285E6AE48, v3}];
  }

  return v5;
}

- (id)_machineProvidedMetricsForActivityType:(id)a3
{
  v3 = [a3 effectiveTypeIdentifier];
  if (v3 <= 36)
  {
    v5 = &unk_285E6AEA8;
    if (v3 != 16)
    {
      v5 = 0;
    }

    if (v3 == 13)
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
    switch(v3)
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

- (id)appendMachineMetricsToMetrics:(id)a3 maxNumMetrics:(int64_t)a4 activityType:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(FIWorkoutDefaultMetricsProvider *)self _machineProvidedMetricsForActivityType:v9];
  if ([v8 count] < a4)
  {
    while (1)
    {
      v11 = [v10 count];
      if (!v8 || !v11)
      {
        break;
      }

      v12 = [v10 firstObject];
      if (([v8 containsObject:v12] & 1) == 0)
      {
        v13 = [v8 arrayByAddingObject:v12];

        v8 = v13;
      }

      v14 = [v10 subarrayWithRange:{1, objc_msgSend(v10, "count") - 1}];

      v10 = v14;
      if ([v8 count] >= a4)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = v10;
LABEL_9:
  v15 = v8;

  return v8;
}

- (id)supportedMetricsWithIsMachineWorkout:(BOOL)a3 activityType:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(FIWorkoutDefaultMetricsProvider *)self supportedMetrics];
  if (v4)
  {
    v8 = [(FIWorkoutDefaultMetricsProvider *)self appendMachineMetricsToMetrics:v7 maxNumMetrics:0x7FFFFFFFLL activityType:v6];

    v7 = v8;
  }

  return v7;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (int64_t)metricsVersionForWorkout:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceRevision];
  v6 = [v5 productType];
  v7 = [v6 rangeOfString:*MEMORY[0x277CCC8C8]];

  v8 = [v4 sourceRevision];
  v9 = [v8 productType];
  v10 = [v9 rangeOfString:*MEMORY[0x277CCC8D0]];

  v25 = 0uLL;
  v26 = 0;
  v11 = [v4 sourceRevision];

  if (v11)
  {
    [v11 operatingSystemVersion];
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
    v13 = [a1 operatingSystemVersion:&v23 atLeastVersion:&v21];
    v23 = v25;
    v24 = v26;
    v21 = velocityVersion;
    v22 = qword_280B17E80;
    v14 = [a1 operatingSystemVersion:&v23 atLeastVersion:&v21];
    v23 = v25;
    v24 = v26;
    v21 = boltVersion;
    v22 = qword_280B17EF0;
    v15 = [a1 operatingSystemVersion:&v23 atLeastVersion:&v21];
    v23 = v25;
    v24 = v26;
    v21 = gloryCVersion;
    v22 = qword_280B17ED0;
    v16 = [a1 operatingSystemVersion:&v23 atLeastVersion:&v21];
    v23 = v25;
    v24 = v26;
    v21 = gloryVersion;
    v22 = qword_280B17EB8;
    v17 = [a1 operatingSystemVersion:&v23 atLeastVersion:&v21];
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
    if ([a1 operatingSystemVersion:&v23 atLeastVersion:&v21])
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

+ (BOOL)operatingSystemVersion:(id *)a3 atLeastVersion:(id *)a4
{
  v6 = *a4;
  v5 = *a3;
  return (HKNSOperatingSystemVersionCompare() + 1) < 2;
}

@end