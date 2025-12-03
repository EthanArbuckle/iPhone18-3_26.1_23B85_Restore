@interface PKPassAuxiliaryRegistrationDecryptionRequirement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassAuxiliaryRegistrationDecryptionRequirement:(id)requirement;
- (PKPassAuxiliaryRegistrationDecryptionRequirement)initWithCoder:(id)coder;
- (PKPassAuxiliaryRegistrationDecryptionRequirement)initWithDictionary:(id)dictionary;
- (id)_mutableDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryRegistrationDecryptionRequirement

- (PKPassAuxiliaryRegistrationDecryptionRequirement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKPassAuxiliaryRegistrationDecryptionRequirement;
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)&v18 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v5->_type = PKDeviceDecryptionTypeFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"usage"];
    v5->_usage = PKDeviceDecryptionUsageFromString(v7);

    v8 = [dictionaryCopy PKStringForKey:@"version"];
    v5->_decryptionSchemeVersion = PKDecryptionSchemeVersionFromString(v8);

    v9 = [dictionaryCopy PKStringForKey:@"groupingIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v9;

    v11 = [dictionaryCopy PKStringForKey:@"source"];
    if (v11 == @"applePayTrust" || (v12 = v11) != 0 && (v13 = [(__CFString *)v11 isEqualToString:@"applePayTrust"], v12, v12, v13))
    {
      v5->_type = 4;
    }

    else if (v5->_type == 3)
    {
      identifier = [(PKPassAuxiliaryRegistrationRequirement *)v5 identifier];

      if (!identifier)
      {
        [(PKPassAuxiliaryRegistrationRequirement *)v5 setIdentifier:@"deviceDecryption"];
      }
    }

    v15 = [dictionaryCopy PKDictionaryForKey:@"metadata"];
    if (v15)
    {
      v16 = [PKPassAuxiliaryCapabilityKeyCreationMetadata createMetadataFromDictionary:v15 forDecryptionCapabilityType:v5->_type];
      if (v16)
      {
        [(PKPassAuxiliaryRegistrationRequirement *)v5 setKeyCreationMetadata:v16];
      }
    }
  }

  return v5;
}

- (id)_mutableDictionaryRepresentation
{
  v13.receiver = self;
  v13.super_class = PKPassAuxiliaryRegistrationDecryptionRequirement;
  _mutableDictionaryRepresentation = [(PKPassAuxiliaryRegistrationRequirement *)&v13 _mutableDictionaryRepresentation];
  v4 = _mutableDictionaryRepresentation;
  v5 = self->_type - 1;
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79CBB68[v5];
  }

  [_mutableDictionaryRepresentation setObject:v6 forKeyedSubscript:@"type"];
  if (self->_usage == 1)
  {
    v7 = @"isoContainer";
  }

  else
  {
    v7 = 0;
  }

  [v4 setObject:v7 forKeyedSubscript:@"usage"];
  decryptionSchemeVersion = self->_decryptionSchemeVersion;
  v9 = @"EC_v3";
  if (decryptionSchemeVersion != 1)
  {
    v9 = 0;
  }

  if (decryptionSchemeVersion == 2)
  {
    v10 = @"hpke";
  }

  else
  {
    v10 = v9;
  }

  [v4 setObject:v10 forKeyedSubscript:@"version"];
  v11 = [(NSString *)self->_groupIdentifier copy];
  [v4 setObject:v11 forKeyedSubscript:@"groupingIdentifier"];

  return v4;
}

- (PKPassAuxiliaryRegistrationDecryptionRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPassAuxiliaryRegistrationDecryptionRequirement;
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usage"];
    v5->_usage = [v7 unsignedIntegerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"decryptionSchemeVersion"];
    v5->_decryptionSchemeVersion = [v8 unsignedIntegerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = PKPassAuxiliaryRegistrationDecryptionRequirement;
  coderCopy = coder;
  [(PKPassAuxiliaryRegistrationRequirement *)&v8 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_type, v8.receiver, v8.super_class}];
  [coderCopy encodeObject:v5 forKey:@"type"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_usage];
  [coderCopy encodeObject:v6 forKey:@"usage"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_decryptionSchemeVersion];
  [coderCopy encodeObject:v7 forKey:@"decryptionSchemeVersion"];

  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
}

- (void)_decorateDescription:(id)description
{
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = PKPassAuxiliaryRegistrationDecryptionRequirement;
  [(PKPassAuxiliaryRegistrationRequirement *)&v11 _decorateDescription:descriptionCopy];
  v5 = self->_type - 1;
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79CBB68[v5];
  }

  [descriptionCopy appendFormat:@"type: '%@'; ", v6];
  if (self->_usage == 1)
  {
    v7 = @"isoContainer";
  }

  else
  {
    v7 = 0;
  }

  [descriptionCopy appendFormat:@"usage: '%@'; ", v7];
  decryptionSchemeVersion = self->_decryptionSchemeVersion;
  if (decryptionSchemeVersion)
  {
    v9 = @"EC_v3";
    if (decryptionSchemeVersion != 1)
    {
      v9 = 0;
    }

    if (decryptionSchemeVersion == 2)
    {
      v10 = @"hpke";
    }

    else
    {
      v10 = v9;
    }

    [descriptionCopy appendFormat:@"decryptionSchemeVersion: '%@'; ", v10];
  }

  [descriptionCopy appendFormat:@"groupIdentifier: '%@'; ", self->_groupIdentifier];
  [descriptionCopy appendFormat:@"backoff: '%lu'; ", -[PKPassAuxiliaryRegistrationRequirement registrationBackoffCounter](self, "registrationBackoffCounter")];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_usage - v5 + 32 * v5;
  v7 = self->_decryptionSchemeVersion - v6 + 32 * v6;

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassAuxiliaryRegistrationDecryptionRequirement *)self isEqualToPassAuxiliaryRegistrationDecryptionRequirement:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassAuxiliaryRegistrationDecryptionRequirement:(id)requirement
{
  requirementCopy = requirement;
  v5 = requirementCopy && self->_type == requirementCopy[7] && self->_usage == requirementCopy[8] && self->_decryptionSchemeVersion == requirementCopy[9] && self->_groupIdentifier && requirementCopy[10] != 0;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKPassAuxiliaryRegistrationDecryptionRequirement);
  [(PKPassAuxiliaryRegistrationRequirement *)self _copyInto:v4];
  v4->_type = self->_type;
  v4->_usage = self->_usage;
  v4->_decryptionSchemeVersion = self->_decryptionSchemeVersion;
  v5 = [(NSString *)self->_groupIdentifier copy];
  groupIdentifier = v4->_groupIdentifier;
  v4->_groupIdentifier = v5;

  return v4;
}

@end