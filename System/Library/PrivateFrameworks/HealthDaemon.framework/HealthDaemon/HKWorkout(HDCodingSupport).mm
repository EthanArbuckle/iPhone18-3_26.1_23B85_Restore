@interface HKWorkout(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableWorkout)codableRepresentationForSync;
@end

@implementation HKWorkout(HDCodingSupport)

- (HDCodableWorkout)codableRepresentationForSync
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableWorkout);
  v42.receiver = self;
  v42.super_class = &off_283D42E88;
  v3 = objc_msgSendSuper2(&v42, sel_codableRepresentationForSync);
  [(HDCodableWorkout *)v2 setSample:v3];

  -[HDCodableWorkout setType:](v2, "setType:", [self workoutActivityType]);
  if (self)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    workoutEvents = [self workoutEvents];
    v5 = [workoutEvents countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v5)
    {
      v6 = v5;
      array = 0;
      v8 = *v52;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v52 != v8)
          {
            objc_enumerationMutation(workoutEvents);
          }

          v10 = *(*(&v51 + 1) + 8 * i);
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          codableRepresentationForSync = [v10 codableRepresentationForSync];
          if (codableRepresentationForSync)
          {
            [array addObject:codableRepresentationForSync];
          }
        }

        v6 = [workoutEvents countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v6);
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    array = 0;
  }

  [(HDCodableWorkout *)v2 setEvents:array];

  [self duration];
  [(HDCodableWorkout *)v2 setDuration:?];
  totalEnergyBurned = [self totalEnergyBurned];

  if (totalEnergyBurned)
  {
    [self _totalEnergyBurnedInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalEnergyBurnedInCanonicalUnit:?];
  }

  _totalBasalEnergyBurned = [self _totalBasalEnergyBurned];

  if (_totalBasalEnergyBurned)
  {
    [self _totalBasalEnergyBurnedInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalBasalEnergyBurnedInCanonicalUnit:?];
  }

  totalDistance = [self totalDistance];

  if (totalDistance)
  {
    [self _totalDistanceInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalDistanceInCanonicalUnit:?];
  }

  totalSwimmingStrokeCount = [self totalSwimmingStrokeCount];

  if (totalSwimmingStrokeCount)
  {
    [self _totalSwimmingStrokeCountInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalSwimmingStrokeCountInCanonicalUnit:?];
  }

  totalFlightsClimbed = [self totalFlightsClimbed];

  if (totalFlightsClimbed)
  {
    [self _totalFlightsClimbedInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalFlightsClimbedInCanonicalUnit:?];
  }

  _goal = [self _goal];

  if (_goal)
  {
    -[HDCodableWorkout setGoalType:](v2, "setGoalType:", [self _goalType]);
    [self _goalInCanonicalUnit];
    [(HDCodableWorkout *)v2 setGoal:?];
  }

  _primaryActivity = [self _primaryActivity];
  v19 = [HDCodableWorkoutActivity codableForWorkoutActivity:_primaryActivity];
  [(HDCodableWorkout *)v2 setPrimaryActivity:v19];

  _subActivities = [self _subActivities];
  v21 = [HDCodableWorkoutActivity codablesForWorkoutActivities:_subActivities];
  [(HDCodableWorkout *)v2 setSubActivities:v21];

  v40 = v2;
  if (self)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    _workoutZonesByType = [self _workoutZonesByType];
    allValues = [_workoutZonesByType allValues];

    obj = allValues;
    v24 = [allValues countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v48;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v47 + 1) + 8 * j);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v30 = v29;
          v31 = [v30 countByEnumeratingWithState:&v43 objects:&v51 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v44;
            do
            {
              for (k = 0; k != v32; ++k)
              {
                if (*v44 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v43 + 1) + 8 * k);
                if (!v26)
                {
                  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                codableRepresentationForSync2 = [v35 codableRepresentationForSync];
                if (codableRepresentationForSync2)
                {
                  [v26 addObject:codableRepresentationForSync2];
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v43 objects:&v51 count:16];
            }

            while (v32);
          }
        }

        v25 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v25);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v37 = v40;
  [(HDCodableWorkout *)v40 setZones:v26, v40];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addWorkouts:codableRepresentationForSync];
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
    if ([v5 applyToObject:_init])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [_init _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = _init;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end