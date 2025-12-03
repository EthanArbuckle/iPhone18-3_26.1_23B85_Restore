@interface _CDMDCSContextualPredicate
+ (id)_predicateForChangeAtKeyPath:(id)path identifier:(id)identifier;
+ (id)_predicateForKeyPath:(id)path equalToValue:(id)value identifier:(id)identifier;
+ (id)_predicateForKeyPath:(id)path withPredicate:(id)predicate identifier:(id)identifier;
+ (id)andPredicateWithSubpredicates:(id)subpredicates identifier:(id)identifier;
+ (id)contextualPredicateForKeyPaths:(id)paths withPredicate:(id)predicate identifier:(id)identifier;
+ (id)notPredicateWithSubpredicate:(id)subpredicate identifier:(id)identifier;
+ (id)orPredicateWithSubpredicates:(id)subpredicates identifier:(id)identifier;
+ (id)predicateForBacklightOnStatus;
+ (id)predicateForFirstPartyWorkoutMatchingTypes:(id)types states:(id)states;
+ (id)predicateForForegroundApp;
+ (id)predicateForIsConnectedToAudioBluetoothDevice;
+ (id)predicateForIsConnectedToCar;
+ (id)predicateForNetworkQualityBad;
+ (id)predicateForNetworkQualityFair;
+ (id)predicateForNextAlarm;
+ (id)predicateForPhotosAppBecameForeground;
+ (id)predicateForUserIsArrivingAtHome;
+ (id)predicateForUserIsLeavingHome;
+ (id)predicateWithIdentifier:(id)identifier;
+ (id)predicates;
- (BOOL)isEqual:(id)equal;
- (_CDMDCSContextualPredicate)initWithCoder:(id)coder;
- (_CDMDCSContextualPredicate)initWithIdentifier:(id)identifier parameters:(id)parameters;
- (_CDMDCSContextualPredicate)initWithPlistDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)plistDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDMDCSContextualPredicate

+ (id)_predicateForChangeAtKeyPath:(id)path identifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  identifierCopy = identifier;
  v6 = objc_msgSendSuper2(&v8, sel_predicateForChangeAtKeyPath_, path);
  [v6 setIdentifier:{identifierCopy, v8.receiver, v8.super_class}];

  return v6;
}

+ (id)_predicateForKeyPath:(id)path equalToValue:(id)value identifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  identifierCopy = identifier;
  v8 = objc_msgSendSuper2(&v10, sel_predicateForKeyPath_equalToValue_, path, value);
  [v8 setIdentifier:{identifierCopy, v10.receiver, v10.super_class}];

  return v8;
}

+ (id)_predicateForKeyPath:(id)path withPredicate:(id)predicate identifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  identifierCopy = identifier;
  v8 = objc_msgSendSuper2(&v10, sel_predicateForKeyPath_withPredicate_, path, predicate);
  [v8 setIdentifier:{identifierCopy, v10.receiver, v10.super_class}];

  return v8;
}

+ (id)contextualPredicateForKeyPaths:(id)paths withPredicate:(id)predicate identifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  identifierCopy = identifier;
  v8 = objc_msgSendSuper2(&v10, sel_contextualPredicateForKeyPaths_withPredicate_, paths, predicate);
  [v8 setIdentifier:{identifierCopy, v10.receiver, v10.super_class}];

  return v8;
}

+ (id)notPredicateWithSubpredicate:(id)subpredicate identifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  identifierCopy = identifier;
  v6 = objc_msgSendSuper2(&v8, sel_notPredicateWithSubpredicate_, subpredicate);
  [v6 setIdentifier:{identifierCopy, v8.receiver, v8.super_class}];

  return v6;
}

+ (id)andPredicateWithSubpredicates:(id)subpredicates identifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  identifierCopy = identifier;
  v6 = objc_msgSendSuper2(&v8, sel_andPredicateWithSubpredicates_, subpredicates);
  [v6 setIdentifier:{identifierCopy, v8.receiver, v8.super_class}];

  return v6;
}

+ (id)orPredicateWithSubpredicates:(id)subpredicates identifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS____CDMDCSContextualPredicate;
  identifierCopy = identifier;
  v6 = objc_msgSendSuper2(&v8, sel_orPredicateWithSubpredicates_, subpredicates);
  [v6 setIdentifier:{identifierCopy, v8.receiver, v8.super_class}];

  return v6;
}

+ (id)predicateForUserIsLeavingHome
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59___CDMDCSContextualPredicate_predicateForUserIsLeavingHome__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = self;
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
  v4[4] = self;
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
  block[4] = self;
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
  block[4] = self;
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
  block[4] = self;
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
  v4[4] = self;
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
  v4[4] = self;
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
  v4[4] = self;
  v4[5] = a2;
  if (predicateForNextAlarm_initialized != -1)
  {
    dispatch_once(&predicateForNextAlarm_initialized, v4);
  }

  v2 = predicateForNextAlarm_contextualPredicate;

  return v2;
}

