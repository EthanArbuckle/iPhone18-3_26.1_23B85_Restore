@interface NLWorkoutTargetZone
+ (id)defaultTargetZoneForTypeKey:(id)a3;
+ (id)mapTargetZoneTypeEnumToString:(int64_t)a3;
+ (id)metadataForTargetZone:(id)a3;
+ (id)restoreFromDictionary:(id)a3;
+ (id)restoreFromDictionary:(id)a3 activityType:(id)a4;
+ (id)serializeTargetZone:(id)a3;
+ (id)targetZoneForActivityType:(id)a3 targetZoneActivityTypeKey:(id)a4;
+ (id)targetZonesFromMetadata:(id)a3;
+ (int64_t)mapTargetZoneTypeStringToEnum:(id)a3;
+ (int64_t)targetZoneMasterTypeForTargetZoneType:(int64_t)a3;
+ (void)saveTargetZone:(id)a3 forActivityType:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NLWorkoutTargetZone)initWithType:(int64_t)a3 min:(double)a4 max:(double)a5 currentValue:(double)a6;
- (id)description;
- (unint64_t)stateForDistanceUnit:(id)a3;
- (unint64_t)stateForPaceZoneWithDistanceUnit:(id)a3;
- (unint64_t)stateForStandardZone;
@end

@implementation NLWorkoutTargetZone

