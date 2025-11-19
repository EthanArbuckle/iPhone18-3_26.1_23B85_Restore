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
  v42.receiver = a1;
  v42.super_class = &off_283D42E88;
  v3 = objc_msgSendSuper2(&v42, sel_codableRepresentationForSync);
  [(HDCodableWorkout *)v2 setSample:v3];

  -[HDCodableWorkout setType:](v2, "setType:", [a1 workoutActivityType]);
  if (a1)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v4 = [a1 workoutEvents];
    v5 = [v4 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v52;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v52 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v51 + 1) + 8 * i);
          if (!v7)
          {
            v7 = [MEMORY[0x277CBEB18] array];
          }

          v11 = [v10 codableRepresentationForSync];
          if (v11)
          {
            [v7 addObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  [(HDCodableWorkout *)v2 setEvents:v7];

  [a1 duration];
  [(HDCodableWorkout *)v2 setDuration:?];
  v12 = [a1 totalEnergyBurned];

  if (v12)
  {
    [a1 _totalEnergyBurnedInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalEnergyBurnedInCanonicalUnit:?];
  }

  v13 = [a1 _totalBasalEnergyBurned];

  if (v13)
  {
    [a1 _totalBasalEnergyBurnedInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalBasalEnergyBurnedInCanonicalUnit:?];
  }

  v14 = [a1 totalDistance];

  if (v14)
  {
    [a1 _totalDistanceInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalDistanceInCanonicalUnit:?];
  }

  v15 = [a1 totalSwimmingStrokeCount];

  if (v15)
  {
    [a1 _totalSwimmingStrokeCountInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalSwimmingStrokeCountInCanonicalUnit:?];
  }

  v16 = [a1 totalFlightsClimbed];

  if (v16)
  {
    [a1 _totalFlightsClimbedInCanonicalUnit];
    [(HDCodableWorkout *)v2 setTotalFlightsClimbedInCanonicalUnit:?];
  }

  v17 = [a1 _goal];

  if (v17)
  {
    -[HDCodableWorkout setGoalType:](v2, "setGoalType:", [a1 _goalType]);
    [a1 _goalInCanonicalUnit];
    [(HDCodableWorkout *)v2 setGoal:?];
  }

  v18 = [a1 _primaryActivity];
  v19 = [HDCodableWorkoutActivity codableForWorkoutActivity:v18];
  [(HDCodableWorkout *)v2 setPrimaryActivity:v19];

  v20 = [a1 _subActivities];
  v21 = [HDCodableWorkoutActivity codablesForWorkoutActivities:v20];
  [(HDCodableWorkout *)v2 setSubActivities:v21];

  v40 = v2;
  if (a1)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v22 = [a1 _workoutZonesByType];
    v23 = [v22 allValues];

    obj = v23;
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v55 count:16];
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

                v36 = [v35 codableRepresentationForSync];
                if (v36)
                {
                  [v26 addObject:v36];
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
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addWorkouts:v5];
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
    if ([v5 applyToObject:v6])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [v6 _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
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