+ (id)predicateForFirstPartyWorkoutMatchingTypes:(id)types states:(id)states
{
  v4 = 0;
  v25[2] = *MEMORY[0x1E69E9840];
  if (types && states)
  {
    statesCopy = states;
    typesCopy = types;
    v10 = +[_CDContextQueries keyPathForWorkoutDataDictionary];
    v11 = MEMORY[0x1E696AE18];
    v12 = +[_CDContextQueries sessionState];
    v13 = +[_CDContextQueries workoutActivityType];
    v14 = +[_CDContextQueries isFirstPartyWorkout];
    v15 = [v11 predicateWithFormat:@"SELF.%@.value.%K in %@ AND SELF.%@.value.%K in %@ AND SELF.%@.value.%K = %@", v10, v12, statesCopy, v10, v13, typesCopy, v10, v14, MEMORY[0x1E695E118]];

    v16 = NSStringFromSelector(a2);
    v17 = v15;
    v4 = [self _predicateForKeyPath:v10 withPredicate:v15 identifier:v16];

    v18 = +[_CDContextQueries sessionState];
    v24[0] = v18;
    v25[0] = statesCopy;
    v19 = +[_CDContextQueries workoutActivityType];
    v24[1] = v19;
    allObjects = [typesCopy allObjects];

    v25[1] = allObjects;
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
  v4[4] = self;
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
  v4[4] = self;
  v4[5] = a2;
  if (predicateForForegroundApp_initialized != -1)
  {
    dispatch_once(&predicateForForegroundApp_initialized, v4);
  }

  v2 = predicateForForegroundApp_contextualPredicate;

  return v2;
}

+ (id)predicateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___CDMDCSContextualPredicate_predicateWithIdentifier___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (predicateWithIdentifier__initialized == -1)
  {
    if (identifierCopy)
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

- (_CDMDCSContextualPredicate)initWithIdentifier:(id)identifier parameters:(id)parameters
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  if ([parametersCopy count] == 2)
  {
    v8 = NSStringFromSelector(sel_predicateForFirstPartyWorkoutMatchingTypes_states_);
    v9 = [identifierCopy isEqualToString:v8];

    if (v9)
    {
      v10 = +[_CDContextQueries sessionState];
      contextChannel3 = [parametersCopy objectForKeyedSubscript:v10];

      v12 = +[_CDContextQueries workoutActivityType];
      v13 = [parametersCopy objectForKeyedSubscript:v12];

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
LABEL_14:
          v16 = v14;
          if (contextChannel3 && v14)
          {
            v15 = [_CDMDCSContextualPredicate predicateForFirstPartyWorkoutMatchingTypes:v14 states:contextChannel3];
LABEL_24:

            goto LABEL_25;
          }

LABEL_21:
          contextChannel = [MEMORY[0x1E6997908] contextChannel];
          if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_FAULT))
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

        contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
        if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_FAULT))
        {
          [_CDMDCSContextualPredicate initWithIdentifier:parameters:];
        }
      }

      v16 = 0;
      goto LABEL_21;
    }

    contextChannel3 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v15 = [_CDMDCSContextualPredicate predicateWithIdentifier:identifierCopy];
  if (!v15)
  {
    contextChannel3 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel3, OS_LOG_TYPE_FAULT))
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

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_parameters forKey:@"parameters"];
}

- (_CDMDCSContextualPredicate)initWithCoder:(id)coder
{
  v4 = initWithCoder__initialized;
  coderCopy = coder;
  if (v4 != -1)
  {
    [_CDMDCSContextualPredicate initWithCoder:];
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClasses:initWithCoder__allowedParameterClasses forKey:@"parameters"];

  v8 = [(_CDMDCSContextualPredicate *)self initWithIdentifier:v6 parameters:v7];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _CDMDCSContextualPredicate;
  v4 = [(_CDContextualPredicate *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_identifier copy];
  [v4 setIdentifier:v5];

  v6 = [(NSDictionary *)self->_parameters copy];
  [v4 setParameters:v6];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _CDMDCSContextualPredicate;
  if ([(_CDContextualPredicate *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [v5 identifier];
    LODWORD(identifier) = [(NSString *)identifier isEqual:identifier];

    if (identifier)
    {
      parameters = self->_parameters;
      parameters = [v5 parameters];
      v10 = parameters;
      if (parameters)
      {
        v11 = [(NSDictionary *)parameters isEqualToDictionary:parameters];
      }

      else
      {
        v11 = parameters == 0;
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

- (_CDMDCSContextualPredicate)initWithPlistDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];

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