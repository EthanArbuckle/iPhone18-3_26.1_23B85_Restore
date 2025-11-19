@interface _CDContextualChangeRegistration
+ (id)localNonWakingRegistrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 callback:(id)a5;
+ (id)localNonWakingRegistrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 clientIdentifier:(id)a5 callback:(id)a6;
+ (id)localWakingRegistrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 callback:(id)a5;
+ (id)localWakingRegistrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 clientIdentifier:(id)a5 callback:(id)a6;
+ (id)registrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 deviceTypes:(unint64_t)a5 clientIdentifier:(id)a6 mustWake:(BOOL)a7 qualityOfService:(unsigned int)a8 callback:(id)a9;
+ (id)registrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 dismissalPolicy:(id)a5 deviceSet:(unint64_t)a6 clientIdentifier:(id)a7 mustWake:(BOOL)a8 qualityOfService:(unsigned int)a9 callback:(id)a10;
+ (id)registrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 dismissalPolicy:(id)a5 deviceSet:(unint64_t)a6 mustWake:(BOOL)a7 callback:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMultiDeviceRegistration;
- (_CDContextualChangeRegistration)initWithCoder:(id)a3;
- (_CDContextualChangeRegistration)initWithIdentifier:(id)a3 contextualPredicate:(id)a4 dismissalPolicy:(id)a5 deviceSet:(unint64_t)a6 deviceTypes:(unint64_t)a7 clientIdentifier:(id)a8 mustWake:(BOOL)a9 callback:(id)a10;
- (_CDContextualChangeRegistration)initWithIdentifier:(id)a3 contextualPredicate:(id)a4 dismissalPolicy:(id)a5 deviceSet:(unint64_t)a6 deviceTypes:(unint64_t)a7 clientIdentifier:(id)a8 mustWake:(BOOL)a9 qualityOfService:(unsigned int)a10 informativeCallback:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDContextualChangeRegistration

- (BOOL)isMultiDeviceRegistration
{
  predicate = self->_predicate;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (_CDContextualChangeRegistration)initWithIdentifier:(id)a3 contextualPredicate:(id)a4 dismissalPolicy:(id)a5 deviceSet:(unint64_t)a6 deviceTypes:(unint64_t)a7 clientIdentifier:(id)a8 mustWake:(BOOL)a9 callback:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a10;
  v27.receiver = self;
  v27.super_class = _CDContextualChangeRegistration;
  v20 = [(_CDContextualChangeRegistration *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, a3);
    objc_storeStrong(&v21->_predicate, a4);
    objc_storeStrong(&v21->_dismissalPolicy, a5);
    v21->_deviceSet = a6;
    v21->_deviceTypes = a7;
    objc_storeStrong(&v21->_clientIdentifier, a8);
    v21->_mustWake = a9;
    v21->_qualityOfService = 9;
    v22 = MEMORY[0x1AC5886D0](v19);
    callback = v21->_callback;
    v21->_callback = v22;

    v21->_isDeserialized = v19 != 0;
  }

  return v21;
}

- (_CDContextualChangeRegistration)initWithIdentifier:(id)a3 contextualPredicate:(id)a4 dismissalPolicy:(id)a5 deviceSet:(unint64_t)a6 deviceTypes:(unint64_t)a7 clientIdentifier:(id)a8 mustWake:(BOOL)a9 qualityOfService:(unsigned int)a10 informativeCallback:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v27 = a8;
  v20 = a11;
  v28.receiver = self;
  v28.super_class = _CDContextualChangeRegistration;
  v21 = [(_CDContextualChangeRegistration *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, a3);
    objc_storeStrong(&v22->_predicate, a4);
    objc_storeStrong(&v22->_dismissalPolicy, a5);
    v22->_deviceSet = a6;
    v22->_deviceTypes = a7;
    objc_storeStrong(&v22->_clientIdentifier, a8);
    v22->_mustWake = a9;
    v22->_qualityOfService = a10;
    v23 = MEMORY[0x1AC5886D0](v20);
    informativeCallback = v22->_informativeCallback;
    v22->_informativeCallback = v23;

    v22->_isDeserialized = v20 != 0;
  }

  return v22;
}

+ (id)registrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 dismissalPolicy:(id)a5 deviceSet:(unint64_t)a6 mustWake:(BOOL)a7 callback:(id)a8
{
  if (a6 == 1)
  {
    v14 = 0xFFFFLL;
  }

  else
  {
    v14 = 0;
  }

  v15 = a8;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  LOBYTE(v21) = a7;
  v19 = [[a1 alloc] initWithIdentifier:v18 contextualPredicate:v17 dismissalPolicy:v16 deviceSet:a6 deviceTypes:v14 clientIdentifier:0 mustWake:v21 callback:v15];

  return v19;
}

