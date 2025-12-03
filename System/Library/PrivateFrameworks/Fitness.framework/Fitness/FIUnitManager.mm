@interface FIUnitManager
+ (id)quantityTypeForDistanceType:(unint64_t)type;
- (FIUnitManager)initWithHealthStore:(id)store;
- (double)distanceInDistanceUnit:(unint64_t)unit forDistanceInMeters:(double)meters;
- (double)distanceInMetersForDistanceInUserUnit:(double)unit distanceType:(unint64_t)type;
- (double)distanceInUserDistanceUnitForDistanceInMeters:(double)meters distanceType:(unint64_t)type;
- (double)paceWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format distanceType:(unint64_t)type;
- (id)_loadPreferredUnitsFromDefaults;
- (id)_preferredHKUnitForQuantityType:(id)type;
- (id)userActiveEnergyBurnedUnit;
- (id)userBasalEnergyBurnedUnit;
- (id)userDepthHKUnit;
- (id)userDistanceCrossCountrySkiingHKUnit;
- (id)userDistanceCyclingHKUnit;
- (id)userDistanceDownhillSnowSportsHKUnit;
- (id)userDistanceElevationHKUnit;
- (id)userDistanceHKUnitForActivityType:(id)type;
- (id)userDistanceHKUnitForDistanceType:(unint64_t)type;
- (id)userDistancePaddleSportsHKUnit;
- (id)userDistanceRowingHKUnit;
- (id)userDistanceSkatingSportsHKUnit;
- (id)userDistanceWalkingRunningHKUnit;
- (id)userLapLengthHKUnit;
- (id)userWaterTemperatureHKUnit;
- (unint64_t)paceDistanceUnitForDistanceType:(unint64_t)type;
- (unint64_t)userDistanceCyclingUnit;
- (unint64_t)userDistanceElevationUnit;
- (unint64_t)userDistanceUnitForDistanceType:(unint64_t)type;
- (unint64_t)userDistanceWalkingRunningUnit;
- (void)_setPreferredHKUnit:(id)unit forQuantityType:(id)type;
- (void)_storePreferredUnitsInDefaults:(id)defaults;
- (void)_updatePreferredUnits;
- (void)setPreferredUnitsForTesting:(id)testing;
- (void)setUserActiveEnergyBurnedUnit:(id)unit;
- (void)setUserBasalEnergyBurnedUnit:(id)unit;
- (void)setUserDepthHKUnit:(id)unit;
- (void)setUserDistanceCyclingUnit:(unint64_t)unit;
- (void)setUserDistanceUnit:(unint64_t)unit forDistanceType:(unint64_t)type;
- (void)setUserDistanceWalkingRunningUnit:(unint64_t)unit;
- (void)setUserWaterTemperatureHKUnit:(id)unit;
@end

@implementation FIUnitManager

- (id)_loadPreferredUnitsFromDefaults
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"FICachedPreferredUnitsKey"];

  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__FIUnitManager__loadPreferredUnitsFromDefaults__block_invoke;
  v7[3] = &unk_279004F58;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __48__FIUnitManager__loadPreferredUnitsFromDefaults__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:a2];
  if (v5)
  {
    v6 = [MEMORY[0x277CCDAB0] unitFromString:v7];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

- (void)_updatePreferredUnits
{
  healthStore = self->_healthStore;
  if (_RelevantQuantityTypes_onceToken != -1)
  {
    [FIUnitManager _updatePreferredUnits];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__FIUnitManager__updatePreferredUnits__block_invoke;
  v4[3] = &unk_279004FA8;
  v4[4] = self;
  [(HKHealthStore *)healthStore preferredUnitsForQuantityTypes:_RelevantQuantityTypes___relevantQuantityTypes completion:v4];
}

- (id)userDepthHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC90]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

void __38__FIUnitManager__updatePreferredUnits__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      __38__FIUnitManager__updatePreferredUnits__block_invoke_cold_1();
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__FIUnitManager__updatePreferredUnits__block_invoke_351;
    v7[3] = &unk_279004F80;
    v7[4] = *(a1 + 32);
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (id)userWaterTemperatureHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

void __46__FIUnitManager__notifyUnitPreferencesChanged__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"FIFitnessUnitPreferencesDidChangeNotification" object:0];
}

- (id)userActiveEnergyBurnedUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (id)userDistanceWalkingRunningHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (unint64_t)userDistanceWalkingRunningUnit
{
  userDistanceWalkingRunningHKUnit = [(FIUnitManager *)self userDistanceWalkingRunningHKUnit];
  v3 = FIDistanceUnitForHKUnit(userDistanceWalkingRunningHKUnit);

  return v3;
}

- (FIUnitManager)initWithHealthStore:(id)store
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = FIUnitManager;
  v6 = [(FIUnitManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = MEMORY[0x277CBEB38];
    _loadPreferredUnitsFromDefaults = [(FIUnitManager *)v7 _loadPreferredUnitsFromDefaults];
    v10 = [v8 dictionaryWithDictionary:_loadPreferredUnitsFromDefaults];
    preferredUnits = v7->_preferredUnits;
    v7->_preferredUnits = v10;

    v12 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__FIUnitManager_initWithHealthStore___block_invoke;
    block[3] = &unk_279004B60;
    v13 = v7;
    v18 = v13;
    dispatch_async(v12, block);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__userPreferencesDidChange_ name:*MEMORY[0x277CCCE80] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel__localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v7;
}

- (void)_storePreferredUnitsInDefaults:(id)defaults
{
  v3 = MEMORY[0x277CBEB38];
  defaultsCopy = defaults;
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(defaultsCopy, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__FIUnitManager__storePreferredUnitsInDefaults___block_invoke;
  v8[3] = &unk_279004F30;
  v9 = v5;
  v6 = v5;
  [defaultsCopy enumerateKeysAndObjectsUsingBlock:v8];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:v6 forKey:@"FICachedPreferredUnitsKey"];
}

void __48__FIUnitManager__storePreferredUnitsInDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 identifier];
  v6 = [v5 unitString];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

uint64_t __38__FIUnitManager__updatePreferredUnits__block_invoke_351(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(a1 + 32) _storePreferredUnitsInDefaults:*(*(a1 + 32) + 16)];
  v5 = *(a1 + 32);

  return [v5 _notifyUnitPreferencesChanged];
}

- (id)_preferredHKUnitForQuantityType:(id)type
{
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_preferredUnits objectForKeyedSubscript:typeCopy];
  v6 = v5;
  if (!v5 || (_IsValidUserUnitForQuantityType(v5, typeCopy) & 1) == 0)
  {
    v7 = _HKGenerateDefaultUnitForQuantityType();

    v6 = v7;
  }

  return v6;
}

- (void)_setPreferredHKUnit:(id)unit forQuantityType:(id)type
{
  unitCopy = unit;
  typeCopy = type;
  if (typeCopy)
  {
    v8 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:typeCopy];
    v9 = [v8 isEqual:unitCopy];

    if ((v9 & 1) == 0)
    {
      preferredUnits = self->_preferredUnits;
      if (preferredUnits)
      {
        [(NSMutableDictionary *)preferredUnits setObject:unitCopy forKeyedSubscript:typeCopy];
        [(FIUnitManager *)self _storePreferredUnitsInDefaults:self->_preferredUnits];
      }

      if (_IsValidUserUnitForQuantityType(unitCopy, typeCopy))
      {
        [(HKHealthStore *)self->_healthStore _setPreferredUnit:unitCopy forType:typeCopy completion:&__block_literal_global_357];
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
        {
          [FIUnitManager _setPreferredHKUnit:forQuantityType:];
        }
      }
    }
  }
}

void __53__FIUnitManager__setPreferredHKUnit_forQuantityType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      __53__FIUnitManager__setPreferredHKUnit_forQuantityType___block_invoke_cold_1();
    }
  }
}

- (unint64_t)paceDistanceUnitForDistanceType:(unint64_t)type
{
  if (type == 9)
  {
    return 1;
  }

  if (type == 4)
  {
    userLapLengthHKUnit = [(FIUnitManager *)self userLapLengthHKUnit];
    v5 = FIDistanceUnitForHKUnit(userLapLengthHKUnit);

    return v5;
  }

  else
  {

    return [(FIUnitManager *)self userDistanceUnitForDistanceType:?];
  }
}

- (unint64_t)userDistanceUnitForDistanceType:(unint64_t)type
{
  v3 = [(FIUnitManager *)self userDistanceHKUnitForDistanceType:type];
  v4 = FIDistanceUnitForHKUnit(v3);

  return v4;
}

