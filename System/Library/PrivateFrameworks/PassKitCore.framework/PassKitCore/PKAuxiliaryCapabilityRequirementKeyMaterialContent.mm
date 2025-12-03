@interface PKAuxiliaryCapabilityRequirementKeyMaterialContent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAuxiliaryCapabilityRequirementKey:(id)key;
- (PKAuxiliaryCapabilityRequirementKeyMaterialContent)initWithCoder:(id)coder;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAuxiliaryCapabilityRequirementKeyMaterialContent *)self isEqualToAuxiliaryCapabilityRequirementKey:v5];
  }

  return v6;
}

- (BOOL)isEqualToAuxiliaryCapabilityRequirementKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    goto LABEL_52;
  }

  publicKey = self->_publicKey;
  v6 = keyCopy[1];
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
  v9 = keyCopy[2];
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
  v11 = keyCopy[3];
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
  v13 = keyCopy[4];
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
  v15 = keyCopy[5];
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
  v17 = keyCopy[6];
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
  v19 = keyCopy[7];
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
  v21 = keyCopy[8];
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
  v23 = keyCopy[9];
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
  v25 = keyCopy[10];
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

  hexEncoding = [(NSData *)self->_applicationIdentifier hexEncoding];
  uppercaseString = [hexEncoding uppercaseString];
  [v3 setObject:uppercaseString forKeyedSubscript:@"applicationIdentifier"];

  v14 = [(NSData *)self->_securityAccessControl base64EncodedStringWithOptions:0];
  [v3 setObject:v14 forKeyedSubscript:@"securityAccessControl"];

  v15 = [v3 copy];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  publicKey = self->_publicKey;
  coderCopy = coder;
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];
  [coderCopy encodeObject:self->_publicKeyIdentifier forKey:@"publicKeyIdentifier"];
  [coderCopy encodeObject:self->_attestation forKey:@"attestation"];
  [coderCopy encodeObject:self->_secondaryAttestation forKey:@"secondaryAttestation"];
  [coderCopy encodeObject:self->_authorization forKey:@"authorization"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_certificateChain forKey:@"certificateChain"];
  [coderCopy encodeObject:self->_keyReferenceIdentifier forKey:@"keyReferenceIdentifier"];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeObject:self->_securityAccessControl forKey:@"securityAccessControl"];
}

- (PKAuxiliaryCapabilityRequirementKeyMaterialContent)initWithCoder:(id)coder
{
  v39[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = PKAuxiliaryCapabilityRequirementKeyMaterialContent;
  v5 = [(PKAuxiliaryCapabilityRequirementKeyMaterialContent *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v5->_publicKeyIdentifier;
    v5->_publicKeyIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"attestation"];
    attestation = v5->_attestation;
    v5->_attestation = v13;

    v15 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"secondaryAttestation"];
    secondaryAttestation = v5->_secondaryAttestation;
    v5->_secondaryAttestation = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorization"];
    authorization = v5->_authorization;
    v5->_authorization = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v22;

    v24 = MEMORY[0x1E695DFD8];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v26 = [v24 setWithArray:v25];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"certificateChain"];
    certificateChain = v5->_certificateChain;
    v5->_certificateChain = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyReferenceIdentifier"];
    keyReferenceIdentifier = v5->_keyReferenceIdentifier;
    v5->_keyReferenceIdentifier = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityAccessControl"];
    securityAccessControl = v5->_securityAccessControl;
    v5->_securityAccessControl = v33;
  }

  return v5;
}

@end