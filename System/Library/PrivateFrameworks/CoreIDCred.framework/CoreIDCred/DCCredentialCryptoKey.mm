@interface DCCredentialCryptoKey
- (DCCredentialCryptoKey)init;
- (DCCredentialCryptoKey)initWithCoder:(id)coder;
- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage attestation:(id)attestation;
- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage attestation:(id)attestation keyAuthorization:(id)self0 kskAttestation:(id)self1;
- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage casdAttestation:(id)attestation keyAuthorization:(id)self0 kskAttestation:(id)self1;
- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage casdSignature:(id)signature casdAttestation:(id)self0 keyAuthorization:(id)self1 kskAttestation:(id)self2;
- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage progenitorKeyAttestation:(id)attestation casdAttestation:(id)self0 keyAuthorization:(id)self1 kskAttestation:(id)self2;
- (NSArray)attestation;
- (NSArray)kskAttestation;
- (NSData)casdAttestation;
- (NSData)casdSignature;
- (NSData)keyAuthorization;
- (NSData)progenitorKeyAttestation;
- (NSData)publicKey;
- (NSData)publicKeyCOSEKey;
- (NSData)publicKeyIdentifier;
- (NSString)identifier;
- (id)description;
- (unint64_t)keyType;
- (unint64_t)keyUsage;
- (void)encodeWithCoder:(id)coder;
- (void)setAttestation:(id)attestation;
- (void)setCasdAttestation:(id)attestation;
- (void)setCasdSignature:(id)signature;
- (void)setIdentifier:(id)identifier;
- (void)setKeyAuthorization:(id)authorization;
- (void)setKeyType:(unint64_t)type;
- (void)setKeyUsage:(unint64_t)usage;
- (void)setKskAttestation:(id)attestation;
- (void)setProgenitorKeyAttestation:(id)attestation;
- (void)setPublicKey:(id)key;
- (void)setPublicKeyCOSEKey:(id)key;
- (void)setPublicKeyIdentifier:(id)identifier;
@end

