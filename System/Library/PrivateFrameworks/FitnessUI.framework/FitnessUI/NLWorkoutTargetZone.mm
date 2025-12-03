@interface NLWorkoutTargetZone
+ (id)defaultTargetZoneForTypeKey:(id)key;
+ (id)mapTargetZoneTypeEnumToString:(int64_t)string;
+ (id)metadataForTargetZone:(id)zone;
+ (id)restoreFromDictionary:(id)dictionary;
+ (id)restoreFromDictionary:(id)dictionary activityType:(id)type;
+ (id)serializeTargetZone:(id)zone;
+ (id)targetZoneForActivityType:(id)type targetZoneActivityTypeKey:(id)key;
+ (id)targetZonesFromMetadata:(id)metadata;
+ (int64_t)mapTargetZoneTypeStringToEnum:(id)enum;
+ (int64_t)targetZoneMasterTypeForTargetZoneType:(int64_t)type;
+ (void)saveTargetZone:(id)zone forActivityType:(id)type;
- (BOOL)isEqual:(id)equal;
- (NLWorkoutTargetZone)initWithType:(int64_t)type min:(double)min max:(double)max currentValue:(double)value;
- (id)description;
- (unint64_t)stateForDistanceUnit:(id)unit;
- (unint64_t)stateForPaceZoneWithDistanceUnit:(id)unit;
- (unint64_t)stateForStandardZone;
@end

@implementation NLWorkoutTargetZone

- (NLWorkoutTargetZone)initWithType:(int64_t)type min:(double)min max:(double)max currentValue:(double)value
{
  v12.receiver = self;
  v12.super_class = NLWorkoutTargetZone;
  result = [(NLWorkoutTargetZone *)&v12 init];
  if (result)
  {
    result->_type = type;
    result->_min = min;
    result->_max = max;
    result->_currentValue = value;
    v11 = min > 0.0 || max > 0.0;
    if (!type)
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

- (unint64_t)stateForDistanceUnit:(id)unit
{
  unitCopy = unit;
  type = [(NLWorkoutTargetZone *)self type];
  if ((type - 4) >= 4)
  {
    if ((type - 1) > 2)
    {
      v7 = 0;
      goto LABEL_6;
    }

    stateForStandardZone = [(NLWorkoutTargetZone *)self stateForPaceZoneWithDistanceUnit:unitCopy];
  }

  else
  {
    stateForStandardZone = [(NLWorkoutTargetZone *)self stateForStandardZone];
  }

  v7 = stateForStandardZone;
LABEL_6:

  return v7;
}

- (unint64_t)stateForPaceZoneWithDistanceUnit:(id)unit
{
  v4 = MEMORY[0x1E696C348];
  v5 = MEMORY[0x1E696C510];
  unitCopy = unit;
  meterUnit = [v5 meterUnit];
  [(NLWorkoutTargetZone *)self currentValue];
  v8 = [v4 quantityWithUnit:meterUnit doubleValue:?];

  v9 = MEMORY[0x1E696C348];
  meterUnit2 = [MEMORY[0x1E696C510] meterUnit];
  [(NLWorkoutTargetZone *)self min];
  v11 = [v9 quantityWithUnit:meterUnit2 doubleValue:?];

  v12 = MEMORY[0x1E696C348];
  meterUnit3 = [MEMORY[0x1E696C510] meterUnit];
  [(NLWorkoutTargetZone *)self max];
  v14 = [v12 quantityWithUnit:meterUnit3 doubleValue:?];

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

+ (id)defaultTargetZoneForTypeKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"PaceTargetZonesByActivityType"])
  {
    v4 = 2;
LABEL_7:
    v5 = [[NLWorkoutTargetZone alloc] initWithType:v4 min:0.0 max:0.0 currentValue:0.0];
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"CadenceTargetZonesByActivityType"])
  {
    v4 = 5;
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"PowerTargetZonesByActivityType"])
  {
    v4 = 7;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)targetZoneForActivityType:(id)type targetZoneActivityTypeKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [standardUserDefaults objectForKey:keyCopy];

  if (v9 && ([self restoreFromDictionary:v9 activityType:typeCopy], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
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
    v11 = [NLWorkoutTargetZone defaultTargetZoneForTypeKey:keyCopy];
  }

  return v11;
}

+ (id)restoreFromDictionary:(id)dictionary activityType:(id)type
{
  dictionaryCopy = dictionary;
  uniqueIdentifier = [type uniqueIdentifier];
  v7 = [dictionaryCopy objectForKey:uniqueIdentifier];

  v8 = [NLWorkoutTargetZone restoreFromDictionary:v7];

  return v8;
}

