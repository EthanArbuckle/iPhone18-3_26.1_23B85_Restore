@interface _CDContextualChangeRegistration
+ (id)localNonWakingRegistrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate callback:(id)callback;
+ (id)localNonWakingRegistrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate clientIdentifier:(id)clientIdentifier callback:(id)callback;
+ (id)localWakingRegistrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate callback:(id)callback;
+ (id)localWakingRegistrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate clientIdentifier:(id)clientIdentifier callback:(id)callback;
+ (id)registrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate deviceTypes:(unint64_t)types clientIdentifier:(id)clientIdentifier mustWake:(BOOL)wake qualityOfService:(unsigned int)service callback:(id)callback;
+ (id)registrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate dismissalPolicy:(id)policy deviceSet:(unint64_t)set clientIdentifier:(id)clientIdentifier mustWake:(BOOL)wake qualityOfService:(unsigned int)service callback:(id)self0;
+ (id)registrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate dismissalPolicy:(id)policy deviceSet:(unint64_t)set mustWake:(BOOL)wake callback:(id)callback;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMultiDeviceRegistration;
- (_CDContextualChangeRegistration)initWithCoder:(id)coder;
- (_CDContextualChangeRegistration)initWithIdentifier:(id)identifier contextualPredicate:(id)predicate dismissalPolicy:(id)policy deviceSet:(unint64_t)set deviceTypes:(unint64_t)types clientIdentifier:(id)clientIdentifier mustWake:(BOOL)wake callback:(id)self0;
- (_CDContextualChangeRegistration)initWithIdentifier:(id)identifier contextualPredicate:(id)predicate dismissalPolicy:(id)policy deviceSet:(unint64_t)set deviceTypes:(unint64_t)types clientIdentifier:(id)clientIdentifier mustWake:(BOOL)wake qualityOfService:(unsigned int)self0 informativeCallback:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDContextualChangeRegistration

- (BOOL)isMultiDeviceRegistration
{
  predicate = self->_predicate;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (_CDContextualChangeRegistration)initWithIdentifier:(id)identifier contextualPredicate:(id)predicate dismissalPolicy:(id)policy deviceSet:(unint64_t)set deviceTypes:(unint64_t)types clientIdentifier:(id)clientIdentifier mustWake:(BOOL)wake callback:(id)self0
{
  identifierCopy = identifier;
  predicateCopy = predicate;
  policyCopy = policy;
  clientIdentifierCopy = clientIdentifier;
  callbackCopy = callback;
  v27.receiver = self;
  v27.super_class = _CDContextualChangeRegistration;
  v20 = [(_CDContextualChangeRegistration *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, identifier);
    objc_storeStrong(&v21->_predicate, predicate);
    objc_storeStrong(&v21->_dismissalPolicy, policy);
    v21->_deviceSet = set;
    v21->_deviceTypes = types;
    objc_storeStrong(&v21->_clientIdentifier, clientIdentifier);
    v21->_mustWake = wake;
    v21->_qualityOfService = 9;
    v22 = MEMORY[0x1AC5886D0](callbackCopy);
    callback = v21->_callback;
    v21->_callback = v22;

    v21->_isDeserialized = callbackCopy != 0;
  }

  return v21;
}

- (_CDContextualChangeRegistration)initWithIdentifier:(id)identifier contextualPredicate:(id)predicate dismissalPolicy:(id)policy deviceSet:(unint64_t)set deviceTypes:(unint64_t)types clientIdentifier:(id)clientIdentifier mustWake:(BOOL)wake qualityOfService:(unsigned int)self0 informativeCallback:(id)self1
{
  identifierCopy = identifier;
  predicateCopy = predicate;
  policyCopy = policy;
  clientIdentifierCopy = clientIdentifier;
  callbackCopy = callback;
  v28.receiver = self;
  v28.super_class = _CDContextualChangeRegistration;
  v21 = [(_CDContextualChangeRegistration *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, identifier);
    objc_storeStrong(&v22->_predicate, predicate);
    objc_storeStrong(&v22->_dismissalPolicy, policy);
    v22->_deviceSet = set;
    v22->_deviceTypes = types;
    objc_storeStrong(&v22->_clientIdentifier, clientIdentifier);
    v22->_mustWake = wake;
    v22->_qualityOfService = service;
    v23 = MEMORY[0x1AC5886D0](callbackCopy);
    informativeCallback = v22->_informativeCallback;
    v22->_informativeCallback = v23;

    v22->_isDeserialized = callbackCopy != 0;
  }

  return v22;
}

+ (id)registrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate dismissalPolicy:(id)policy deviceSet:(unint64_t)set mustWake:(BOOL)wake callback:(id)callback
{
  if (set == 1)
  {
    v14 = 0xFFFFLL;
  }

  else
  {
    v14 = 0;
  }

  callbackCopy = callback;
  policyCopy = policy;
  predicateCopy = predicate;
  identifierCopy = identifier;
  LOBYTE(v21) = wake;
  v19 = [[self alloc] initWithIdentifier:identifierCopy contextualPredicate:predicateCopy dismissalPolicy:policyCopy deviceSet:set deviceTypes:v14 clientIdentifier:0 mustWake:v21 callback:callbackCopy];

  return v19;
}

+ (id)registrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate dismissalPolicy:(id)policy deviceSet:(unint64_t)set clientIdentifier:(id)clientIdentifier mustWake:(BOOL)wake qualityOfService:(unsigned int)service callback:(id)self0
{
  if (set == 1)
  {
    v17 = 0xFFFFLL;
  }

  else
  {
    v17 = 0;
  }

  callbackCopy = callback;
  clientIdentifierCopy = clientIdentifier;
  policyCopy = policy;
  predicateCopy = predicate;
  identifierCopy = identifier;
  HIDWORD(v25) = service;
  LOBYTE(v25) = wake;
  v23 = [[self alloc] initWithIdentifier:identifierCopy contextualPredicate:predicateCopy dismissalPolicy:policyCopy deviceSet:set deviceTypes:v17 clientIdentifier:clientIdentifierCopy mustWake:v25 qualityOfService:callbackCopy informativeCallback:?];

  return v23;
}

+ (id)registrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate deviceTypes:(unint64_t)types clientIdentifier:(id)clientIdentifier mustWake:(BOOL)wake qualityOfService:(unsigned int)service callback:(id)callback
{
  identifierCopy = identifier;
  predicateCopy = predicate;
  clientIdentifierCopy = clientIdentifier;
  callbackCopy = callback;
  if (types)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      HIDWORD(v20) = service;
      LOBYTE(v20) = wake;
      types = [[self alloc] initWithIdentifier:identifierCopy contextualPredicate:predicateCopy dismissalPolicy:0 deviceSet:1 deviceTypes:types clientIdentifier:clientIdentifierCopy mustWake:v20 qualityOfService:callbackCopy informativeCallback:?];
    }

    else
    {
      types = 0;
    }
  }

  return types;
}

