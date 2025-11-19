@interface PKPassAuxiliaryRegistrationRequirement
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassAuxiliaryRegistrationRequirement:(id)a3;
- (PKPassAuxiliaryRegistrationRequirement)initWithCoder:(id)a3;
- (PKPassAuxiliaryRegistrationRequirement)initWithDictionary:(id)a3;
- (id)_initWithIdentifier:(id)a3 numberOfKeys:(id)a4 canLocallyInvalidateRegistrationState:(id)a5 canLocallyValidateRegistrationState:(id)a6;
- (id)_mutableDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_copyInto:(id)a3;
- (void)_decorateDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryRegistrationRequirement

- (PKPassAuxiliaryRegistrationRequirement)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"identifier"];
  v6 = [v4 PKNumberForKey:@"numberOfKeys"];
  v7 = [v4 PKNumberForKey:@"canLocallyInvalidRegistrationState"];
  v8 = [v4 PKNumberForKey:@"canLocallyValidateRegistrationState"];
  if (v4)
  {
    v9 = [(PKPassAuxiliaryRegistrationRequirement *)self _initWithIdentifier:v5 numberOfKeys:v6 canLocallyInvalidateRegistrationState:v7 canLocallyValidateRegistrationState:v8];
    if (v9)
    {
      v10 = [v4 PKArrayContaining:objc_opt_class() forKey:@"supportedVersions"];
      self = *(v9 + 4);
      *(v9 + 4) = v10;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithIdentifier:(id)a3 numberOfKeys:(id)a4 canLocallyInvalidateRegistrationState:(id)a5 canLocallyValidateRegistrationState:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = PKPassAuxiliaryRegistrationRequirement;
  v15 = [(PKPassAuxiliaryRegistrationRequirement *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = &unk_1F23B4B98;
    }

    v16->_numberOfKeys = [v17 integerValue];
    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = MEMORY[0x1E695E118];
    }

    v16->_canLocallyInvalidateRegistrationState = [v18 BOOLValue];
    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = MEMORY[0x1E695E110];
    }

    v16->_canLocallyValidateRegistrationState = [v19 BOOLValue];
  }

  return v16;
}

- (id)dictionaryRepresentation
{
  v2 = [(PKPassAuxiliaryRegistrationRequirement *)self _mutableDictionaryRepresentation];
  v3 = [v2 copy];

  return v3;
}

- (id)_mutableDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfKeys];
  [v3 setObject:v4 forKeyedSubscript:@"numberOfKeys"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_canLocallyInvalidateRegistrationState];
  [v3 setObject:v5 forKeyedSubscript:@"canLocallyInvalidRegistrationState"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_canLocallyValidateRegistrationState];
  [v3 setObject:v6 forKeyedSubscript:@"canLocallyValidateRegistrationState"];

  [v3 setObject:self->_supportedVersions forKeyedSubscript:@"supportedVersions"];
  v7 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self->_keyCreationMetadata dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"metadata"];

  return v3;
}

- (PKPassAuxiliaryRegistrationRequirement)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKPassAuxiliaryRegistrationRequirement;
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_registrationBackoffCounter = [v4 decodeIntegerForKey:@"registrationBackoffCounter"];
    v5->_numberOfKeys = [v4 decodeIntegerForKey:@"numberOfKeys"];
    v5->_canLocallyInvalidateRegistrationState = [v4 decodeBoolForKey:@"canLocallyInvalidateRegistrationState"];
    v5->_canLocallyValidateRegistrationState = [v4 decodeBoolForKey:@"canLocallyValidateRegistrationState"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"supportedVersions"];
    supportedVersions = v5->_supportedVersions;
    v5->_supportedVersions = v11;

    v25 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v25 initWithObjects:{v13, v14, v15, v16, v17, v18, v19, v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"keyCreationMetadata"];
    keyCreationMetadata = v5->_keyCreationMetadata;
    v5->_keyCreationMetadata = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_registrationBackoffCounter forKey:@"registrationBackoffCounter"];
  [v5 encodeInteger:self->_numberOfKeys forKey:@"numberOfKeys"];
  [v5 encodeBool:self->_canLocallyInvalidateRegistrationState forKey:@"canLocallyInvalidateRegistrationState"];
  [v5 encodeBool:self->_canLocallyValidateRegistrationState forKey:@"canLocallyValidateRegistrationState"];
  [v5 encodeObject:self->_supportedVersions forKey:@"supportedVersions"];
  [v5 encodeObject:self->_keyCreationMetadata forKey:@"keyCreationMetadata"];
}

- (void)_decorateDescription:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPassAuxiliaryRegistrationRequirement role](self, "role")}];
  [v7 appendFormat:@"role: '%@'; ", v4];

  [v7 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v7 appendFormat:@"backoff: '%lu'; ", self->_registrationBackoffCounter];
  [v7 appendFormat:@"numberOfKeys: '%ld'; ", self->_numberOfKeys];
  if (self->_canLocallyInvalidateRegistrationState)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v7 appendFormat:@"canLocallyInvalidate: '%@'; ", v5];
  if (self->_canLocallyValidateRegistrationState)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v7 appendFormat:@"canLocallyValidate: '%@'; ", v6];
  [v7 appendFormat:@"supportedVersions: '%@'; ", self->_supportedVersions];
  if (self->_keyCreationMetadata)
  {
    [v7 appendFormat:@"metadata: '%@'; ", self->_keyCreationMetadata];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [(PKPassAuxiliaryRegistrationRequirement *)self _decorateDescription:v6];
  [v6 appendString:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_supportedVersions];
  v4 = PKCombinedHash(17, v3);
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)self role];
  v6 = self->_registrationBackoffCounter - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  v7 = self->_numberOfKeys - v6 + 32 * v6;
  v8 = self->_canLocallyInvalidateRegistrationState - v7 + 32 * v7;
  v9 = self->_canLocallyValidateRegistrationState - v8 + 32 * v8;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassAuxiliaryRegistrationRequirement *)self isEqualToPassAuxiliaryRegistrationRequirement:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassAuxiliaryRegistrationRequirement:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = [(PKPassAuxiliaryRegistrationRequirement *)self role];
  if (v5 != [v4 role] || self->_registrationBackoffCounter != v4[5])
  {
    goto LABEL_17;
  }

  v6 = v4[2];
  v7 = self->_identifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (self->_numberOfKeys != v4[3] || self->_canLocallyInvalidateRegistrationState != *(v4 + 8) || self->_canLocallyValidateRegistrationState != *(v4 + 9))
  {
    goto LABEL_17;
  }

  supportedVersions = self->_supportedVersions;
  v12 = v4[4];
  if (supportedVersions && v12)
  {
    v13 = [(NSArray *)supportedVersions isEqual:?];
  }

  else
  {
    v13 = supportedVersions == v12;
  }

LABEL_18:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKPassAuxiliaryRegistrationRequirement);
  [(PKPassAuxiliaryRegistrationRequirement *)self _copyInto:v4];
  return v4;
}

- (void)_copyInto:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  v6 = [(NSString *)identifier copy];
  v7 = v5[2];
  v5[2] = v6;

  v5[5] = self->_registrationBackoffCounter;
  v5[3] = self->_numberOfKeys;
  *(v5 + 8) = self->_canLocallyInvalidateRegistrationState;
  *(v5 + 9) = self->_canLocallyValidateRegistrationState;
  v8 = [(NSArray *)self->_supportedVersions copy];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self->_keyCreationMetadata copy];
  v11 = v5[6];
  v5[6] = v10;
}

@end