- (id)userDistanceHKUnitForDistanceType:(unint64_t)type
{
  if (type > 5)
  {
    if (type <= 7)
    {
      if (type == 6)
      {
        [(FIUnitManager *)self userDistanceCrossCountrySkiingHKUnit];
      }

      else
      {
        [(FIUnitManager *)self userDistanceDownhillSnowSportsHKUnit];
      }
      userDistancePaddleSportsHKUnit = ;
    }

    else
    {
      switch(type)
      {
        case 8uLL:
          userDistancePaddleSportsHKUnit = [(FIUnitManager *)self userDistancePaddleSportsHKUnit];
          break;
        case 9uLL:
          userDistancePaddleSportsHKUnit = [(FIUnitManager *)self userDistanceRowingHKUnit];
          break;
        case 0xAuLL:
          userDistancePaddleSportsHKUnit = [(FIUnitManager *)self userDistanceSkatingSportsHKUnit];
          break;
        default:
          goto LABEL_25;
      }
    }
  }

  else if (type > 2)
  {
    if (type == 3)
    {
      userDistancePaddleSportsHKUnit = [(FIUnitManager *)self userLapLengthHKUnit];
    }

    else
    {
      if (type == 4)
      {
        userLapLengthHKUnit = [(FIUnitManager *)self userLapLengthHKUnit];
        yardUnit = [MEMORY[0x277CCDAB0] yardUnit];
        v7 = [userLapLengthHKUnit isEqual:yardUnit];

        if (v7)
        {
          mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
        }

        else
        {
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v11 = [userLapLengthHKUnit isEqual:meterUnit];

          if (v11)
          {
            mileUnit = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
          }

          else
          {
            mileUnit = userLapLengthHKUnit;
          }
        }

        v3 = mileUnit;

        goto LABEL_25;
      }

      userDistancePaddleSportsHKUnit = [(FIUnitManager *)self userDistanceElevationHKUnit];
    }
  }

  else if (type >= 2)
  {
    if (type != 2)
    {
      goto LABEL_25;
    }

    userDistancePaddleSportsHKUnit = [(FIUnitManager *)self userDistanceCyclingHKUnit];
  }

  else
  {
    userDistancePaddleSportsHKUnit = [(FIUnitManager *)self userDistanceWalkingRunningHKUnit];
  }

  v3 = userDistancePaddleSportsHKUnit;
LABEL_25:

  return v3;
}

- (id)userDistanceHKUnitForActivityType:(id)type
{
  v4 = FIDistanceTypeForActivityType(type);

  return [(FIUnitManager *)self userDistanceHKUnitForDistanceType:v4];
}

