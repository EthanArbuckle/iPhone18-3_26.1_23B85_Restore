@interface _HDActivityCacheEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)_decodeActivityQuantityStatisticsInfosWithRow:(int)row column:;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
- (uint64_t)_shouldIncludeActivityCachePrivateProperties;
- (uint64_t)_shouldIncludeActivityCacheStatistics;
@end

@implementation _HDActivityCacheEntityEncoder

- (id)orderedProperties
{
  v16[16] = *MEMORY[0x277D85DE8];
  v16[0] = @"cache_index";
  v16[1] = @"sequence";
  v16[2] = @"activity_mode";
  v16[3] = @"energy_burned";
  v16[4] = @"move_minutes";
  v16[5] = @"brisk_minutes";
  v16[6] = @"active_hours";
  v16[7] = @"energy_burned_goal";
  v16[8] = @"energy_burned_goal_date";
  v16[9] = @"move_minutes_goal";
  v16[10] = @"move_minutes_goal_date";
  v16[11] = @"brisk_minutes_goal";
  v16[12] = @"brisk_minutes_goal_date";
  v16[13] = @"active_hours_goal";
  v16[14] = @"active_hours_goal_date";
  v16[15] = @"version";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:16];
  if ([(_HDActivityCacheEntityEncoder *)self _shouldIncludeActivityCachePrivateProperties])
  {
    v15[0] = @"steps";
    v15[1] = @"pushes";
    v15[2] = @"walk_distance";
    v15[3] = @"deep_breathing_duration";
    v15[4] = @"flights";
    v15[5] = @"wheelchair_use";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];
    v5 = [v3 arrayByAddingObjectsFromArray:v4];

    v3 = v5;
  }

  if ([(_HDActivityCacheEntityEncoder *)self _shouldIncludeActivityCacheStatistics])
  {
    v14[0] = @"energy_burned_stats";
    v14[1] = @"move_minutes_stats";
    v14[2] = @"brisk_minutes_stats";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    v7 = [v3 arrayByAddingObjectsFromArray:v6];

    v3 = v7;
  }

  v8 = [v3 arrayByAddingObject:@"paused"];

  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v11 = [v8 arrayByAddingObjectsFromArray:orderedProperties];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (uint64_t)_shouldIncludeActivityCachePrivateProperties
{
  if (!self)
  {
    return 0;
  }

  if (![self purpose])
  {
    return 1;
  }

  encodingOptions = [self encodingOptions];
  v3 = [encodingOptions objectForKeyedSubscript:@"IncludePrivateActivityCacheProperties"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (uint64_t)_shouldIncludeActivityCacheStatistics
{
  if (!self)
  {
    return 0;
  }

  if (![self purpose])
  {
    return 1;
  }

  encodingOptions = [self encodingOptions];
  v3 = [encodingOptions objectForKeyedSubscript:@"IncludeActivityCacheStatistics"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  if (([(_HDActivityCacheEntityEncoder *)self _shouldIncludeActivityCachePrivateProperties]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDActivityCacheEntity.m" lineNumber:629 description:{@"Invalid parameter not satisfying: %@", @"[self _shouldIncludeActivityCachePrivateProperties]"}];
  }

  if (([(_HDActivityCacheEntityEncoder *)self _shouldIncludeActivityCacheStatistics]& 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDActivityCacheEntity.m" lineNumber:630 description:{@"Invalid parameter not satisfying: %@", @"[self _shouldIncludeActivityCacheStatistics]"}];
  }

  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v11 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v11)
  {
    v12 = objc_alloc_init(HDCodableActivityCache);
    [(HDCodableActivityCache *)v12 setSample:v11];
    [(HDCodableActivityCache *)v12 setCacheIndex:HDSQLiteColumnWithNameAsInt64()];
    [(HDCodableActivityCache *)v12 setSequence:HDSQLiteColumnWithNameAsInt64()];
    v13 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v13) & 1) == 0)
    {
      [(HDCodableActivityCache *)v12 setWheelchairUse:HDSQLiteColumnAsInt64()];
    }

    [(HDCodableActivityCache *)v12 setActivityMoveMode:HDEntityActivityModeModeForRowAndColumnName(row)];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableActivityCache *)v12 setPaused:HDSQLiteColumnWithNameAsBoolean()];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableActivityCache *)v12 setVersion:HDSQLiteColumnWithNameAsInt64()];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setEnergyBurned:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setEnergyBurnedGoal:?];
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setEnergyBurnedGoalDate:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setMoveMinutes:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setMoveMinutesGoal:?];
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setMoveMinutesGoalDate:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setBriskMinutes:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setBriskMinutesGoal:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setBriskMinutesGoalDate:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setActiveHours:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setActiveHoursGoal:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setActiveHoursGoalDate:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableActivityCache *)v12 setStepCount:HDSQLiteColumnWithNameAsInt64()];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableActivityCache *)v12 setPushCount:HDSQLiteColumnWithNameAsInt64()];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setWalkingAndRunningDistance:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableActivityCache *)v12 setDeepBreathingDuration:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableActivityCache *)v12 setFlightsClimbed:HDSQLiteColumnWithNameAsInt64()];
    }

    v14 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v14) & 1) == 0)
    {
      v15 = [(_HDActivityCacheEntityEncoder *)self _decodeActivityQuantityStatisticsInfosWithRow:row column:v14];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v48;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(v15);
            }

            codableRepresentationForSync = [*(*(&v47 + 1) + 8 * i) codableRepresentationForSync];
            [(HDCodableActivityCache *)v12 addDailyEnergyBurnedStatistics:codableRepresentationForSync];
          }

          v17 = [v15 countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v17);
      }
    }

    v21 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v21) & 1) == 0)
    {
      v22 = [(_HDActivityCacheEntityEncoder *)self _decodeActivityQuantityStatisticsInfosWithRow:row column:v21];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v44;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v44 != v25)
            {
              objc_enumerationMutation(v22);
            }

            codableRepresentationForSync2 = [*(*(&v43 + 1) + 8 * j) codableRepresentationForSync];
            [(HDCodableActivityCache *)v12 addDailyMoveMinutesStatistics:codableRepresentationForSync2];
          }

          v24 = [v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v24);
      }
    }

    v28 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v28) & 1) == 0)
    {
      v29 = [(_HDActivityCacheEntityEncoder *)self _decodeActivityQuantityStatisticsInfosWithRow:row column:v28];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v30 = [v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v40;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v40 != v32)
            {
              objc_enumerationMutation(v29);
            }

            codableRepresentationForSync3 = [*(*(&v39 + 1) + 8 * k) codableRepresentationForSync];
            [(HDCodableActivityCache *)v12 addDailyBriskMinutesStatistics:codableRepresentationForSync3];
          }

          v31 = [v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
        }

        while (v31);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_decodeActivityQuantityStatisticsInfosWithRow:(int)row column:
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v6 = *(self + 72);
    if (!v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = *(self + 72);
      *(self + 72) = v9;

      v6 = *(self + 72);
    }

    v11 = MEMORY[0x277CCAAC8];
    v12 = MEMORY[0x22AAC6C30](a2, row);
    v18 = 0;
    v13 = [v11 unarchivedObjectOfClasses:v6 fromData:v12 error:&v18];
    v14 = v18;

    if (!v13)
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC278];
      if (os_log_type_enabled(*MEMORY[0x277CCC278], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to decode activity statistics: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCCFA0]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    [objectCopy _setCacheIndex:HDSQLiteColumnWithNameAsInt64()];
    [objectCopy _setSequence:HDSQLiteColumnWithNameAsInt64()];
    v13 = MEMORY[0x277CCD7E8];
    kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    HDSQLiteColumnWithNameAsDouble();
    v15 = [v13 quantityWithUnit:kilocalorieUnit doubleValue:?];
    [objectCopy _setEnergyBurned:v15];

    v16 = MEMORY[0x277CCD7E8];
    kilocalorieUnit2 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    HDSQLiteColumnWithNameAsDouble();
    v18 = [v16 quantityWithUnit:kilocalorieUnit2 doubleValue:?];
    [objectCopy _setEnergyBurnedGoalOnly:v18];

    v19 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setEnergyBurnedGoalDateOnly:v19];

    v20 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v20) & 1) == 0)
    {
      MEMORY[0x22AAC6C50](row, v20);
      [objectCopy _setMoveMinutes:?];
    }

    v21 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v21) & 1) == 0)
    {
      v22 = MEMORY[0x277CCD7E8];
      minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
      MEMORY[0x22AAC6C50](row, v21);
      v24 = [v22 quantityWithUnit:minuteUnit doubleValue:?];
      [objectCopy _setMoveMinutesGoalOnly:v24];
    }

    v25 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setMoveMinutesGoalDateOnly:v25];

    v26 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v26) & 1) == 0)
    {
      MEMORY[0x22AAC6C50](row, v26);
      [objectCopy _setBriskMinutes:?];
    }

    v27 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v27) & 1) == 0)
    {
      v28 = MEMORY[0x277CCD7E8];
      minuteUnit2 = [MEMORY[0x277CCDAB0] minuteUnit];
      MEMORY[0x22AAC6C50](row, v27);
      v30 = [v28 quantityWithUnit:minuteUnit2 doubleValue:?];
      [objectCopy _setBriskMinutesGoalOnly:v30];
    }

    v31 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setBriskMinutesGoalDateOnly:v31];

    v32 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v32) & 1) == 0)
    {
      MEMORY[0x22AAC6C50](row, v32);
      [objectCopy _setActiveHours:?];
    }

    v33 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v33) & 1) == 0)
    {
      v34 = MEMORY[0x277CCD7E8];
      countUnit = [MEMORY[0x277CCDAB0] countUnit];
      MEMORY[0x22AAC6C50](row, v33);
      v36 = [v34 quantityWithUnit:countUnit doubleValue:?];
      [objectCopy _setActiveHoursGoalOnly:v36];
    }

    v37 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setActiveHoursGoalDateOnly:v37];

    [objectCopy _setActivityMoveMode:HDEntityActivityModeModeForRowAndColumnName(row)];
    [objectCopy _setPaused:HDSQLiteColumnWithNameAsBoolean()];
    [objectCopy _setVersion:HDSQLiteColumnWithNameAsInt64()];
    if ([(_HDActivityCacheEntityEncoder *)self _shouldIncludeActivityCachePrivateProperties])
    {
      v38 = objectCopy;
      if (self)
      {
        v39 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v39) & 1) == 0)
        {
          [v38 _setStepCount:HDSQLiteColumnAsInt64()];
        }

        v40 = MEMORY[0x277CCD7E8];
        meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
        HDSQLiteColumnWithNameAsDouble();
        v42 = [v40 quantityWithUnit:meterUnit doubleValue:?];
        [v38 _setWalkingAndRunningDistance:v42];

        v43 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v43) & 1) == 0)
        {
          [v38 _setPushCount:HDSQLiteColumnAsInt64()];
        }

        v44 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v44) & 1) == 0)
        {
          MEMORY[0x22AAC6C50](row, v44);
          [v38 _setDeepBreathingDuration:?];
        }

        v45 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v45) & 1) == 0)
        {
          [v38 _setFlightsClimbed:HDSQLiteColumnAsInt64()];
        }

        v46 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v46) & 1) == 0)
        {
          [v38 _setWheelchairUse:HDSQLiteColumnAsInt64()];
        }
      }
    }

    if ([(_HDActivityCacheEntityEncoder *)self _shouldIncludeActivityCacheStatistics])
    {
      v47 = objectCopy;
      if (self)
      {
        v48 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v48) & 1) == 0)
        {
          v49 = [(_HDActivityCacheEntityEncoder *)self _decodeActivityQuantityStatisticsInfosWithRow:row column:v48];
          [v47 _setDailyEnergyBurnedStatistics:v49];
        }

        v50 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v50) & 1) == 0)
        {
          v51 = [(_HDActivityCacheEntityEncoder *)self _decodeActivityQuantityStatisticsInfosWithRow:row column:v50];
          [v47 _setDailyMoveMinutesStatistics:v51];
        }

        v52 = HDSQLiteColumnWithName();
        if ((MEMORY[0x22AAC6CD0](row, v52) & 1) == 0)
        {
          v53 = [(_HDActivityCacheEntityEncoder *)self _decodeActivityQuantityStatisticsInfosWithRow:row column:v52];
          [v47 _setDailyBriskMinutesStatistics:v53];
        }
      }
    }
  }

  return v12;
}

@end