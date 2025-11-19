@interface NLWorkoutSplitStorage
+ (BOOL)isTesting;
+ (NSUserDefaults)userDefaults;
+ (double)_defaultSplitDistanceForActivityType:(id)a3 userDistanceUnit:(id)a4;
+ (id)_defaultSplit:(id)a3 activityType:(id)a4 userDistanceUnit:(id)a5;
+ (id)mapSplitTypeEnumToString:(int64_t)a3;
+ (id)restoreFromDictionary:(id)a3;
+ (id)restoreFromDictionary:(id)a3 activityType:(id)a4;
+ (id)serializeSplitStorage:(id)a3;
+ (id)splitEnablementDictionaryForActivityTypes:(id)a3 splitsActivityTypeKey:(id)a4;
+ (id)splitForActivityType:(id)a3 splitsActivityTypeKey:(id)a4 userDistanceUnit:(id)a5;
+ (int64_t)mapSplitTypeStringToEnum:(id)a3;
+ (void)saveSplitStorage:(id)a3 forActivityType:(id)a4 useLegacyUniqueIdentifier:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (NLWorkoutSplitStorage)initWithType:(int64_t)a3 value:(double)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation NLWorkoutSplitStorage

- (NLWorkoutSplitStorage)initWithType:(int64_t)a3 value:(double)a4
{
  v9.receiver = self;
  v9.super_class = NLWorkoutSplitStorage;
  result = [(NLWorkoutSplitStorage *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_value = a4;
    v8 = a4 > 0.0 && a3 != 0;
    result->_enabled = v8;
  }

  return result;
}

+ (NSUserDefaults)userDefaults
{
  v2 = _userDefaults;
  if (!_userDefaults)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = _userDefaults;
    _userDefaults = v3;

    v2 = _userDefaults;
  }

  return v2;
}

+ (BOOL)isTesting
{
  v2 = _userDefaults;
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  LOBYTE(v2) = [v2 isEqual:v3];

  return v2 ^ 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NLWorkoutSplitStorage *)self type];
      v7 = [(NLWorkoutSplitStorage *)v5 type];
      [(NLWorkoutSplitStorage *)self value];
      v9 = v8;
      [(NLWorkoutSplitStorage *)v5 value];
      v11 = v10;
      v12 = [(NLWorkoutSplitStorage *)self enabled];
      v13 = [(NLWorkoutSplitStorage *)v5 enabled];

      v15 = v9 == v11 && v6 == v7;
      v16 = v15 & (v12 ^ v13 ^ 1);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = (31 * [(NLWorkoutSplitStorage *)self type]+ 961);
  [(NLWorkoutSplitStorage *)self value];
  return 31 * (v4 + v3) + [(NLWorkoutSplitStorage *)self enabled];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NLWorkoutSplitStorage *)self type];
  v5 = @"NLWorkoutSplitsTypeNone";
  if (v4 == 1)
  {
    v5 = @"NLWorkoutSplitsTypeDistance";
  }

  if (v4 == 2)
  {
    v5 = @"NLWorkoutSplitsTypeTime";
  }

  v6 = v5;
  if ([(NLWorkoutSplitStorage *)self enabled])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [(NLWorkoutSplitStorage *)self value];
  v9 = [v3 stringWithFormat:@"NLWorkoutSplitStorage(type:%@ enabled:%@ value:%f)", v6, v7, v8];

  return v9;
}

+ (id)_defaultSplit:(id)a3 activityType:(id)a4 userDistanceUnit:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v7 isEqualToString:@"DistanceSplitsByActivityType"] & 1) == 0)
  {
    [v7 isEqualToString:@"TimeSplitsByActivityType"];
  }

  if ([v7 isEqualToString:@"DistanceSplitsByActivityType"])
  {
    [NLWorkoutSplitStorage _defaultSplitDistanceForActivityType:v8 userDistanceUnit:v9];
    v11 = v10;
    v12 = [NLWorkoutSplitStorage alloc];
    v13 = 1;
    v14 = v11;
  }

  else
  {
    v12 = [NLWorkoutSplitStorage alloc];
    v14 = 0.0;
    v13 = 2;
  }

  v15 = [(NLWorkoutSplitStorage *)v12 initWithType:v13 value:v14];

  return v15;
}