+ (id)localWakingRegistrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate callback:(id)callback
{
  callbackCopy = callback;
  predicateCopy = predicate;
  identifierCopy = identifier;
  LOBYTE(v13) = 1;
  v11 = [[self alloc] initWithIdentifier:identifierCopy contextualPredicate:predicateCopy dismissalPolicy:0 deviceSet:0 deviceTypes:0 clientIdentifier:0 mustWake:v13 callback:callbackCopy];

  return v11;
}

+ (id)localWakingRegistrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate clientIdentifier:(id)clientIdentifier callback:(id)callback
{
  callbackCopy = callback;
  clientIdentifierCopy = clientIdentifier;
  predicateCopy = predicate;
  identifierCopy = identifier;
  HIDWORD(v16) = 9;
  LOBYTE(v16) = 1;
  v14 = [[self alloc] initWithIdentifier:identifierCopy contextualPredicate:predicateCopy dismissalPolicy:0 deviceSet:0 deviceTypes:0 clientIdentifier:clientIdentifierCopy mustWake:v16 qualityOfService:callbackCopy informativeCallback:?];

  return v14;
}

+ (id)localNonWakingRegistrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate callback:(id)callback
{
  callbackCopy = callback;
  predicateCopy = predicate;
  identifierCopy = identifier;
  LOBYTE(v13) = 0;
  v11 = [[self alloc] initWithIdentifier:identifierCopy contextualPredicate:predicateCopy dismissalPolicy:0 deviceSet:0 deviceTypes:0 clientIdentifier:0 mustWake:v13 callback:callbackCopy];

  return v11;
}