- (NLWorkoutTargetZone)initWithType:(int64_t)a3 min:(double)a4 max:(double)a5 currentValue:(double)a6
{
  v12.receiver = self;
  v12.super_class = NLWorkoutTargetZone;
  result = [(NLWorkoutTargetZone *)&v12 init];
  if (result)
  {
    result->_type = a3;
    result->_min = a4;
    result->_max = a5;
    result->_currentValue = a6;
    v11 = a4 > 0.0 || a5 > 0.0;
    if (!a3)
    {
      v11 = 0;
    }

    result->_enabled = v11;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NLWorkoutTargetZoneTypeString([(NLWorkoutTargetZone *)self type]);
  if ([(NLWorkoutTargetZone *)self enabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [(NLWorkoutTargetZone *)self min];
  v7 = v6;
  [(NLWorkoutTargetZone *)self max];
  v9 = v8;
  [(NLWorkoutTargetZone *)self currentValue];
  v11 = [v3 stringWithFormat:@"NLWorkoutTargetZone(type:%@ enabled:%@ min:%.06f max:%.06f current:%.06f)", v4, v5, v7, v9, v10];

  return v11;
}

- (unint64_t)stateForDistanceUnit:(id)a3
{
  v4 = a3;
  v5 = [(NLWorkoutTargetZone *)self type];
  if ((v5 - 4) >= 4)
  {
    if ((v5 - 1) > 2)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = [(NLWorkoutTargetZone *)self stateForPaceZoneWithDistanceUnit:v4];
  }

  else
  {
    v6 = [(NLWorkoutTargetZone *)self stateForStandardZone];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (unint64_t)stateForPaceZoneWithDistanceUnit:(id)a3
{
  v4 = MEMORY[0x1E696C348];
  v5 = MEMORY[0x1E696C510];
  v6 = a3;
  v7 = [v5 meterUnit];
  [(NLWorkoutTargetZone *)self currentValue];
  v8 = [v4 quantityWithUnit:v7 doubleValue:?];

  v9 = MEMORY[0x1E696C348];
  v10 = [MEMORY[0x1E696C510] meterUnit];
  [(NLWorkoutTargetZone *)self min];
  v11 = [v9 quantityWithUnit:v10 doubleValue:?];

  v12 = MEMORY[0x1E696C348];
  v13 = [MEMORY[0x1E696C510] meterUnit];
  [(NLWorkoutTargetZone *)self max];
  v14 = [v12 quantityWithUnit:v13 doubleValue:?];

  FIUIPace();
  v16 = v15;
  FIUIPace();
  v18 = v17;
  FIUIPace();
  v20 = v19;

  [(NLWorkoutTargetZone *)self max];
  v22 = v21;
  [(NLWorkoutTargetZone *)self min];
  if (v16 <= 2.22044605e-16)
  {
    v24 = 0;
  }

  else if (v16 <= v18 || v23 <= 2.22044605e-16)
  {
    if (v22 > 2.22044605e-16 && v16 < v20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

- (unint64_t)stateForStandardZone
{
  [(NLWorkoutTargetZone *)self currentValue];
  v4 = v3;
  [(NLWorkoutTargetZone *)self max];
  v6 = v5;
  [(NLWorkoutTargetZone *)self min];
  if (v4 <= 2.22044605e-16)
  {
    return 0;
  }

  if (v4 > v6 && v6 > 2.22044605e-16)
  {
    return 3;
  }

  if (v7 > 2.22044605e-16 && v4 < v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (id)defaultTargetZoneForTypeKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PaceTargetZonesByActivityType"])
  {
    v4 = 2;
LABEL_7:
    v5 = [[NLWorkoutTargetZone alloc] initWithType:v4 min:0.0 max:0.0 currentValue:0.0];
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"CadenceTargetZonesByActivityType"])
  {
    v4 = 5;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"PowerTargetZonesByActivityType"])
  {
    v4 = 7;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)targetZoneForActivityType:(id)a3 targetZoneActivityTypeKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 objectForKey:v7];

  if (v9 && ([a1 restoreFromDictionary:v9 activityType:v6], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    if ([v10 enabled])
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x1E696B9A8];
      if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_1E5D0F000, v12, OS_LOG_TYPE_DEFAULT, "[targetzones] Pace target zone supported. Target zone: %@", &v14, 0xCu);
      }
    }
  }

  else
  {
    v11 = [NLWorkoutTargetZone defaultTargetZoneForTypeKey:v7];
  }

  return v11;
}

+ (id)restoreFromDictionary:(id)a3 activityType:(id)a4
{
  v5 = a3;
  v6 = [a4 uniqueIdentifier];
  v7 = [v5 objectForKey:v6];

  v8 = [NLWorkoutTargetZone restoreFromDictionary:v7];

  return v8;
}

+ (id)restoreFromDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"type"];
    v6 = [a1 mapTargetZoneTypeStringToEnum:v5];
    v7 = [v4 objectForKey:@"minimum"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v4 objectForKey:@"maximum"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v4 objectForKey:@"enabled"];

    v14 = [v13 isEqualToString:@"true"];
    if (v9 != v12 && v9 == 0.0)
    {
      v9 = v12;
    }

    if (v9 != v12 && v12 == 0.0)
    {
      v12 = v9;
    }

    v17 = [[NLWorkoutTargetZone alloc] initWithType:v6 min:v9 max:v12 currentValue:0.0];
    [(NLWorkoutTargetZone *)v17 setEnabled:v14];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)serializeTargetZone:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = a3;
    v5 = [v3 dictionary];
    v6 = +[NLWorkoutTargetZone mapTargetZoneTypeEnumToString:](NLWorkoutTargetZone, "mapTargetZoneTypeEnumToString:", [v4 type]);
    v7 = [v4 enabled];
    v8 = @"false";
    if (v7)
    {
      v8 = @"true";
    }

    v9 = v8;
    [v5 setObject:v6 forKey:@"type"];
    v10 = MEMORY[0x1E696AD98];
    [v4 min];
    v11 = [v10 numberWithDouble:?];
    [v5 setObject:v11 forKey:@"minimum"];

    v12 = MEMORY[0x1E696AD98];
    [v4 max];
    v14 = v13;

    v15 = [v12 numberWithDouble:v14];
    [v5 setObject:v15 forKey:@"maximum"];

    [v5 setObject:v9 forKey:@"enabled"];
  }

  else
  {
    v5 = 0;
  }

  v16 = [v5 copy];

  return v16;
}