+ (id)quantityTypeForDistanceType:(unint64_t)type
{
  v5 = type - 1;
  if (type - 1 <= 9 && ((0x3EFu >> v5) & 1) != 0)
  {
    v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:{**(&unk_279004FE8 + v5), v3}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUserDistanceUnit:(unint64_t)unit forDistanceType:(unint64_t)type
{
  v11 = [FIUnitManager quantityTypeForDistanceType:type];
  v7 = 4;
  if (unit == 2)
  {
    unitCopy = 1;
  }

  else
  {
    unitCopy = unit;
  }

  if (unit != 3)
  {
    v7 = unitCopy;
  }

  if (type == 4)
  {
    unitCopy2 = v7;
  }

  else
  {
    unitCopy2 = unit;
  }

  v10 = FIHKUnitForDistanceUnit(unitCopy2);
  [(FIUnitManager *)self _setPreferredHKUnit:v10 forQuantityType:v11];
}

- (unint64_t)userDistanceElevationUnit
{
  if ([(FIUnitManager *)self userDistanceWalkingRunningUnit]- 1 < 2)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

- (id)userDistanceElevationHKUnit
{
  if ([(FIUnitManager *)self userDistanceElevationUnit]== 1)
  {
    [MEMORY[0x277CCDAB0] meterUnit];
  }

  else
  {
    [MEMORY[0x277CCDAB0] footUnit];
  }
  v2 = ;

  return v2;
}

- (id)userDistanceCrossCountrySkiingHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (id)userDistanceDownhillSnowSportsHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (id)userDistancePaddleSportsHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (id)userDistanceRowingHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (id)userDistanceSkatingSportsHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (id)userLapLengthHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (void)setUserDepthHKUnit:(id)unit
{
  v4 = MEMORY[0x277CCD830];
  v5 = *MEMORY[0x277CCCC90];
  unitCopy = unit;
  v7 = [v4 quantityTypeForIdentifier:v5];
  [(FIUnitManager *)self _setPreferredHKUnit:unitCopy forQuantityType:v7];
}

- (void)setUserWaterTemperatureHKUnit:(id)unit
{
  v4 = MEMORY[0x277CCD830];
  v5 = *MEMORY[0x277CCCCD0];
  unitCopy = unit;
  v7 = [v4 quantityTypeForIdentifier:v5];
  [(FIUnitManager *)self _setPreferredHKUnit:unitCopy forQuantityType:v7];
}

- (void)setUserDistanceWalkingRunningUnit:(unint64_t)unit
{
  v5 = FIHKUnitForDistanceUnit(unit);
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  [(FIUnitManager *)self _setPreferredHKUnit:v5 forQuantityType:v4];
}

- (unint64_t)userDistanceCyclingUnit
{
  userDistanceCyclingHKUnit = [(FIUnitManager *)self userDistanceCyclingHKUnit];
  v3 = FIDistanceUnitForHKUnit(userDistanceCyclingHKUnit);

  return v3;
}

- (id)userDistanceCyclingHKUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (void)setUserDistanceCyclingUnit:(unint64_t)unit
{
  v5 = FIHKUnitForDistanceUnit(unit);
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  [(FIUnitManager *)self _setPreferredHKUnit:v5 forQuantityType:v4];
}

- (double)paceWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format distanceType:(unint64_t)type
{
  distanceCopy = distance;
  v11 = FIHKUnitForDistanceUnit([(FIUnitManager *)self paceDistanceUnitForDistanceType:type]);
  v12 = FIPace(distanceCopy, v11, format, duration);

  return v12;
}

- (double)distanceInMetersForDistanceInUserUnit:(double)unit distanceType:(unint64_t)type
{
  v5 = [(FIUnitManager *)self userDistanceHKUnitForDistanceType:type];
  v6 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:unit];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [v6 doubleValueForUnit:meterUnit];
  v9 = v8;

  return v9;
}

- (double)distanceInUserDistanceUnitForDistanceInMeters:(double)meters distanceType:(unint64_t)type
{
  v6 = [(FIUnitManager *)self userDistanceUnitForDistanceType:type];

  [(FIUnitManager *)self distanceInDistanceUnit:v6 forDistanceInMeters:meters];
  return result;
}

- (double)distanceInDistanceUnit:(unint64_t)unit forDistanceInMeters:(double)meters
{
  v6 = MEMORY[0x277CCD7E8];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  v8 = [v6 quantityWithUnit:meterUnit doubleValue:meters];

  v9 = FIHKUnitForDistanceUnit(unit);
  [v8 doubleValueForUnit:v9];
  v11 = v10;

  return v11;
}

- (void)setUserActiveEnergyBurnedUnit:(id)unit
{
  v4 = MEMORY[0x277CCD830];
  v5 = *MEMORY[0x277CCC918];
  unitCopy = unit;
  v7 = [v4 quantityTypeForIdentifier:v5];
  [(FIUnitManager *)self _setPreferredHKUnit:unitCopy forQuantityType:v7];
}

- (id)userBasalEnergyBurnedUnit
{
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v4 = [(FIUnitManager *)self _preferredHKUnitForQuantityType:v3];

  return v4;
}

- (void)setUserBasalEnergyBurnedUnit:(id)unit
{
  v4 = MEMORY[0x277CCD830];
  v5 = *MEMORY[0x277CCC960];
  unitCopy = unit;
  v7 = [v4 quantityTypeForIdentifier:v5];
  [(FIUnitManager *)self _setPreferredHKUnit:unitCopy forQuantityType:v7];
}

- (void)setPreferredUnitsForTesting:(id)testing
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:testing];
  preferredUnits = self->_preferredUnits;
  self->_preferredUnits = v4;

  MEMORY[0x2821F96F8]();
}

void __38__FIUnitManager__updatePreferredUnits__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_24B35E000, v0, v1, "[Fitness] Error fetching preferred units: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setPreferredHKUnit:forQuantityType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_24B35E000, v0, v1, "[FitnessUI] Attempting to set an invalid user unit: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__FIUnitManager__setPreferredHKUnit_forQuantityType___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_24B35E000, v0, v1, "[FitnessUI] Error setting preferred units: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end