+ (id)localNonWakingRegistrationWithIdentifier:(id)identifier contextualPredicate:(id)predicate clientIdentifier:(id)clientIdentifier callback:(id)callback
{
  callbackCopy = callback;
  clientIdentifierCopy = clientIdentifier;
  predicateCopy = predicate;
  identifierCopy = identifier;
  HIDWORD(v16) = 9;
  LOBYTE(v16) = 0;
  v14 = [[self alloc] initWithIdentifier:identifierCopy contextualPredicate:predicateCopy dismissalPolicy:0 deviceSet:0 deviceTypes:0 clientIdentifier:clientIdentifierCopy mustWake:v16 qualityOfService:callbackCopy informativeCallback:?];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  informativeCallback = self->_informativeCallback;
  v5 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  predicate = self->_predicate;
  dismissalPolicy = self->_dismissalPolicy;
  deviceSet = self->_deviceSet;
  deviceTypes = self->_deviceTypes;
  clientIdentifier = self->_clientIdentifier;
  mustWake = self->_mustWake;
  if (informativeCallback)
  {
    HIDWORD(v16) = self->_qualityOfService;
    LOBYTE(v16) = self->_mustWake;
    v13 = [v5 initWithIdentifier:identifier contextualPredicate:predicate dismissalPolicy:dismissalPolicy deviceSet:deviceSet deviceTypes:deviceTypes clientIdentifier:clientIdentifier mustWake:v16 qualityOfService:self->_informativeCallback informativeCallback:?];
  }

  else
  {
    LOBYTE(v16) = self->_mustWake;
    v13 = [v5 initWithIdentifier:identifier contextualPredicate:predicate dismissalPolicy:dismissalPolicy deviceSet:deviceSet deviceTypes:deviceTypes clientIdentifier:clientIdentifier mustWake:v16 callback:self->_callback];
  }

  v14 = v13;
  [v13 setLocationManagerEffectiveBundleID:self->_locationManagerEffectiveBundleID];
  [v14 setLocationManagerEffectiveBundlePath:self->_locationManagerEffectiveBundlePath];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_predicate forKey:@"predicate"];
  dismissalPolicy = self->_dismissalPolicy;
  if (dismissalPolicy)
  {
    [coderCopy encodeObject:dismissalPolicy forKey:@"dismissal"];
  }

  [coderCopy encodeInteger:self->_deviceSet forKey:@"deviceSet"];
  [coderCopy encodeInteger:self->_deviceTypes forKey:@"deviceTypes"];
  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [coderCopy encodeObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  if (self->_mustWake)
  {
    [coderCopy encodeBool:1 forKey:@"mustWake"];
  }

  [coderCopy encodeInteger:self->_qualityOfService forKey:@"qualityOfService"];
  [coderCopy encodeObject:self->_locationManagerEffectiveBundleID forKey:@"locationManagerEffectiveBundleID"];
  [coderCopy encodeObject:self->_locationManagerEffectiveBundlePath forKey:@"locationManagerEffectiveBundlePath"];
}

- (_CDContextualChangeRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ([coderCopy containsValueForKey:@"dismissal"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dismissal"];
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [coderCopy decodeIntegerForKey:@"deviceSet"];
    v12 = [coderCopy decodeIntegerForKey:@"deviceTypes"];
    if (v11 <= 1)
    {
      v13 = v12;
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
      v19 = [coderCopy containsValueForKey:@"mustWake"];
      if ([coderCopy containsValueForKey:@"qualityOfService"])
      {
        v14 = [coderCopy decodeIntegerForKey:@"qualityOfService"];
      }

      else
      {
        v14 = 9;
      }

      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationManagerEffectiveBundleID"];
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationManagerEffectiveBundlePath"];
      HIDWORD(v18) = v14;
      LOBYTE(v18) = v19;
      v9 = [objc_alloc(objc_opt_class()) initWithIdentifier:v5 contextualPredicate:v7 dismissalPolicy:v10 deviceSet:v11 deviceTypes:v13 clientIdentifier:v20 mustWake:v18 qualityOfService:0 informativeCallback:?];
      [(_CDContextualChangeRegistration *)v9 setLocationManagerEffectiveBundleID:v15];
      [(_CDContextualChangeRegistration *)v9 setLocationManagerEffectiveBundlePath:v16];

      goto LABEL_17;
    }

LABEL_14:
    v9 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(_CDContextualChangeRegistration *)equalCopy identifier];
      v7 = [(NSString *)identifier isEqual:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  if (self->_deviceSet)
  {
    v3 = @"ANY DEVICE";
  }

  else
  {
    v3 = @"LOCAL ONLY";
  }

  v4 = v3;
  v5 = &stru_1F1D12BE0;
  if (self->_callback)
  {
    v6 = @" LEGACY";
  }

  else
  {
    v6 = &stru_1F1D12BE0;
  }

  v7 = v6;
  if (self->_clientIdentifier)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@)", self->_clientIdentifier];
  }

  deviceTypes = self->_deviceTypes;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<_CDContextualChangeRegistration%@ %p [%@]%@ (%@ / %X): %@>", v7, self, self->_identifier, v5, v4, deviceTypes, self->_predicate];

  return v9;
}

@end