+ (id)restoreFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy objectForKey:@"type"];
    v6 = [self mapTargetZoneTypeStringToEnum:v5];
    v7 = [dictionaryCopy objectForKey:@"minimum"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [dictionaryCopy objectForKey:@"maximum"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [dictionaryCopy objectForKey:@"enabled"];

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

+ (id)serializeTargetZone:(id)zone
{
  if (zone)
  {
    v3 = MEMORY[0x1E695DF90];
    zoneCopy = zone;
    dictionary = [v3 dictionary];
    v6 = +[NLWorkoutTargetZone mapTargetZoneTypeEnumToString:](NLWorkoutTargetZone, "mapTargetZoneTypeEnumToString:", [zoneCopy type]);
    enabled = [zoneCopy enabled];
    v8 = @"false";
    if (enabled)
    {
      v8 = @"true";
    }

    v9 = v8;
    [dictionary setObject:v6 forKey:@"type"];
    v10 = MEMORY[0x1E696AD98];
    [zoneCopy min];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKey:@"minimum"];

    v12 = MEMORY[0x1E696AD98];
    [zoneCopy max];
    v14 = v13;

    v15 = [v12 numberWithDouble:v14];
    [dictionary setObject:v15 forKey:@"maximum"];

    [dictionary setObject:v9 forKey:@"enabled"];
  }

  else
  {
    dictionary = 0;
  }

  v16 = [dictionary copy];

  return v16;
}

+ (void)saveTargetZone:(id)zone forActivityType:(id)type
{
  v18 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  typeCopy = type;
  _HKInitializeLogging();
  v7 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = zoneCopy;
    _os_log_impl(&dword_1E5D0F000, v7, OS_LOG_TYPE_DEFAULT, "[targetzones] Saving target zone values to defaults. zone:%@", &v16, 0xCu);
  }

  type = [zoneCopy type];
  if ((type - 1) <= 6)
  {
    v9 = *off_1E878CD58[type - 1];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [standardUserDefaults objectForKey:v9];
    dictionary = [v11 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = [NLWorkoutTargetZone serializeTargetZone:zoneCopy];
    uniqueIdentifier = [typeCopy uniqueIdentifier];
    [dictionary setObject:v13 forKey:uniqueIdentifier];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setObject:dictionary forKey:v9];

    [MEMORY[0x1E695E000] fu_backupStandardUserDefaultsKey:v9];
  }
}

+ (int64_t)mapTargetZoneTypeStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"rolling_pace"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"average_pace"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"instantaneous_pace"])
  {
    v4 = 3;
  }

  else if ([enumCopy isEqualToString:@"instantaneous_cadence"])
  {
    v4 = 4;
  }

  else if ([enumCopy isEqualToString:@"average_cadence"])
  {
    v4 = 5;
  }

  else if ([enumCopy isEqualToString:@"instantaneous_power"])
  {
    v4 = 6;
  }

  else if ([enumCopy isEqualToString:@"average_power"])
  {
    v4 = 7;
  }

  else
  {
    [enumCopy isEqualToString:@"none"];
    v4 = 0;
  }

  return v4;
}

+ (id)mapTargetZoneTypeEnumToString:(int64_t)string
{
  if (string > 7)
  {
    return &stru_1F5F88F90;
  }

  else
  {
    return off_1E878CD90[string];
  }
}

+ (int64_t)targetZoneMasterTypeForTargetZoneType:(int64_t)type
{
  if ((type - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E5DB2090[type - 1];
  }
}

+ (id)targetZonesFromMetadata:(id)metadata
{
  v29 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  array = [MEMORY[0x1E695DF70] array];
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

        intValue = [*(*(&v24 + 1) + 8 * i) intValue];
        if (intValue > 3)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_1E878CDD0[intValue];
        }

        v10 = [metadataCopy objectForKeyedSubscript:v9];
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
              [array addObject:v20];
            }
          }
        }
      }

      v5 = [&unk_1F5F9B2B0 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  return array;
}

+ (id)metadataForTargetZone:(id)zone
{
  v18[1] = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  v4 = +[NLWorkoutTargetZone targetZoneMasterTypeForTargetZoneType:](NLWorkoutTargetZone, "targetZoneMasterTypeForTargetZoneType:", [zoneCopy type]);
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
  [zoneCopy min];
  v7 = [v6 numberWithDouble:?];
  v16[0] = v7;
  v15[1] = @"_HKPrivateWorkoutTargetZoneMax";
  v8 = MEMORY[0x1E696AD98];
  [zoneCopy max];
  v9 = [v8 numberWithDouble:?];
  v16[1] = v9;
  v15[2] = @"_HKPrivateWorkoutTargetZoneType";
  type = [zoneCopy type];

  v11 = [NLWorkoutTargetZone mapTargetZoneTypeEnumToString:type];
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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