+ (id)registrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 dismissalPolicy:(id)a5 deviceSet:(unint64_t)a6 clientIdentifier:(id)a7 mustWake:(BOOL)a8 qualityOfService:(unsigned int)a9 callback:(id)a10
{
  if (a6 == 1)
  {
    v17 = 0xFFFFLL;
  }

  else
  {
    v17 = 0;
  }

  v18 = a10;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  HIDWORD(v25) = a9;
  LOBYTE(v25) = a8;
  v23 = [[a1 alloc] initWithIdentifier:v22 contextualPredicate:v21 dismissalPolicy:v20 deviceSet:a6 deviceTypes:v17 clientIdentifier:v19 mustWake:v25 qualityOfService:v18 informativeCallback:?];

  return v23;
}

+ (id)registrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 deviceTypes:(unint64_t)a5 clientIdentifier:(id)a6 mustWake:(BOOL)a7 qualityOfService:(unsigned int)a8 callback:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a9;
  if (a5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      HIDWORD(v20) = a8;
      LOBYTE(v20) = a7;
      a5 = [[a1 alloc] initWithIdentifier:v15 contextualPredicate:v16 dismissalPolicy:0 deviceSet:1 deviceTypes:a5 clientIdentifier:v17 mustWake:v20 qualityOfService:v18 informativeCallback:?];
    }

    else
    {
      a5 = 0;
    }
  }

  return a5;
}

+ (id)localWakingRegistrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 callback:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  LOBYTE(v13) = 1;
  v11 = [[a1 alloc] initWithIdentifier:v10 contextualPredicate:v9 dismissalPolicy:0 deviceSet:0 deviceTypes:0 clientIdentifier:0 mustWake:v13 callback:v8];

  return v11;
}

+ (id)localWakingRegistrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 clientIdentifier:(id)a5 callback:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  HIDWORD(v16) = 9;
  LOBYTE(v16) = 1;
  v14 = [[a1 alloc] initWithIdentifier:v13 contextualPredicate:v12 dismissalPolicy:0 deviceSet:0 deviceTypes:0 clientIdentifier:v11 mustWake:v16 qualityOfService:v10 informativeCallback:?];

  return v14;
}

+ (id)localNonWakingRegistrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 callback:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  LOBYTE(v13) = 0;
  v11 = [[a1 alloc] initWithIdentifier:v10 contextualPredicate:v9 dismissalPolicy:0 deviceSet:0 deviceTypes:0 clientIdentifier:0 mustWake:v13 callback:v8];

  return v11;
}

+ (id)localNonWakingRegistrationWithIdentifier:(id)a3 contextualPredicate:(id)a4 clientIdentifier:(id)a5 callback:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  HIDWORD(v16) = 9;
  LOBYTE(v16) = 0;
  v14 = [[a1 alloc] initWithIdentifier:v13 contextualPredicate:v12 dismissalPolicy:0 deviceSet:0 deviceTypes:0 clientIdentifier:v11 mustWake:v16 qualityOfService:v10 informativeCallback:?];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  informativeCallback = self->_informativeCallback;
  v5 = [objc_opt_class() allocWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  [v6 encodeObject:self->_predicate forKey:@"predicate"];
  dismissalPolicy = self->_dismissalPolicy;
  if (dismissalPolicy)
  {
    [v6 encodeObject:dismissalPolicy forKey:@"dismissal"];
  }

  [v6 encodeInteger:self->_deviceSet forKey:@"deviceSet"];
  [v6 encodeInteger:self->_deviceTypes forKey:@"deviceTypes"];
  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v6 encodeObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  if (self->_mustWake)
  {
    [v6 encodeBool:1 forKey:@"mustWake"];
  }

  [v6 encodeInteger:self->_qualityOfService forKey:@"qualityOfService"];
  [v6 encodeObject:self->_locationManagerEffectiveBundleID forKey:@"locationManagerEffectiveBundleID"];
  [v6 encodeObject:self->_locationManagerEffectiveBundlePath forKey:@"locationManagerEffectiveBundlePath"];
}

- (_CDContextualChangeRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
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
    if ([v4 containsValueForKey:@"dismissal"])
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dismissal"];
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [v4 decodeIntegerForKey:@"deviceSet"];
    v12 = [v4 decodeIntegerForKey:@"deviceTypes"];
    if (v11 <= 1)
    {
      v13 = v12;
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
      v19 = [v4 containsValueForKey:@"mustWake"];
      if ([v4 containsValueForKey:@"qualityOfService"])
      {
        v14 = [v4 decodeIntegerForKey:@"qualityOfService"];
      }

      else
      {
        v14 = 9;
      }

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationManagerEffectiveBundleID"];
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationManagerEffectiveBundlePath"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = [(_CDContextualChangeRegistration *)v4 identifier];
      v7 = [(NSString *)identifier isEqual:v6];
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