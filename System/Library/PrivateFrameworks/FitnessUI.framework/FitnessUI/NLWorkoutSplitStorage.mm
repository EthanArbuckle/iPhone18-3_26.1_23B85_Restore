@interface NLWorkoutSplitStorage
+ (BOOL)isTesting;
+ (NSUserDefaults)userDefaults;
+ (double)_defaultSplitDistanceForActivityType:(id)type userDistanceUnit:(id)unit;
+ (id)_defaultSplit:(id)split activityType:(id)type userDistanceUnit:(id)unit;
+ (id)mapSplitTypeEnumToString:(int64_t)string;
+ (id)restoreFromDictionary:(id)dictionary;
+ (id)restoreFromDictionary:(id)dictionary activityType:(id)type;
+ (id)serializeSplitStorage:(id)storage;
+ (id)splitEnablementDictionaryForActivityTypes:(id)types splitsActivityTypeKey:(id)key;
+ (id)splitForActivityType:(id)type splitsActivityTypeKey:(id)key userDistanceUnit:(id)unit;
+ (int64_t)mapSplitTypeStringToEnum:(id)enum;
+ (void)saveSplitStorage:(id)storage forActivityType:(id)type useLegacyUniqueIdentifier:(BOOL)identifier;
- (BOOL)isEqual:(id)equal;
- (NLWorkoutSplitStorage)initWithType:(int64_t)type value:(double)value;
- (id)description;
- (unint64_t)hash;
@end

@implementation NLWorkoutSplitStorage

- (NLWorkoutSplitStorage)initWithType:(int64_t)type value:(double)value
{
  v9.receiver = self;
  v9.super_class = NLWorkoutSplitStorage;
  result = [(NLWorkoutSplitStorage *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_value = value;
    v8 = value > 0.0 && type != 0;
    result->_enabled = v8;
  }

  return result;
}

+ (NSUserDefaults)userDefaults
{
  v2 = _userDefaults;
  if (!_userDefaults)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = _userDefaults;
    _userDefaults = standardUserDefaults;

    v2 = _userDefaults;
  }

  return v2;
}

+ (BOOL)isTesting
{
  v2 = _userDefaults;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  LOBYTE(v2) = [v2 isEqual:standardUserDefaults];

  return v2 ^ 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(NLWorkoutSplitStorage *)self type];
      type2 = [(NLWorkoutSplitStorage *)v5 type];
      [(NLWorkoutSplitStorage *)self value];
      v9 = v8;
      [(NLWorkoutSplitStorage *)v5 value];
      v11 = v10;
      enabled = [(NLWorkoutSplitStorage *)self enabled];
      enabled2 = [(NLWorkoutSplitStorage *)v5 enabled];

      v15 = v9 == v11 && type == type2;
      v16 = v15 & (enabled ^ enabled2 ^ 1);
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
  type = [(NLWorkoutSplitStorage *)self type];
  v5 = @"NLWorkoutSplitsTypeNone";
  if (type == 1)
  {
    v5 = @"NLWorkoutSplitsTypeDistance";
  }

  if (type == 2)
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

