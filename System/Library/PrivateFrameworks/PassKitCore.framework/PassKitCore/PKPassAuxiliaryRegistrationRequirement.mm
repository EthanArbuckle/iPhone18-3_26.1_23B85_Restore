@interface PKPassAuxiliaryRegistrationRequirement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassAuxiliaryRegistrationRequirement:(id)requirement;
- (PKPassAuxiliaryRegistrationRequirement)initWithCoder:(id)coder;
- (PKPassAuxiliaryRegistrationRequirement)initWithDictionary:(id)dictionary;
- (id)_initWithIdentifier:(id)identifier numberOfKeys:(id)keys canLocallyInvalidateRegistrationState:(id)state canLocallyValidateRegistrationState:(id)registrationState;
- (id)_mutableDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_copyInto:(id)into;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryRegistrationRequirement

- (PKPassAuxiliaryRegistrationRequirement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"identifier"];
  v6 = [dictionaryCopy PKNumberForKey:@"numberOfKeys"];
  v7 = [dictionaryCopy PKNumberForKey:@"canLocallyInvalidRegistrationState"];
  v8 = [dictionaryCopy PKNumberForKey:@"canLocallyValidateRegistrationState"];
  if (dictionaryCopy)
  {
    v9 = [(PKPassAuxiliaryRegistrationRequirement *)self _initWithIdentifier:v5 numberOfKeys:v6 canLocallyInvalidateRegistrationState:v7 canLocallyValidateRegistrationState:v8];
    if (v9)
    {
      v10 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedVersions"];
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

- (id)_initWithIdentifier:(id)identifier numberOfKeys:(id)keys canLocallyInvalidateRegistrationState:(id)state canLocallyValidateRegistrationState:(id)registrationState
{
  identifierCopy = identifier;
  keysCopy = keys;
  stateCopy = state;
  registrationStateCopy = registrationState;
  v21.receiver = self;
  v21.super_class = PKPassAuxiliaryRegistrationRequirement;
  v15 = [(PKPassAuxiliaryRegistrationRequirement *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    if (keysCopy)
    {
      v17 = keysCopy;
    }

    else
    {
      v17 = &unk_1F23B4B98;
    }

    v16->_numberOfKeys = [v17 integerValue];
    if (stateCopy)
    {
      v18 = stateCopy;
    }

    else
    {
      v18 = MEMORY[0x1E695E118];
    }

    v16->_canLocallyInvalidateRegistrationState = [v18 BOOLValue];
    if (registrationStateCopy)
    {
      v19 = registrationStateCopy;
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
  _mutableDictionaryRepresentation = [(PKPassAuxiliaryRegistrationRequirement *)self _mutableDictionaryRepresentation];
  v3 = [_mutableDictionaryRepresentation copy];

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
  dictionaryRepresentation = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self->_keyCreationMetadata dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"metadata"];

  return v3;
}

- (PKPassAuxiliaryRegistrationRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PKPassAuxiliaryRegistrationRequirement;
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_registrationBackoffCounter = [coderCopy decodeIntegerForKey:@"registrationBackoffCounter"];
    v5->_numberOfKeys = [coderCopy decodeIntegerForKey:@"numberOfKeys"];
    v5->_canLocallyInvalidateRegistrationState = [coderCopy decodeBoolForKey:@"canLocallyInvalidateRegistrationState"];
    v5->_canLocallyValidateRegistrationState = [coderCopy decodeBoolForKey:@"canLocallyValidateRegistrationState"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"supportedVersions"];
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
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"keyCreationMetadata"];
    keyCreationMetadata = v5->_keyCreationMetadata;
    v5->_keyCreationMetadata = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_registrationBackoffCounter forKey:@"registrationBackoffCounter"];
  [coderCopy encodeInteger:self->_numberOfKeys forKey:@"numberOfKeys"];
  [coderCopy encodeBool:self->_canLocallyInvalidateRegistrationState forKey:@"canLocallyInvalidateRegistrationState"];
  [coderCopy encodeBool:self->_canLocallyValidateRegistrationState forKey:@"canLocallyValidateRegistrationState"];
  [coderCopy encodeObject:self->_supportedVersions forKey:@"supportedVersions"];
  [coderCopy encodeObject:self->_keyCreationMetadata forKey:@"keyCreationMetadata"];
}

- (void)_decorateDescription:(id)description
{
  descriptionCopy = description;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPassAuxiliaryRegistrationRequirement role](self, "role")}];
  [descriptionCopy appendFormat:@"role: '%@'; ", v4];

  [descriptionCopy appendFormat:@"identifier: '%@'; ", self->_identifier];
  [descriptionCopy appendFormat:@"backoff: '%lu'; ", self->_registrationBackoffCounter];
  [descriptionCopy appendFormat:@"numberOfKeys: '%ld'; ", self->_numberOfKeys];
  if (self->_canLocallyInvalidateRegistrationState)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [descriptionCopy appendFormat:@"canLocallyInvalidate: '%@'; ", v5];
  if (self->_canLocallyValidateRegistrationState)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [descriptionCopy appendFormat:@"canLocallyValidate: '%@'; ", v6];
  [descriptionCopy appendFormat:@"supportedVersions: '%@'; ", self->_supportedVersions];
  if (self->_keyCreationMetadata)
  {
    [descriptionCopy appendFormat:@"metadata: '%@'; ", self->_keyCreationMetadata];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_supportedVersions];
  v4 = PKCombinedHash(17, array);
  role = [(PKPassAuxiliaryRegistrationRequirement *)self role];
  v6 = self->_registrationBackoffCounter - (role - v4 + 32 * v4) + 32 * (role - v4 + 32 * v4);
  v7 = self->_numberOfKeys - v6 + 32 * v6;
  v8 = self->_canLocallyInvalidateRegistrationState - v7 + 32 * v7;
  v9 = self->_canLocallyValidateRegistrationState - v8 + 32 * v8;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassAuxiliaryRegistrationRequirement *)self isEqualToPassAuxiliaryRegistrationRequirement:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassAuxiliaryRegistrationRequirement:(id)requirement
{
  requirementCopy = requirement;
  if (!requirementCopy)
  {
    goto LABEL_17;
  }

  role = [(PKPassAuxiliaryRegistrationRequirement *)self role];
  if (role != [requirementCopy role] || self->_registrationBackoffCounter != requirementCopy[5])
  {
    goto LABEL_17;
  }

  v6 = requirementCopy[2];
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

  if (self->_numberOfKeys != requirementCopy[3] || self->_canLocallyInvalidateRegistrationState != *(requirementCopy + 8) || self->_canLocallyValidateRegistrationState != *(requirementCopy + 9))
  {
    goto LABEL_17;
  }

  supportedVersions = self->_supportedVersions;
  v12 = requirementCopy[4];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKPassAuxiliaryRegistrationRequirement);
  [(PKPassAuxiliaryRegistrationRequirement *)self _copyInto:v4];
  return v4;
}

- (void)_copyInto:(id)into
{
  identifier = self->_identifier;
  intoCopy = into;
  v6 = [(NSString *)identifier copy];
  v7 = intoCopy[2];
  intoCopy[2] = v6;

  intoCopy[5] = self->_registrationBackoffCounter;
  intoCopy[3] = self->_numberOfKeys;
  *(intoCopy + 8) = self->_canLocallyInvalidateRegistrationState;
  *(intoCopy + 9) = self->_canLocallyValidateRegistrationState;
  v8 = [(NSArray *)self->_supportedVersions copy];
  v9 = intoCopy[4];
  intoCopy[4] = v8;

  v10 = [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self->_keyCreationMetadata copy];
  v11 = intoCopy[6];
  intoCopy[6] = v10;
}

@end