@implementation DCCredentialCryptoKey

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_identifier forKey:0x28586CDC0];
  [coderCopy encodeObject:self->_publicKey forKey:0x28586CFA0];
  [coderCopy encodeObject:self->_publicKeyIdentifier forKey:0x28586CDE0];
  [coderCopy encodeObject:self->_publicKeyCOSEKey forKey:0x28586CF80];
  [coderCopy encodeInteger:self->_keyType forKey:0x28586CE00];
  [coderCopy encodeInteger:self->_keyUsage forKey:0x28586CE20];
  attestation = self->_attestation;
  if (attestation)
  {
    [coderCopy encodeObject:attestation forKey:0x28586CE40];
  }

  casdAttestation = self->_casdAttestation;
  if (casdAttestation)
  {
    [coderCopy encodeObject:casdAttestation forKey:0x28586CE60];
  }

  casdSignature = self->_casdSignature;
  if (casdSignature)
  {
    [coderCopy encodeObject:casdSignature forKey:0x28586CE80];
  }

  progenitorKeyAttestation = self->_progenitorKeyAttestation;
  if (progenitorKeyAttestation)
  {
    [coderCopy encodeObject:progenitorKeyAttestation forKey:0x28586CEA0];
  }

  keyAuthorization = self->_keyAuthorization;
  if (keyAuthorization)
  {
    [coderCopy encodeObject:keyAuthorization forKey:0x28586CEC0];
  }

  kskAttestation = self->_kskAttestation;
  if (kskAttestation)
  {
    [coderCopy encodeObject:kskAttestation forKey:0x28586CEE0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialCryptoKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DCCredentialCryptoKey *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CDC0];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CFA0];
    publicKey = v5->_publicKey;
    v5->_publicKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CDE0];
    publicKeyIdentifier = v5->_publicKeyIdentifier;
    v5->_publicKeyIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CF80];
    publicKeyCOSEKey = v5->_publicKeyCOSEKey;
    v5->_publicKeyCOSEKey = v12;

    v5->_keyType = [coderCopy decodeIntegerForKey:0x28586CE00];
    v5->_keyUsage = [coderCopy decodeIntegerForKey:0x28586CE20];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:0x28586CE40];
    attestation = v5->_attestation;
    v5->_attestation = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CE60];
    casdAttestation = v5->_casdAttestation;
    v5->_casdAttestation = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CE80];
    casdSignature = v5->_casdSignature;
    v5->_casdSignature = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CEA0];
    progenitorKeyAttestation = v5->_progenitorKeyAttestation;
    v5->_progenitorKeyAttestation = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CEC0];
    keyAuthorization = v5->_keyAuthorization;
    v5->_keyAuthorization = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:0x28586CEE0];
    kskAttestation = v5->_kskAttestation;
    v5->_kskAttestation = v30;
  }

  return v5;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage attestation:(id)attestation
{
  identifierCopy = identifier;
  keyCopy = key;
  keyIdentifierCopy = keyIdentifier;
  eKeyCopy = eKey;
  attestationCopy = attestation;
  v20 = [(DCCredentialCryptoKey *)self init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [keyCopy copy];
    publicKey = v20->_publicKey;
    v20->_publicKey = v23;

    v25 = [keyIdentifierCopy copy];
    publicKeyIdentifier = v20->_publicKeyIdentifier;
    v20->_publicKeyIdentifier = v25;

    v27 = [eKeyCopy copy];
    publicKeyCOSEKey = v20->_publicKeyCOSEKey;
    v20->_publicKeyCOSEKey = v27;

    v20->_keyUsage = usage;
    v20->_keyType = type;
    v29 = [attestationCopy copy];
    attestation = v20->_attestation;
    v20->_attestation = v29;
  }

  return v20;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage attestation:(id)attestation keyAuthorization:(id)self0 kskAttestation:(id)self1
{
  identifierCopy = identifier;
  keyCopy = key;
  keyIdentifierCopy = keyIdentifier;
  eKeyCopy = eKey;
  attestationCopy = attestation;
  authorizationCopy = authorization;
  kskAttestationCopy = kskAttestation;
  v24 = [(DCCredentialCryptoKey *)self init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [keyCopy copy];
    publicKey = v24->_publicKey;
    v24->_publicKey = v27;

    v29 = [keyIdentifierCopy copy];
    publicKeyIdentifier = v24->_publicKeyIdentifier;
    v24->_publicKeyIdentifier = v29;

    v31 = [eKeyCopy copy];
    publicKeyCOSEKey = v24->_publicKeyCOSEKey;
    v24->_publicKeyCOSEKey = v31;

    v24->_keyUsage = usage;
    v24->_keyType = type;
    v33 = [attestationCopy copy];
    attestation = v24->_attestation;
    v24->_attestation = v33;

    v35 = [authorizationCopy copy];
    keyAuthorization = v24->_keyAuthorization;
    v24->_keyAuthorization = v35;

    v37 = [kskAttestationCopy copy];
    kskAttestation = v24->_kskAttestation;
    v24->_kskAttestation = v37;
  }

  return v24;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage casdAttestation:(id)attestation keyAuthorization:(id)self0 kskAttestation:(id)self1
{
  identifierCopy = identifier;
  keyCopy = key;
  keyIdentifierCopy = keyIdentifier;
  eKeyCopy = eKey;
  attestationCopy = attestation;
  authorizationCopy = authorization;
  kskAttestationCopy = kskAttestation;
  v24 = [(DCCredentialCryptoKey *)self init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [keyCopy copy];
    publicKey = v24->_publicKey;
    v24->_publicKey = v27;

    v29 = [keyIdentifierCopy copy];
    publicKeyIdentifier = v24->_publicKeyIdentifier;
    v24->_publicKeyIdentifier = v29;

    v31 = [eKeyCopy copy];
    publicKeyCOSEKey = v24->_publicKeyCOSEKey;
    v24->_publicKeyCOSEKey = v31;

    v24->_keyUsage = usage;
    v24->_keyType = type;
    v33 = [attestationCopy copy];
    casdAttestation = v24->_casdAttestation;
    v24->_casdAttestation = v33;

    v35 = [authorizationCopy copy];
    keyAuthorization = v24->_keyAuthorization;
    v24->_keyAuthorization = v35;

    v37 = [kskAttestationCopy copy];
    kskAttestation = v24->_kskAttestation;
    v24->_kskAttestation = v37;
  }

  return v24;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage casdSignature:(id)signature casdAttestation:(id)self0 keyAuthorization:(id)self1 kskAttestation:(id)self2
{
  identifierCopy = identifier;
  keyCopy = key;
  keyIdentifierCopy = keyIdentifier;
  eKeyCopy = eKey;
  signatureCopy = signature;
  attestationCopy = attestation;
  authorizationCopy = authorization;
  kskAttestationCopy = kskAttestation;
  v25 = [(DCCredentialCryptoKey *)self init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [keyCopy copy];
    publicKey = v25->_publicKey;
    v25->_publicKey = v28;

    v30 = [keyIdentifierCopy copy];
    publicKeyIdentifier = v25->_publicKeyIdentifier;
    v25->_publicKeyIdentifier = v30;

    v32 = [eKeyCopy copy];
    publicKeyCOSEKey = v25->_publicKeyCOSEKey;
    v25->_publicKeyCOSEKey = v32;

    v25->_keyUsage = usage;
    v25->_keyType = type;
    v34 = [attestationCopy copy];
    casdAttestation = v25->_casdAttestation;
    v25->_casdAttestation = v34;

    v36 = [signatureCopy copy];
    casdSignature = v25->_casdSignature;
    v25->_casdSignature = v36;

    v38 = [authorizationCopy copy];
    keyAuthorization = v25->_keyAuthorization;
    v25->_keyAuthorization = v38;

    v40 = [kskAttestationCopy copy];
    kskAttestation = v25->_kskAttestation;
    v25->_kskAttestation = v40;
  }

  return v25;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)identifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier publicKeyCOSEKey:(id)eKey keyType:(unint64_t)type keyUsage:(unint64_t)usage progenitorKeyAttestation:(id)attestation casdAttestation:(id)self0 keyAuthorization:(id)self1 kskAttestation:(id)self2
{
  identifierCopy = identifier;
  keyCopy = key;
  keyIdentifierCopy = keyIdentifier;
  eKeyCopy = eKey;
  attestationCopy = attestation;
  casdAttestationCopy = casdAttestation;
  authorizationCopy = authorization;
  kskAttestationCopy = kskAttestation;
  v25 = [(DCCredentialCryptoKey *)self init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [keyCopy copy];
    publicKey = v25->_publicKey;
    v25->_publicKey = v28;

    v30 = [keyIdentifierCopy copy];
    publicKeyIdentifier = v25->_publicKeyIdentifier;
    v25->_publicKeyIdentifier = v30;

    v32 = [eKeyCopy copy];
    publicKeyCOSEKey = v25->_publicKeyCOSEKey;
    v25->_publicKeyCOSEKey = v32;

    v25->_keyUsage = usage;
    v25->_keyType = type;
    v34 = [casdAttestationCopy copy];
    casdAttestation = v25->_casdAttestation;
    v25->_casdAttestation = v34;

    v36 = [attestationCopy copy];
    progenitorKeyAttestation = v25->_progenitorKeyAttestation;
    v25->_progenitorKeyAttestation = v36;

    v38 = [authorizationCopy copy];
    keyAuthorization = v25->_keyAuthorization;
    v25->_keyAuthorization = v38;

    v40 = [kskAttestationCopy copy];
    kskAttestation = v25->_kskAttestation;
    v25->_kskAttestation = v40;
  }

  return v25;
}

- (DCCredentialCryptoKey)init
{
  v3.receiver = self;
  v3.super_class = DCCredentialCryptoKey;
  result = [(DCCredentialCryptoKey *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  publicKeyIdentifier = self->_publicKeyIdentifier;
  v6 = DCCredentialCryptoKeyTypeToString(self->_keyType);
  v7 = DCCredentialCryptoKeyUsageToString(self->_keyUsage);
  v8 = [v3 stringWithFormat:@"DCCredentialCryptoKey identifier = %@, publicKeyIdentifier = %@, keyType = %@, keyUsage = %@", identifier, publicKeyIdentifier, v6, v7];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (NSString)identifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  if (self->_identifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copyWithZone:0];
    identifier = self->_identifier;
    self->_identifier = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)publicKey
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_publicKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPublicKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  if (self->_publicKey != keyCopy)
  {
    v4 = [(NSData *)keyCopy copyWithZone:0];
    publicKey = self->_publicKey;
    self->_publicKey = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)publicKeyIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_publicKeyIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPublicKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  if (self->_publicKeyIdentifier != identifierCopy)
  {
    v4 = [(NSData *)identifierCopy copyWithZone:0];
    publicKeyIdentifier = self->_publicKeyIdentifier;
    self->_publicKeyIdentifier = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)publicKeyCOSEKey
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_publicKeyCOSEKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPublicKeyCOSEKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  if (self->_publicKeyCOSEKey != keyCopy)
  {
    v4 = [(NSData *)keyCopy copyWithZone:0];
    publicKeyCOSEKey = self->_publicKeyCOSEKey;
    self->_publicKeyCOSEKey = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)keyType
{
  os_unfair_lock_lock(&self->_lock);
  keyType = self->_keyType;
  os_unfair_lock_unlock(&self->_lock);
  return keyType;
}

- (void)setKeyType:(unint64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  self->_keyType = type;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)keyUsage
{
  os_unfair_lock_lock(&self->_lock);
  keyUsage = self->_keyUsage;
  os_unfair_lock_unlock(&self->_lock);
  return keyUsage;
}

- (void)setKeyUsage:(unint64_t)usage
{
  os_unfair_lock_lock(&self->_lock);
  self->_keyUsage = usage;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)attestation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_attestation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAttestation:(id)attestation
{
  attestationCopy = attestation;
  os_unfair_lock_lock(&self->_lock);
  if (self->_attestation != attestationCopy)
  {
    v4 = [(NSArray *)attestationCopy copyWithZone:0];
    attestation = self->_attestation;
    self->_attestation = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)casdAttestation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_casdAttestation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCasdAttestation:(id)attestation
{
  attestationCopy = attestation;
  os_unfair_lock_lock(&self->_lock);
  if (self->_casdAttestation != attestationCopy)
  {
    v4 = [(NSData *)attestationCopy copyWithZone:0];
    casdAttestation = self->_casdAttestation;
    self->_casdAttestation = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)casdSignature
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_casdSignature;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCasdSignature:(id)signature
{
  signatureCopy = signature;
  os_unfair_lock_lock(&self->_lock);
  if (self->_casdSignature != signatureCopy)
  {
    v4 = [(NSData *)signatureCopy copyWithZone:0];
    casdSignature = self->_casdSignature;
    self->_casdSignature = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)progenitorKeyAttestation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_progenitorKeyAttestation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProgenitorKeyAttestation:(id)attestation
{
  attestationCopy = attestation;
  os_unfair_lock_lock(&self->_lock);
  if (self->_progenitorKeyAttestation != attestationCopy)
  {
    v4 = [(NSData *)attestationCopy copyWithZone:0];
    progenitorKeyAttestation = self->_progenitorKeyAttestation;
    self->_progenitorKeyAttestation = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)keyAuthorization
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_keyAuthorization;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setKeyAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  os_unfair_lock_lock(&self->_lock);
  if (self->_keyAuthorization != authorizationCopy)
  {
    v4 = [(NSData *)authorizationCopy copyWithZone:0];
    keyAuthorization = self->_keyAuthorization;
    self->_keyAuthorization = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)kskAttestation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_kskAttestation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setKskAttestation:(id)attestation
{
  attestationCopy = attestation;
  os_unfair_lock_lock(&self->_lock);
  if (self->_kskAttestation != attestationCopy)
  {
    v4 = [(NSArray *)attestationCopy copyWithZone:0];
    kskAttestation = self->_kskAttestation;
    self->_kskAttestation = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end