+ (id)_defaultSplit:(id)split activityType:(id)type userDistanceUnit:(id)unit
{
  splitCopy = split;
  typeCopy = type;
  unitCopy = unit;
  if (([splitCopy isEqualToString:@"DistanceSplitsByActivityType"] & 1) == 0)
  {
    [splitCopy isEqualToString:@"TimeSplitsByActivityType"];
  }

  if ([splitCopy isEqualToString:@"DistanceSplitsByActivityType"])
  {
    [NLWorkoutSplitStorage _defaultSplitDistanceForActivityType:typeCopy userDistanceUnit:unitCopy];
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

+ (double)_defaultSplitDistanceForActivityType:(id)type userDistanceUnit:(id)unit
{
  typeCopy = type;
  unitCopy = unit;
  effectiveTypeIdentifier = [typeCopy effectiveTypeIdentifier];
  if ((effectiveTypeIdentifier - 13) <= 0x3A && ((1 << (effectiveTypeIdentifier - 13)) & 0x600808001000800) == 0 && effectiveTypeIdentifier == 13)
  {
    [typeCopy isIndoor];
  }

  v8 = [MEMORY[0x1E696C348] quantityWithUnit:unitCopy doubleValue:?];
  meterUnit = [MEMORY[0x1E696C510] meterUnit];
  [v8 doubleValueForUnit:meterUnit];
  v11 = v10;

  if ([typeCopy effectiveTypeIdentifier] == 35)
  {
    v12 = MEMORY[0x1E696C348];
    meterUnit2 = [MEMORY[0x1E696C510] meterUnit];
    v14 = [v12 quantityWithUnit:meterUnit2 doubleValue:500.0];
    meterUnit3 = [MEMORY[0x1E696C510] meterUnit];
    [v14 doubleValueForUnit:meterUnit3];
    v11 = v16;
  }

  return v11;
}

+ (id)splitEnablementDictionaryForActivityTypes:(id)types splitsActivityTypeKey:(id)key
{
  keyCopy = key;
  typesCopy = types;
  v8 = +[NLWorkoutSplitStorage userDefaults];
  v9 = [v8 objectForKey:keyCopy];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (v9)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__NLWorkoutSplitStorage_splitEnablementDictionaryForActivityTypes_splitsActivityTypeKey___block_invoke_2;
    v20[3] = &unk_1E878CAC0;
    selfCopy = self;
    v12 = &v21;
    v21 = v9;
    v13 = v11;
    v22 = v13;
    v23 = keyCopy;
    v14 = keyCopy;
    [typesCopy enumerateObjectsUsingBlock:v20];

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
    v26 = keyCopy;
    v18 = v10;
    v27 = v18;
    v16 = keyCopy;
    [typesCopy enumerateObjectsUsingBlock:v25];

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

+ (id)splitForActivityType:(id)type splitsActivityTypeKey:(id)key userDistanceUnit:(id)unit
{
  v21 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  keyCopy = key;
  unitCopy = unit;
  v11 = +[NLWorkoutSplitStorage userDefaults];
  v12 = [v11 objectForKey:keyCopy];

  if (v12)
  {
    v13 = [self restoreFromDictionary:v12 activityType:typeCopy];
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
      v16 = [NLWorkoutSplitStorage _defaultSplit:keyCopy activityType:typeCopy userDistanceUnit:unitCopy];
    }

    v17 = v16;
  }

  else
  {
    v17 = [NLWorkoutSplitStorage _defaultSplit:keyCopy activityType:typeCopy userDistanceUnit:unitCopy];
  }

  return v17;
}

+ (id)restoreFromDictionary:(id)dictionary activityType:(id)type
{
  dictionaryCopy = dictionary;
  uniqueIdentifier = [type uniqueIdentifier];
  v7 = [dictionaryCopy objectForKey:uniqueIdentifier];

  v8 = [NLWorkoutSplitStorage restoreFromDictionary:v7];

  return v8;
}

+ (id)restoreFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy objectForKey:@"type"];
    v6 = [self mapSplitTypeStringToEnum:v5];
    v7 = [dictionaryCopy objectForKey:@"value"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [dictionaryCopy objectForKey:@"enabled"];

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

+ (id)serializeSplitStorage:(id)storage
{
  if (storage)
  {
    v3 = MEMORY[0x1E695DF90];
    storageCopy = storage;
    dictionary = [v3 dictionary];
    v6 = +[NLWorkoutSplitStorage mapSplitTypeEnumToString:](NLWorkoutSplitStorage, "mapSplitTypeEnumToString:", [storageCopy type]);
    enabled = [storageCopy enabled];
    v8 = @"false";
    if (enabled)
    {
      v8 = @"true";
    }

    v9 = v8;
    [dictionary setObject:v6 forKey:@"type"];
    v10 = MEMORY[0x1E696AD98];
    [storageCopy value];
    v12 = v11;

    v13 = [v10 numberWithDouble:v12];
    [dictionary setObject:v13 forKey:@"value"];

    [dictionary setObject:v9 forKey:@"enabled"];
  }

  else
  {
    dictionary = 0;
  }

  v14 = [dictionary copy];

  return v14;
}

+ (void)saveSplitStorage:(id)storage forActivityType:(id)type useLegacyUniqueIdentifier:(BOOL)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  typeCopy = type;
  _HKInitializeLogging();
  v9 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = storageCopy;
    _os_log_impl(&dword_1E5D0F000, v9, OS_LOG_TYPE_DEFAULT, "[SplitStorage] Saving split values to defaults. split:%@", &v23, 0xCu);
  }

  type = [storageCopy type];
  if (type == 1)
  {
    v11 = kNLSessionTrackerAppKeyDistanceSplitsByActivityType;
  }

  else
  {
    if (type != 2)
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
    dictionary = [v15 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v17 = [NLWorkoutSplitStorage serializeSplitStorage:storageCopy];
    if (identifier)
    {
      workoutActivityType = [typeCopy workoutActivityType];
      legacyUniqueIdentifier = [workoutActivityType legacyUniqueIdentifier];
    }

    else
    {
      legacyUniqueIdentifier = [typeCopy uniqueIdentifier];
    }

    [dictionary setObject:v17 forKey:legacyUniqueIdentifier];
    v20 = +[NLWorkoutSplitStorage userDefaults];
    [v20 setObject:dictionary forKey:v13];

    if (!+[NLWorkoutSplitStorage isTesting])
    {
      [MEMORY[0x1E695E000] fu_backupStandardUserDefaultsKey:v13];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    uniqueIdentifier = [typeCopy uniqueIdentifier];
    [defaultCenter postNotificationName:@"NLWorkoutSplitStorageSaved" object:uniqueIdentifier];
  }

LABEL_16:
}

+ (int64_t)mapSplitTypeStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"distance"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"time"])
  {
    v4 = 2;
  }

  else
  {
    [enumCopy isEqualToString:@"none"];
    v4 = 0;
  }

  return v4;
}

+ (id)mapSplitTypeEnumToString:(int64_t)string
{
  if (string > 2)
  {
    return &stru_1F5F88F90;
  }

  else
  {
    return off_1E878CAE0[string];
  }
}

@end