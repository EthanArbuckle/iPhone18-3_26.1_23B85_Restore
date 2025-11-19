@interface _CDMDCSContextualPredicate
+ (id)_predicateForChangeAtKeyPath:(id)a3 identifier:(id)a4;
+ (id)_predicateForKeyPath:(id)a3 equalToValue:(id)a4 identifier:(id)a5;
+ (id)_predicateForKeyPath:(id)a3 withPredicate:(id)a4 identifier:(id)a5;
+ (id)andPredicateWithSubpredicates:(id)a3 identifier:(id)a4;
+ (id)contextualPredicateForKeyPaths:(id)a3 withPredicate:(id)a4 identifier:(id)a5;
+ (id)notPredicateWithSubpredicate:(id)a3 identifier:(id)a4;
+ (id)orPredicateWithSubpredicates:(id)a3 identifier:(id)a4;
+ (id)predicateForBacklightOnStatus;
+ (id)predicateForFirstPartyWorkoutMatchingTypes:(id)a3 states:(id)a4;
+ (id)predicateForForegroundApp;
+ (id)predicateForIsConnectedToAudioBluetoothDevice;
+ (id)predicateForIsConnectedToCar;
+ (id)predicateForNetworkQualityBad;
+ (id)predicateForNetworkQualityFair;
+ (id)predicateForNextAlarm;
+ (id)predicateForPhotosAppBecameForeground;
+ (id)predicateForUserIsArrivingAtHome;
+ (id)predicateForUserIsLeavingHome;
+ (id)predicateWithIdentifier:(id)a3;
+ (id)predicates;
- (BOOL)isEqual:(id)a3;
- (_CDMDCSContextualPredicate)initWithCoder:(id)a3;
- (_CDMDCSContextualPredicate)initWithIdentifier:(id)a3 parameters:(id)a4;
- (_CDMDCSContextualPredicate)initWithPlistDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)plistDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDMDCSContextualPredicate

+ (id)_predicateForChangeAtKeyPath:(id)a3 identifier:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v8, sel_predicateForChangeAtKeyPath_, a3);
  [v6 setIdentifier:{v5, v8.receiver, v8.super_class}];

  return v6;
}

+ (id)_predicateForKeyPath:(id)a3 equalToValue:(id)a4 identifier:(id)a5
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  v7 = a5;
  v8 = objc_msgSendSuper2(&v10, sel_predicateForKeyPath_equalToValue_, a3, a4);
  [v8 setIdentifier:{v7, v10.receiver, v10.super_class}];

  return v8;
}

+ (id)_predicateForKeyPath:(id)a3 withPredicate:(id)a4 identifier:(id)a5
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  v7 = a5;
  v8 = objc_msgSendSuper2(&v10, sel_predicateForKeyPath_withPredicate_, a3, a4);
  [v8 setIdentifier:{v7, v10.receiver, v10.super_class}];

  return v8;
}

+ (id)contextualPredicateForKeyPaths:(id)a3 withPredicate:(id)a4 identifier:(id)a5
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  v7 = a5;
  v8 = objc_msgSendSuper2(&v10, sel_contextualPredicateForKeyPaths_withPredicate_, a3, a4);
  [v8 setIdentifier:{v7, v10.receiver, v10.super_class}];

  return v8;
}

+ (id)notPredicateWithSubpredicate:(id)a3 identifier:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v8, sel_notPredicateWithSubpredicate_, a3);
  [v6 setIdentifier:{v5, v8.receiver, v8.super_class}];

  return v6;
}

+ (id)andPredicateWithSubpredicates:(id)a3 identifier:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v8, sel_andPredicateWithSubpredicates_, a3);
  [v6 setIdentifier:{v5, v8.receiver, v8.super_class}];

  return v6;
}

+ (id)orPredicateWithSubpredicates:(id)a3 identifier:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v8, sel_orPredicateWithSubpredicates_, a3);
  [v6 setIdentifier:{v5, v8.receiver, v8.super_class}];

  return v6;
}

+ (id)predicateForUserIsLeavingHome
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59___CDMDCSContextualPredicate_predicateForUserIsLeavingHome__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (predicateForUserIsLeavingHome_initialized != -1)
  {
    dispatch_once(&predicateForUserIsLeavingHome_initialized, v4);
  }

  v2 = predicateForUserIsLeavingHome_contextualPredicate;

  return v2;
}

