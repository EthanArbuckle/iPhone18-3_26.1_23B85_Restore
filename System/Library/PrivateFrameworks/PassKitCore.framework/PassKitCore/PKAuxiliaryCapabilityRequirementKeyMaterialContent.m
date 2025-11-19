@interface PKAuxiliaryCapabilityRequirementKeyMaterialContent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAuxiliaryCapabilityRequirementKey:(id)a3;
- (PKAuxiliaryCapabilityRequirementKeyMaterialContent)initWithCoder:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAuxiliaryCapabilityRequirementKeyMaterialContent

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"publicKey: '%@'; ", self->_publicKey];
  [v6 appendFormat:@"publicKeyIdentifier: '%@'; ", self->_publicKeyIdentifier];
  [v6 appendFormat:@"attestation: '%@'; ", self->_attestation];
  [v6 appendFormat:@"secondaryAttestation: '%@'; ", self->_secondaryAttestation];
  [v6 appendFormat:@"authorization: '%@'; ", self->_authorization];
  [v6 appendFormat:@"signature: '%@'; ", self->_signature];
  [v6 appendFormat:@"certificateChain: '%@'; ", self->_certificateChain];
  [v6 appendFormat:@"keyReferenceIdentifier: '%@; ", self->_keyReferenceIdentifier];
  [v6 appendFormat:@"applicationIdentifier: '%@; ", self->_applicationIdentifier];
  [v6 appendFormat:@"securityAccessControl: '%@'; ", self->_securityAccessControl];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (self->_publicKey)
  {
    [v3 addObject:?];
  }

  if (self->_publicKeyIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_attestation)
  {
    [v4 addObject:?];
  }

  if (self->_secondaryAttestation)
  {
    [v4 addObject:?];
  }

  if (self->_authorization)
  {
    [v4 addObject:?];
  }

  if (self->_signature)
  {
    [v4 addObject:?];
  }

  if (self->_certificateChain)
  {
    [v4 addObject:?];
  }

  if (self->_keyReferenceIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_applicationIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_securityAccessControl)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAuxiliaryCapabilityRequirementKeyMaterialContent *)self isEqualToAuxiliaryCapabilityRequirementKey:v5];
  }

  return v6;
}