+ (double)_defaultSplitDistanceForActivityType:(id)a3 userDistanceUnit:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 effectiveTypeIdentifier];
  if ((v7 - 13) <= 0x3A && ((1 << (v7 - 13)) & 0x600808001000800) == 0 && v7 == 13)
  {
    [v5 isIndoor];
  }

  v8 = [MEMORY[0x1E696C348] quantityWithUnit:v6 doubleValue:?];
  v9 = [MEMORY[0x1E696C510] meterUnit];
  [v8 doubleValueForUnit:v9];
  v11 = v10;

  if ([v5 effectiveTypeIdentifier] == 35)
  {
    v12 = MEMORY[0x1E696C348];
    v13 = [MEMORY[0x1E696C510] meterUnit];
    v14 = [v12 quantityWithUnit:v13 doubleValue:500.0];
    v15 = [MEMORY[0x1E696C510] meterUnit];
    [v14 doubleValueForUnit:v15];
    v11 = v16;
  }

  return v11;
}

+ (id)splitEnablementDictionaryForActivityTypes:(id)a3 splitsActivityTypeKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NLWorkoutSplitStorage userDefaults];
  v9 = [v8 objectForKey:v6];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (v9)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__NLWorkoutSplitStorage_splitEnablementDictionaryForActivityTypes_splitsActivityTypeKey___block_invoke_2;
    v20[3] = &unk_1E878CAC0;
    v24 = a1;
    v12 = &v21;
    v21 = v9;
    v13 = v11;
    v22 = v13;
    v23 = v6;
    v14 = v6;
    [v7 enumerateObjectsUsingBlock:v20];

    v15 = v23;
    v16 = v13;

    v17 = v22;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __89__NLWorkoutSplitStorage_splitEnablementDictionaryForActivityTypes_splitsActivityTypeKey___block_invoke;
    v25[3] = &unk_1E878CA98;
    v12 = &v26;
    v26 = v6;
    v18 = v10;
    v27 = v18;
    v16 = v6;
    [v7 enumerateObjectsUsingBlock:v25];

    v17 = v27;
    v14 = v18;
  }

  return v11;
}

void __89__NLWorkoutSplitStorage_splitEnablementDictionaryForActivityTypes_splitsActivityTypeKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696C510];
  v5 = a2;
  v6 = [v4 meterUnit];
  v10 = [NLWorkoutSplitStorage _defaultSplit:v3 activityType:v5 userDistanceUnit:v6];

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "enabled")}];
  v9 = [v5 uniqueIdentifier];

  [v7 setValue:v8 forKey:v9];
}

void __89__NLWorkoutSplitStorage_splitEnablementDictionaryForActivityTypes_splitsActivityTypeKey___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a1[4];
  v5 = a2;
  v6 = [v3 restoreFromDictionary:v4 activityType:v5];
  v14 = v6;
  if (v6)
  {
    v7 = a1[5];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "enabled")}];
    v9 = [v5 uniqueIdentifier];

    [v7 setValue:v8 forKey:v9];
  }

  else
  {
    v10 = a1[6];
    v11 = [MEMORY[0x1E696C510] meterUnit];
    v8 = [NLWorkoutSplitStorage _defaultSplit:v10 activityType:v5 userDistanceUnit:v11];

    v12 = a1[5];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "enabled")}];
    v13 = [v5 uniqueIdentifier];

    [v12 setValue:v9 forKey:v13];
  }
}

+ (id)splitForActivityType:(id)a3 splitsActivityTypeKey:(id)a4 userDistanceUnit:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NLWorkoutSplitStorage userDefaults];
  v12 = [v11 objectForKey:v9];

  if (v12)
  {
    v13 = [a1 restoreFromDictionary:v12 activityType:v8];
    v14 = v13;
    if (v13)
    {
      if ([v13 enabled])
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x1E696B9A8];
        if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v14;
          _os_log_impl(&dword_1E5D0F000, v15, OS_LOG_TYPE_DEFAULT, "[SplitStorage] Splits supported. Split span: %@", &v19, 0xCu);
        }
      }

      v16 = v14;
    }

    else
    {
      v16 = [NLWorkoutSplitStorage _defaultSplit:v9 activityType:v8 userDistanceUnit:v10];
    }

    v17 = v16;
  }

  else
  {
    v17 = [NLWorkoutSplitStorage _defaultSplit:v9 activityType:v8 userDistanceUnit:v10];
  }

  return v17;
}