+ (id)predicateForUserIsArrivingAtHome
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62___CDMDCSContextualPredicate_predicateForUserIsArrivingAtHome__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (predicateForUserIsArrivingAtHome_initialized != -1)
  {
    dispatch_once(&predicateForUserIsArrivingAtHome_initialized, v4);
  }

  v2 = predicateForUserIsArrivingAtHome_contextualPredicate;

  return v2;
}

+ (id)predicateForPhotosAppBecameForeground
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67___CDMDCSContextualPredicate_predicateForPhotosAppBecameForeground__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (predicateForPhotosAppBecameForeground_initialized != -1)
  {
    dispatch_once(&predicateForPhotosAppBecameForeground_initialized, block);
  }

  v2 = predicateForPhotosAppBecameForeground_contextualPredicate;

  return v2;
}

+ (id)predicateForNetworkQualityFair
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___CDMDCSContextualPredicate_predicateForNetworkQualityFair__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (predicateForNetworkQualityFair_initialized != -1)
  {
    dispatch_once(&predicateForNetworkQualityFair_initialized, block);
  }

  v2 = predicateForNetworkQualityFair_contextualPredicate;

  return v2;
}

+ (id)predicateForNetworkQualityBad
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___CDMDCSContextualPredicate_predicateForNetworkQualityBad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (predicateForNetworkQualityBad_initialized != -1)
  {
    dispatch_once(&predicateForNetworkQualityBad_initialized, block);
  }

  v2 = predicateForNetworkQualityBad_contextualPredicate;

  return v2;
}

+ (id)predicateForIsConnectedToCar
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58___CDMDCSContextualPredicate_predicateForIsConnectedToCar__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (predicateForIsConnectedToCar_initialized != -1)
  {
    dispatch_once(&predicateForIsConnectedToCar_initialized, v4);
  }

  v2 = predicateForIsConnectedToCar_contextualPredicate;

  return v2;
}

+ (id)predicateForIsConnectedToAudioBluetoothDevice
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75___CDMDCSContextualPredicate_predicateForIsConnectedToAudioBluetoothDevice__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (predicateForIsConnectedToAudioBluetoothDevice_initialized != -1)
  {
    dispatch_once(&predicateForIsConnectedToAudioBluetoothDevice_initialized, v4);
  }

  v2 = predicateForIsConnectedToAudioBluetoothDevice_contextualPredicate;

  return v2;
}

+ (id)predicateForNextAlarm
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51___CDMDCSContextualPredicate_predicateForNextAlarm__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (predicateForNextAlarm_initialized != -1)
  {
    dispatch_once(&predicateForNextAlarm_initialized, v4);
  }

  v2 = predicateForNextAlarm_contextualPredicate;

  return v2;
}

+ (id)predicateForFirstPartyWorkoutMatchingTypes:(id)a3 states:(id)a4
{
  v4 = 0;
  v25[2] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v8 = a4;
    v9 = a3;
    v10 = +[_CDContextQueries keyPathForWorkoutDataDictionary];
    v11 = MEMORY[0x1E696AE18];
    v12 = +[_CDContextQueries sessionState];
    v13 = +[_CDContextQueries workoutActivityType];
    v14 = +[_CDContextQueries isFirstPartyWorkout];
    v15 = [v11 predicateWithFormat:@"SELF.%@.value.%K in %@ AND SELF.%@.value.%K in %@ AND SELF.%@.value.%K = %@", v10, v12, v8, v10, v13, v9, v10, v14, MEMORY[0x1E695E118]];

    v16 = NSStringFromSelector(a2);
    v17 = v15;
    v4 = [a1 _predicateForKeyPath:v10 withPredicate:v15 identifier:v16];

    v18 = +[_CDContextQueries sessionState];
    v24[0] = v18;
    v25[0] = v8;
    v19 = +[_CDContextQueries workoutActivityType];
    v24[1] = v19;
    v20 = [v9 allObjects];

    v25[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

    [v4 setParameters:v21];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)predicateForBacklightOnStatus
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59___CDMDCSContextualPredicate_predicateForBacklightOnStatus__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (predicateForBacklightOnStatus_initialized != -1)
  {
    dispatch_once(&predicateForBacklightOnStatus_initialized, v4);
  }

  v2 = predicateForBacklightOnStatus_contextualPredicate;

  return v2;
}

+ (id)predicateForForegroundApp
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55___CDMDCSContextualPredicate_predicateForForegroundApp__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  if (predicateForForegroundApp_initialized != -1)
  {
    dispatch_once(&predicateForForegroundApp_initialized, v4);
  }

  v2 = predicateForForegroundApp_contextualPredicate;

  return v2;
}

