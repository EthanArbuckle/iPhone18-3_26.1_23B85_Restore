@interface HKActivityCache(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollectionForSync:()HDCodingSupport;
- (HDCodableActivityCache)codableRepresentationForSync;
- (uint64_t)addCodableRepresentationToCollectionForJournal:()HDCodingSupport;
@end

@implementation HKActivityCache(HDCodingSupport)

- (HDCodableActivityCache)codableRepresentationForSync
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableActivityCache);
  v38.receiver = self;
  v38.super_class = &off_283D425D8;
  v3 = objc_msgSendSuper2(&v38, sel_codableRepresentationForSync);
  [(HDCodableActivityCache *)v2 setSample:v3];
  -[HDCodableActivityCache setCacheIndex:](v2, "setCacheIndex:", [self cacheIndex]);
  -[HDCodableActivityCache setSequence:](v2, "setSequence:", [self sequence]);
  if ([self hasEnergyBurned])
  {
    [self _energyBurnedInKilocalories];
    [(HDCodableActivityCache *)v2 setEnergyBurned:?];
  }

  if ([self hasMoveMinutes])
  {
    [self moveMinutes];
    [(HDCodableActivityCache *)v2 setMoveMinutes:?];
  }

  if ([self hasBriskMinutes])
  {
    [self briskMinutes];
    [(HDCodableActivityCache *)v2 setBriskMinutes:?];
  }

  if ([self hasActiveHours])
  {
    [self activeHours];
    [(HDCodableActivityCache *)v2 setActiveHours:?];
  }

  if ([self hasStepCount])
  {
    -[HDCodableActivityCache setStepCount:](v2, "setStepCount:", [self stepCount]);
  }

  if ([self hasEnergyBurnedGoal])
  {
    [self _energyBurnedGoalInKilocalories];
    [(HDCodableActivityCache *)v2 setEnergyBurnedGoal:?];
    energyBurnedGoalDate = [self energyBurnedGoalDate];
    [energyBurnedGoalDate timeIntervalSinceReferenceDate];
    [(HDCodableActivityCache *)v2 setEnergyBurnedGoalDate:?];
  }

  if ([self hasMoveMinutesGoal])
  {
    [self _moveMinutesGoalInMinutes];
    [(HDCodableActivityCache *)v2 setMoveMinutesGoal:?];
    moveMinutesGoalDate = [self moveMinutesGoalDate];
    [moveMinutesGoalDate timeIntervalSinceReferenceDate];
    [(HDCodableActivityCache *)v2 setMoveMinutesGoalDate:?];
  }

  if ([self hasBriskMinutesGoal])
  {
    [self _briskMinutesGoalInMinutes];
    [(HDCodableActivityCache *)v2 setBriskMinutesGoal:?];
  }

  if ([self hasActiveHoursGoal])
  {
    [self _activeHoursGoalCount];
    [(HDCodableActivityCache *)v2 setActiveHoursGoal:?];
  }

  if ([self hasWalkingAndRunningDistance])
  {
    [self _walkingAndRunningDistanceInMeters];
    [(HDCodableActivityCache *)v2 setWalkingAndRunningDistance:?];
  }

  if ([self hasFlightsClimbed])
  {
    -[HDCodableActivityCache setFlightsClimbed:](v2, "setFlightsClimbed:", [self flightsClimbed]);
  }

  if ([self hasDeepBreathingDuration])
  {
    [self deepBreathingDuration];
    [(HDCodableActivityCache *)v2 setDeepBreathingDuration:?];
  }

  if ([self hasPushCount])
  {
    -[HDCodableActivityCache setPushCount:](v2, "setPushCount:", [self pushCount]);
  }

  if ([self hasWheelchairUse])
  {
    -[HDCodableActivityCache setWheelchairUse:](v2, "setWheelchairUse:", [self wheelchairUse]);
  }

  -[HDCodableActivityCache setActivityMoveMode:](v2, "setActivityMoveMode:", [self activityMoveMode]);
  -[HDCodableActivityCache setPaused:](v2, "setPaused:", [self isPaused]);
  -[HDCodableActivityCache setVersion:](v2, "setVersion:", [self version]);
  if ([self hasDailyEnergyBurnedStatistics])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    dailyEnergyBurnedStatistics = [self dailyEnergyBurnedStatistics];
    v7 = [dailyEnergyBurnedStatistics countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(dailyEnergyBurnedStatistics);
          }

          codableRepresentationForSync = [*(*(&v34 + 1) + 8 * i) codableRepresentationForSync];
          [(HDCodableActivityCache *)v2 addDailyEnergyBurnedStatistics:codableRepresentationForSync];
        }

        v8 = [dailyEnergyBurnedStatistics countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v8);
    }
  }

  if ([self hasDailyMoveMinutesStatistics])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    dailyMoveMinutesStatistics = [self dailyMoveMinutesStatistics];
    v13 = [dailyMoveMinutesStatistics countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(dailyMoveMinutesStatistics);
          }

          codableRepresentationForSync2 = [*(*(&v30 + 1) + 8 * j) codableRepresentationForSync];
          [(HDCodableActivityCache *)v2 addDailyMoveMinutesStatistics:codableRepresentationForSync2];
        }

        v14 = [dailyMoveMinutesStatistics countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v14);
    }
  }

  if ([self hasDailyBriskMinutesStatistics])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    dailyBriskMinutesStatistics = [self dailyBriskMinutesStatistics];
    v19 = [dailyBriskMinutesStatistics countByEnumeratingWithState:&v26 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(dailyBriskMinutesStatistics);
          }

          codableRepresentationForSync3 = [*(*(&v26 + 1) + 8 * k) codableRepresentationForSync];
          [(HDCodableActivityCache *)v2 addDailyBriskMinutesStatistics:codableRepresentationForSync3];
        }

        v20 = [dailyBriskMinutesStatistics countByEnumeratingWithState:&v26 objects:v39 count:16];
      }

      while (v20);
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)addCodableRepresentationToCollectionForJournal:()HDCodingSupport
{
  v4 = a3;
  if (self && ([self codableRepresentationForSync], (self = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v4 addActivityCaches:self];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)addCodableRepresentationToCollectionForSync:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addActivityCaches:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    _init = [[self alloc] _init];
    if ([v5 applyToObject:_init] && (v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions(), objc_msgSend(_init, "_validateWithConfiguration:", v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v10 = _init;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end