+ (void)saveTargetZone:(id)a3 forActivityType:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  _HKInitializeLogging();
  v7 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1E5D0F000, v7, OS_LOG_TYPE_DEFAULT, "[targetzones] Saving target zone values to defaults. zone:%@", &v16, 0xCu);
  }

  v8 = [v5 type];
  if ((v8 - 1) <= 6)
  {
    v9 = *off_1E878CD58[v8 - 1];
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [v10 objectForKey:v9];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = [NLWorkoutTargetZone serializeTargetZone:v5];
    v14 = [v6 uniqueIdentifier];
    [v12 setObject:v13 forKey:v14];

    v15 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v15 setObject:v12 forKey:v9];

    [MEMORY[0x1E695E000] fu_backupStandardUserDefaultsKey:v9];
  }
}

+ (int64_t)mapTargetZoneTypeStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"rolling_pace"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"average_pace"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"instantaneous_pace"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"instantaneous_cadence"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"average_cadence"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"instantaneous_power"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"average_power"])
  {
    v4 = 7;
  }

  else
  {
    [v3 isEqualToString:@"none"];
    v4 = 0;
  }

  return v4;
}

+ (id)mapTargetZoneTypeEnumToString:(int64_t)a3
{
  if (a3 > 7)
  {
    return &stru_1F5F88F90;
  }

  else
  {
    return off_1E878CD90[a3];
  }
}

+ (int64_t)targetZoneMasterTypeForTargetZoneType:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E5DB2090[a3 - 1];
  }
}

+ (id)targetZonesFromMetadata:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [&unk_1F5F9B2B0 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(&unk_1F5F9B2B0);
        }

        v8 = [*(*(&v24 + 1) + 8 * i) intValue];
        if (v8 > 3)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_1E878CDD0[v8];
        }

        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 objectForKeyedSubscript:@"_HKPrivateWorkoutTargetZoneMin"];
          [v12 doubleValue];
          v14 = v13;

          v15 = [v11 objectForKeyedSubscript:@"_HKPrivateWorkoutTargetZoneMax"];
          [v15 doubleValue];
          v17 = v16;

          v18 = [v11 objectForKeyedSubscript:@"_HKPrivateWorkoutTargetZoneType"];
          v19 = [NLWorkoutTargetZone mapTargetZoneTypeStringToEnum:v18];

          if ((v19 - 1) <= 6)
          {
            v20 = [[NLWorkoutTargetZone alloc] initWithType:v19 min:v14 max:v17 currentValue:0.0];
            if (v20)
            {
              v21 = v20;
              [v23 addObject:v20];
            }
          }
        }
      }

      v5 = [&unk_1F5F9B2B0 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  return v23;
}

+ (id)metadataForTargetZone:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[NLWorkoutTargetZone targetZoneMasterTypeForTargetZoneType:](NLWorkoutTargetZone, "targetZoneMasterTypeForTargetZoneType:", [v3 type]);
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E878CDD0[v4];
  }

  v17 = v5;
  v15[0] = @"_HKPrivateWorkoutTargetZoneMin";
  v6 = MEMORY[0x1E696AD98];
  [v3 min];
  v7 = [v6 numberWithDouble:?];
  v16[0] = v7;
  v15[1] = @"_HKPrivateWorkoutTargetZoneMax";
  v8 = MEMORY[0x1E696AD98];
  [v3 max];
  v9 = [v8 numberWithDouble:?];
  v16[1] = v9;
  v15[2] = @"_HKPrivateWorkoutTargetZoneType";
  v10 = [v3 type];

  v11 = [NLWorkoutTargetZone mapTargetZoneTypeEnumToString:v10];
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      type = self->_type;
      if (type == [(NLWorkoutTargetZone *)v5 type]&& (min = self->_min, [(NLWorkoutTargetZone *)v5 min], min == v8) && (max = self->_max, [(NLWorkoutTargetZone *)v5 max], max == v10))
      {
        currentValue = self->_currentValue;
        [(NLWorkoutTargetZone *)v5 currentValue];
        v13 = currentValue == v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end