+ (id)restoreFromDictionary:(id)a3 activityType:(id)a4
{
  v5 = a3;
  v6 = [a4 uniqueIdentifier];
  v7 = [v5 objectForKey:v6];

  v8 = [NLWorkoutSplitStorage restoreFromDictionary:v7];

  return v8;
}

+ (id)restoreFromDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"type"];
    v6 = [a1 mapSplitTypeStringToEnum:v5];
    v7 = [v4 objectForKey:@"value"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v4 objectForKey:@"enabled"];

    v11 = [v10 isEqualToString:@"true"];
    v12 = [[NLWorkoutSplitStorage alloc] initWithType:v6 value:v9];
    [(NLWorkoutSplitStorage *)v12 setEnabled:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)serializeSplitStorage:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = a3;
    v5 = [v3 dictionary];
    v6 = +[NLWorkoutSplitStorage mapSplitTypeEnumToString:](NLWorkoutSplitStorage, "mapSplitTypeEnumToString:", [v4 type]);
    v7 = [v4 enabled];
    v8 = @"false";
    if (v7)
    {
      v8 = @"true";
    }

    v9 = v8;
    [v5 setObject:v6 forKey:@"type"];
    v10 = MEMORY[0x1E696AD98];
    [v4 value];
    v12 = v11;

    v13 = [v10 numberWithDouble:v12];
    [v5 setObject:v13 forKey:@"value"];

    [v5 setObject:v9 forKey:@"enabled"];
  }

  else
  {
    v5 = 0;
  }

  v14 = [v5 copy];

  return v14;
}

+ (void)saveSplitStorage:(id)a3 forActivityType:(id)a4 useLegacyUniqueIdentifier:(BOOL)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  _HKInitializeLogging();
  v9 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v7;
    _os_log_impl(&dword_1E5D0F000, v9, OS_LOG_TYPE_DEFAULT, "[SplitStorage] Saving split values to defaults. split:%@", &v23, 0xCu);
  }

  v10 = [v7 type];
  if (v10 == 1)
  {
    v11 = kNLSessionTrackerAppKeyDistanceSplitsByActivityType;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = &kNLSessionTrackerAppKeyTimeSplitsByActivityType;
  }

  v12 = *v11;
  if (v12)
  {
    v13 = v12;
    v14 = +[NLWorkoutSplitStorage userDefaults];
    v15 = [v14 objectForKey:v13];
    v16 = [v15 mutableCopy];

    if (!v16)
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
    }

    v17 = [NLWorkoutSplitStorage serializeSplitStorage:v7];
    if (a5)
    {
      v18 = [v8 workoutActivityType];
      v19 = [v18 legacyUniqueIdentifier];
    }

    else
    {
      v19 = [v8 uniqueIdentifier];
    }

    [v16 setObject:v17 forKey:v19];
    v20 = +[NLWorkoutSplitStorage userDefaults];
    [v20 setObject:v16 forKey:v13];

    if (!+[NLWorkoutSplitStorage isTesting])
    {
      [MEMORY[0x1E695E000] fu_backupStandardUserDefaultsKey:v13];
    }

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = [v8 uniqueIdentifier];
    [v21 postNotificationName:@"NLWorkoutSplitStorageSaved" object:v22];
  }

LABEL_16:
}

+ (int64_t)mapSplitTypeStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"distance"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"time"])
  {
    v4 = 2;
  }

  else
  {
    [v3 isEqualToString:@"none"];
    v4 = 0;
  }

  return v4;
}

+ (id)mapSplitTypeEnumToString:(int64_t)a3
{
  if (a3 > 2)
  {
    return &stru_1F5F88F90;
  }

  else
  {
    return off_1E878CAE0[a3];
  }
}

@end