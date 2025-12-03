@interface PKPassAuxiliaryRegistrationSignatureRequirement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassAuxiliaryRegistrationSignatureRequirement:(id)requirement;
- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithCoder:(id)coder;
- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithDictionary:(id)dictionary;
- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithType:(unint64_t)type;
- (id)_mutableDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryRegistrationSignatureRequirement

- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)&v15 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [dictionaryCopy PKStringForKey:@"type"];
  v5->_type = PKDeviceSignatureTypeFromString(v6);

  v7 = [dictionaryCopy PKStringForKey:@"version"];
  v5->_signatureSchemeVersion = PKSignatureSchemeVersionFromString(v7);

  v8 = [dictionaryCopy PKStringForKey:@"source"];
  if (v8 == @"applePayTrust" || (v9 = v8) != 0 && (v10 = [(__CFString *)v8 isEqualToString:@"applePayTrust"], v9, v9, v10))
  {
    v5->_type = 4;
    goto LABEL_7;
  }

  if (v5->_type == 4)
  {
LABEL_7:
    identifier = [(PKPassAuxiliaryRegistrationRequirement *)v5 identifier];

    if (!identifier)
    {
      [(PKPassAuxiliaryRegistrationRequirement *)v5 setIdentifier:@"deviceSignature"];
    }
  }

  v12 = [dictionaryCopy PKDictionaryForKey:@"metadata"];
  if (v12)
  {
    v13 = [PKPassAuxiliaryCapabilityKeyCreationMetadata createMetadataFromDictionary:v12 forSignatureCapabilityType:v5->_type];
    if (v13)
    {
      [(PKPassAuxiliaryRegistrationRequirement *)v5 setKeyCreationMetadata:v13];
    }
  }

LABEL_14:
  return v5;
}

- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithType:(unint64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  uUIDString = [v5 UUIDString];
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  v7 = [(PKPassAuxiliaryRegistrationRequirement *)&v9 _initWithIdentifier:uUIDString numberOfKeys:0 canLocallyInvalidateRegistrationState:0 canLocallyValidateRegistrationState:0];

  if (v7)
  {
    v7->_type = type;
  }

  return v7;
}

- (id)_mutableDictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  _mutableDictionaryRepresentation = [(PKPassAuxiliaryRegistrationRequirement *)&v7 _mutableDictionaryRepresentation];
  v4 = PKDeviceSignatureTypeToString(self->_type);
  [_mutableDictionaryRepresentation setObject:v4 forKeyedSubscript:@"type"];

  if (self->_signatureSchemeVersion == 1)
  {
    v5 = @"ECDSA";
  }

  else
  {
    v5 = 0;
  }

  [_mutableDictionaryRepresentation setObject:v5 forKeyedSubscript:@"version"];

  return _mutableDictionaryRepresentation;
}

- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signatureSchemeVersion"];
    v5->_signatureSchemeVersion = [v7 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  coderCopy = coder;
  [(PKPassAuxiliaryRegistrationRequirement *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_type, v7.receiver, v7.super_class}];
  [coderCopy encodeObject:v5 forKey:@"type"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_signatureSchemeVersion];
  [coderCopy encodeObject:v6 forKey:@"signatureSchemeVersion"];
}

- (void)_decorateDescription:(id)description
{
  descriptionCopy = description;
  v8.receiver = self;
  v8.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  [(PKPassAuxiliaryRegistrationRequirement *)&v8 _decorateDescription:descriptionCopy];
  v5 = PKDeviceSignatureTypeToString(self->_type);
  [descriptionCopy appendFormat:@"type: '%@'; ", v5];

  signatureSchemeVersion = self->_signatureSchemeVersion;
  if (signatureSchemeVersion)
  {
    if (signatureSchemeVersion == 1)
    {
      v7 = @"ECDSA";
    }

    else
    {
      v7 = 0;
    }

    [descriptionCopy appendFormat:@"signatureSchemeVersion: '%@'; ", v7];
  }

  [descriptionCopy appendFormat:@"backoff: '%lu'; ", -[PKPassAuxiliaryRegistrationRequirement registrationBackoffCounter](self, "registrationBackoffCounter")];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_signatureSchemeVersion - v5 + 32 * v5;

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassAuxiliaryRegistrationSignatureRequirement *)self isEqualToPassAuxiliaryRegistrationSignatureRequirement:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassAuxiliaryRegistrationSignatureRequirement:(id)requirement
{
  requirementCopy = requirement;
  v5 = requirementCopy && self->_type == requirementCopy[7] && self->_signatureSchemeVersion == requirementCopy[8];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKPassAuxiliaryRegistrationSignatureRequirement);
  [(PKPassAuxiliaryRegistrationRequirement *)self _copyInto:v4];
  v4->_type = self->_type;
  v4->_signatureSchemeVersion = self->_signatureSchemeVersion;
  return v4;
}

@end