+ (id)predicateWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___CDMDCSContextualPredicate_predicateWithIdentifier___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (predicateWithIdentifier__initialized == -1)
  {
    if (v4)
    {
LABEL_3:
      v6 = [predicateWithIdentifier__mapping objectForKeyedSubscript:v5];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&predicateWithIdentifier__initialized, block);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (id)predicates
{
  if (predicates_initialized != -1)
  {
    +[_CDMDCSContextualPredicate predicates];
  }

  v3 = predicates_predicates;

  return v3;
}

- (_CDMDCSContextualPredicate)initWithIdentifier:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count] == 2)
  {
    v8 = NSStringFromSelector(sel_predicateForFirstPartyWorkoutMatchingTypes_states_);
    v9 = [v6 isEqualToString:v8];

    if (v9)
    {
      v10 = +[_CDContextQueries sessionState];
      v11 = [v7 objectForKeyedSubscript:v10];

      v12 = +[_CDContextQueries workoutActivityType];
      v13 = [v7 objectForKeyedSubscript:v12];

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
LABEL_14:
          v16 = v14;
          if (v11 && v14)
          {
            v15 = [_CDMDCSContextualPredicate predicateForFirstPartyWorkoutMatchingTypes:v14 states:v11];
LABEL_24:

            goto LABEL_25;
          }

LABEL_21:
          v18 = [MEMORY[0x1E6997908] contextChannel];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            [_CDMDCSContextualPredicate initWithIdentifier:parameters:];
          }

          v15 = 0;
          goto LABEL_24;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 copy];
          goto LABEL_14;
        }

        v17 = [MEMORY[0x1E6997908] contextChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [_CDMDCSContextualPredicate initWithIdentifier:parameters:];
        }
      }

      v16 = 0;
      goto LABEL_21;
    }

    v11 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v15 = [_CDMDCSContextualPredicate predicateWithIdentifier:v6];
  if (!v15)
  {
    v11 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
LABEL_10:
      [_CDMDCSContextualPredicate initWithIdentifier:parameters:];
    }

LABEL_11:
    v15 = 0;
LABEL_25:
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_parameters forKey:@"parameters"];
}

- (_CDMDCSContextualPredicate)initWithCoder:(id)a3
{
  v4 = initWithCoder__initialized;
  v5 = a3;
  if (v4 != -1)
  {
    [_CDMDCSContextualPredicate initWithCoder:];
  }

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v5 decodeObjectOfClasses:initWithCoder__allowedParameterClasses forKey:@"parameters"];

  v8 = [(_CDMDCSContextualPredicate *)self initWithIdentifier:v6 parameters:v7];
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _CDMDCSContextualPredicate;
  v4 = [(_CDContextualPredicate *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_identifier copy];
  [v4 setIdentifier:v5];

  v6 = [(NSDictionary *)self->_parameters copy];
  [v4 setParameters:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _CDMDCSContextualPredicate;
  if ([(_CDContextualPredicate *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    identifier = self->_identifier;
    v7 = [v5 identifier];
    LODWORD(identifier) = [(NSString *)identifier isEqual:v7];

    if (identifier)
    {
      parameters = self->_parameters;
      v9 = [v5 parameters];
      v10 = v9;
      if (parameters)
      {
        v11 = [(NSDictionary *)parameters isEqualToDictionary:v9];
      }

      else
      {
        v11 = v9 == 0;
      }
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

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _CDMDCSContextualPredicate;
  v3 = [(_CDContextualPredicate *)&v5 hash];
  return [(NSString *)self->_identifier hash]- v3 + 32 * v3;
}

- (id)plistDictionary
{
  if (self->_parameters)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v3];
  [v4 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  parameters = self->_parameters;
  if (parameters)
  {
    [v4 setObject:parameters forKeyedSubscript:@"parameters"];
  }

  return v4;
}

- (_CDMDCSContextualPredicate)initWithPlistDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [v4 objectForKeyedSubscript:@"parameters"];

  v7 = [(_CDMDCSContextualPredicate *)self initWithIdentifier:v5 parameters:v6];
  return v7;
}

- (void)initWithIdentifier:parameters:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_1A9611000, v0, v1, "Unknown predicate identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithIdentifier:parameters:.cold.3()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1A9611000, v2, v3, "Unexpected class for workout types (%@), expected NSSet or NSArray.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithIdentifier:parameters:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_1A9611000, v0, v1, "Invalid predicate parameters: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end