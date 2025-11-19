@interface PKPassAuxiliaryRegistrationSignatureRequirement
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassAuxiliaryRegistrationSignatureRequirement:(id)a3;
- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithCoder:(id)a3;
- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithDictionary:(id)a3;
- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithType:(unint64_t)a3;
- (id)_mutableDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_decorateDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryRegistrationSignatureRequirement

- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)&v15 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [v4 PKStringForKey:@"type"];
  v5->_type = PKDeviceSignatureTypeFromString(v6);

  v7 = [v4 PKStringForKey:@"version"];
  v5->_signatureSchemeVersion = PKSignatureSchemeVersionFromString(v7);

  v8 = [v4 PKStringForKey:@"source"];
  if (v8 == @"applePayTrust" || (v9 = v8) != 0 && (v10 = [(__CFString *)v8 isEqualToString:@"applePayTrust"], v9, v9, v10))
  {
    v5->_type = 4;
    goto LABEL_7;
  }

  if (v5->_type == 4)
  {
LABEL_7:
    v11 = [(PKPassAuxiliaryRegistrationRequirement *)v5 identifier];

    if (!v11)
    {
      [(PKPassAuxiliaryRegistrationRequirement *)v5 setIdentifier:@"deviceSignature"];
    }
  }

  v12 = [v4 PKDictionaryForKey:@"metadata"];
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

- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithType:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v6 = [v5 UUIDString];
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  v7 = [(PKPassAuxiliaryRegistrationRequirement *)&v9 _initWithIdentifier:v6 numberOfKeys:0 canLocallyInvalidateRegistrationState:0 canLocallyValidateRegistrationState:0];

  if (v7)
  {
    v7->_type = a3;
  }

  return v7;
}

- (id)_mutableDictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  v3 = [(PKPassAuxiliaryRegistrationRequirement *)&v7 _mutableDictionaryRepresentation];
  v4 = PKDeviceSignatureTypeToString(self->_type);
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  if (self->_signatureSchemeVersion == 1)
  {
    v5 = @"ECDSA";
  }

  else
  {
    v5 = 0;
  }

  [v3 setObject:v5 forKeyedSubscript:@"version"];

  return v3;
}

- (PKPassAuxiliaryRegistrationSignatureRequirement)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  v5 = [(PKPassAuxiliaryRegistrationRequirement *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signatureSchemeVersion"];
    v5->_signatureSchemeVersion = [v7 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  v4 = a3;
  [(PKPassAuxiliaryRegistrationRequirement *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_type, v7.receiver, v7.super_class}];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_signatureSchemeVersion];
  [v4 encodeObject:v6 forKey:@"signatureSchemeVersion"];
}

- (void)_decorateDescription:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPassAuxiliaryRegistrationSignatureRequirement;
  [(PKPassAuxiliaryRegistrationRequirement *)&v8 _decorateDescription:v4];
  v5 = PKDeviceSignatureTypeToString(self->_type);
  [v4 appendFormat:@"type: '%@'; ", v5];

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

    [v4 appendFormat:@"signatureSchemeVersion: '%@'; ", v7];
  }

  [v4 appendFormat:@"backoff: '%lu'; ", -[PKPassAuxiliaryRegistrationRequirement registrationBackoffCounter](self, "registrationBackoffCounter")];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_signatureSchemeVersion - v5 + 32 * v5;

  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassAuxiliaryRegistrationSignatureRequirement *)self isEqualToPassAuxiliaryRegistrationSignatureRequirement:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassAuxiliaryRegistrationSignatureRequirement:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_type == v4[7] && self->_signatureSchemeVersion == v4[8];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKPassAuxiliaryRegistrationSignatureRequirement);
  [(PKPassAuxiliaryRegistrationRequirement *)self _copyInto:v4];
  v4->_type = self->_type;
  v4->_signatureSchemeVersion = self->_signatureSchemeVersion;
  return v4;
}

@end