- (BOOL)isEqualToAuxiliaryCapabilityRequirementKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_52;
  }

  publicKey = self->_publicKey;
  v6 = v4[1];
  if (publicKey)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (publicKey != v6)
    {
      goto LABEL_52;
    }
  }

  else if (([(NSData *)publicKey isEqual:?]& 1) == 0)
  {
    goto LABEL_52;
  }

  publicKeyIdentifier = self->_publicKeyIdentifier;
  v9 = v4[2];
  if (publicKeyIdentifier && v9)
  {
    if (([(NSString *)publicKeyIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (publicKeyIdentifier != v9)
  {
    goto LABEL_52;
  }

  attestation = self->_attestation;
  v11 = v4[3];
  if (attestation && v11)
  {
    if (([(NSArray *)attestation isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (attestation != v11)
  {
    goto LABEL_52;
  }

  secondaryAttestation = self->_secondaryAttestation;
  v13 = v4[4];
  if (secondaryAttestation && v13)
  {
    if (([(NSArray *)secondaryAttestation isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (secondaryAttestation != v13)
  {
    goto LABEL_52;
  }

  authorization = self->_authorization;
  v15 = v4[5];
  if (authorization && v15)
  {
    if (([(NSData *)authorization isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (authorization != v15)
  {
    goto LABEL_52;
  }

  signature = self->_signature;
  v17 = v4[6];
  if (signature && v17)
  {
    if (([(NSData *)signature isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (signature != v17)
  {
    goto LABEL_52;
  }

  certificateChain = self->_certificateChain;
  v19 = v4[7];
  if (certificateChain && v19)
  {
    if (([(NSArray *)certificateChain isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (certificateChain != v19)
  {
    goto LABEL_52;
  }

  keyReferenceIdentifier = self->_keyReferenceIdentifier;
  v21 = v4[8];
  if (keyReferenceIdentifier && v21)
  {
    if (([(NSString *)keyReferenceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (keyReferenceIdentifier != v21)
  {
    goto LABEL_52;
  }

  applicationIdentifier = self->_applicationIdentifier;
  v23 = v4[9];
  if (!applicationIdentifier || !v23)
  {
    if (applicationIdentifier == v23)
    {
      goto LABEL_48;
    }

LABEL_52:
    v26 = 0;
    goto LABEL_53;
  }

  if (([(NSData *)applicationIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_48:
  securityAccessControl = self->_securityAccessControl;
  v25 = v4[10];
  if (securityAccessControl && v25)
  {
    v26 = [(NSData *)securityAccessControl isEqual:?];
  }

  else
  {
    v26 = securityAccessControl == v25;
  }

LABEL_53:

  return v26;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSData *)self->_publicKey base64EncodedStringWithOptions:0];
  [v3 setObject:v4 forKeyedSubscript:@"publicKey"];

  v5 = [(NSString *)self->_publicKeyIdentifier copy];
  [v3 setObject:v5 forKeyedSubscript:@"publicKeyIdentifier"];

  v6 = [(NSArray *)self->_attestation pk_arrayBySafelyApplyingBlock:&__block_literal_global_204];
  [v3 setObject:v6 forKeyedSubscript:@"attestation"];

  v7 = [(NSArray *)self->_secondaryAttestation pk_arrayBySafelyApplyingBlock:&__block_literal_global_85];
  [v3 setObject:v7 forKeyedSubscript:@"secondaryAttestation"];

  v8 = [(NSData *)self->_authorization base64EncodedStringWithOptions:0];
  [v3 setObject:v8 forKeyedSubscript:@"authorization"];

  v9 = [(NSData *)self->_signature base64EncodedStringWithOptions:0];
  [v3 setObject:v9 forKeyedSubscript:@"signature"];

  v10 = [(NSArray *)self->_certificateChain pk_arrayBySafelyApplyingBlock:&__block_literal_global_87_0];
  [v3 setObject:v10 forKeyedSubscript:@"certificateChain"];

  v11 = [(NSString *)self->_keyReferenceIdentifier copy];
  [v3 setObject:v11 forKeyedSubscript:@"keyReferenceIdentifier"];

  v12 = [(NSData *)self->_applicationIdentifier hexEncoding];
  v13 = [v12 uppercaseString];
  [v3 setObject:v13 forKeyedSubscript:@"applicationIdentifier"];

  v14 = [(NSData *)self->_securityAccessControl base64EncodedStringWithOptions:0];
  [v3 setObject:v14 forKeyedSubscript:@"securityAccessControl"];

  v15 = [v3 copy];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  publicKey = self->_publicKey;
  v5 = a3;
  [v5 encodeObject:publicKey forKey:@"publicKey"];
  [v5 encodeObject:self->_publicKeyIdentifier forKey:@"publicKeyIdentifier"];
  [v5 encodeObject:self->_attestation forKey:@"attestation"];
  [v5 encodeObject:self->_secondaryAttestation forKey:@"secondaryAttestation"];
  [v5 encodeObject:self->_authorization forKey:@"authorization"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_certificateChain forKey:@"certificateChain"];
  [v5 encodeObject:self->_keyReferenceIdentifier forKey:@"keyReferenceIdentifier"];
  [v5 encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [v5 encodeObject:self->_securityAccessControl forKey:@"securityAccessControl"];
}

- (PKAuxiliaryCapabilityRequirementKeyMaterialContent)initWithCoder:(id)a3
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = PKAuxiliaryCapabilityRequirementKeyMaterialContent;
  v5 = [(PKAuxiliaryCapabilityRequirementKeyMaterialContent *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v5->_publicKeyIdentifier;
    v5->_publicKeyIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"attestation"];
    attestation = v5->_attestation;
    v5->_attestation = v13;

    v15 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"secondaryAttestation"];
    secondaryAttestation = v5->_secondaryAttestation;
    v5->_secondaryAttestation = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorization"];
    authorization = v5->_authorization;
    v5->_authorization = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v22;

    v24 = MEMORY[0x1E695DFD8];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v26 = [v24 setWithArray:v25];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"certificateChain"];
    certificateChain = v5->_certificateChain;
    v5->_certificateChain = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyReferenceIdentifier"];
    keyReferenceIdentifier = v5->_keyReferenceIdentifier;
    v5->_keyReferenceIdentifier = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityAccessControl"];
    securityAccessControl = v5->_securityAccessControl;
    v5->_securityAccessControl = v33;
  }

  return v5;
}

@end