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
  v38.receiver = a1;
  v38.super_class = &off_283D425D8;
  v3 = objc_msgSendSuper2(&v38, sel_codableRepresentationForSync);
  [(HDCodableActivityCache *)v2 setSample:v3];
  -[HDCodableActivityCache setCacheIndex:](v2, "setCacheIndex:", [a1 cacheIndex]);
  -[HDCodableActivityCache setSequence:](v2, "setSequence:", [a1 sequence]);
  if ([a1 hasEnergyBurned])
  {
    [a1 _energyBurnedInKilocalories];
    [(HDCodableActivityCache *)v2 setEnergyBurned:?];
  }

  if ([a1 hasMoveMinutes])
  {
    [a1 moveMinutes];
    [(HDCodableActivityCache *)v2 setMoveMinutes:?];
  }

  if ([a1 hasBriskMinutes])
  {
    [a1 briskMinutes];
    [(HDCodableActivityCache *)v2 setBriskMinutes:?];
  }

  if ([a1 hasActiveHours])
  {
    [a1 activeHours];
    [(HDCodableActivityCache *)v2 setActiveHours:?];
  }

  if ([a1 hasStepCount])
  {
    -[HDCodableActivityCache setStepCount:](v2, "setStepCount:", [a1 stepCount]);
  }

  if ([a1 hasEnergyBurnedGoal])
  {
    [a1 _energyBurnedGoalInKilocalories];
    [(HDCodableActivityCache *)v2 setEnergyBurnedGoal:?];
    v4 = [a1 energyBurnedGoalDate];
    [v4 timeIntervalSinceReferenceDate];
    [(HDCodableActivityCache *)v2 setEnergyBurnedGoalDate:?];
  }

  if ([a1 hasMoveMinutesGoal])
  {
    [a1 _moveMinutesGoalInMinutes];
    [(HDCodableActivityCache *)v2 setMoveMinutesGoal:?];
    v5 = [a1 moveMinutesGoalDate];
    [v5 timeIntervalSinceReferenceDate];
    [(HDCodableActivityCache *)v2 setMoveMinutesGoalDate:?];
  }

  if ([a1 hasBriskMinutesGoal])
  {
    [a1 _briskMinutesGoalInMinutes];
    [(HDCodableActivityCache *)v2 setBriskMinutesGoal:?];
  }

  if ([a1 hasActiveHoursGoal])
  {
    [a1 _activeHoursGoalCount];
    [(HDCodableActivityCache *)v2 setActiveHoursGoal:?];
  }

  if ([a1 hasWalkingAndRunningDistance])
  {
    [a1 _walkingAndRunningDistanceInMeters];
    [(HDCodableActivityCache *)v2 setWalkingAndRunningDistance:?];
  }

  if ([a1 hasFlightsClimbed])
  {
    -[HDCodableActivityCache setFlightsClimbed:](v2, "setFlightsClimbed:", [a1 flightsClimbed]);
  }

  if ([a1 hasDeepBreathingDuration])
  {
    [a1 deepBreathingDuration];
    [(HDCodableActivityCache *)v2 setDeepBreathingDuration:?];
  }

  if ([a1 hasPushCount])
  {
    -[HDCodableActivityCache setPushCount:](v2, "setPushCount:", [a1 pushCount]);
  }

  if ([a1 hasWheelchairUse])
  {
    -[HDCodableActivityCache setWheelchairUse:](v2, "setWheelchairUse:", [a1 wheelchairUse]);
  }

  -[HDCodableActivityCache setActivityMoveMode:](v2, "setActivityMoveMode:", [a1 activityMoveMode]);
  -[HDCodableActivityCache setPaused:](v2, "setPaused:", [a1 isPaused]);
  -[HDCodableActivityCache setVersion:](v2, "setVersion:", [a1 version]);
  if ([a1 hasDailyEnergyBurnedStatistics])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = [a1 dailyEnergyBurnedStatistics];
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v34 + 1) + 8 * i) codableRepresentationForSync];
          [(HDCodableActivityCache *)v2 addDailyEnergyBurnedStatistics:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v8);
    }
  }

  if ([a1 hasDailyMoveMinutesStatistics])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [a1 dailyMoveMinutesStatistics];
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v40 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v30 + 1) + 8 * j) codableRepresentationForSync];
          [(HDCodableActivityCache *)v2 addDailyMoveMinutesStatistics:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v14);
    }
  }

  if ([a1 hasDailyBriskMinutesStatistics])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [a1 dailyBriskMinutesStatistics];
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v39 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v26 + 1) + 8 * k) codableRepresentationForSync];
          [(HDCodableActivityCache *)v2 addDailyBriskMinutesStatistics:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v39 count:16];
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
  if (a1 && ([a1 codableRepresentationForSync], (a1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v4 addActivityCaches:a1];
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
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addActivityCaches:v5];
  }

  return v5 != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [[a1 alloc] _init];
    if ([v5 applyToObject:v6] && (v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions(), objc_msgSend(v6, "_validateWithConfiguration:", v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v10 = v6;
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