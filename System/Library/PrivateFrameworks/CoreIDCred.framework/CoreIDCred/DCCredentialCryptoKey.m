@interface DCCredentialCryptoKey
- (DCCredentialCryptoKey)init;
- (DCCredentialCryptoKey)initWithCoder:(id)a3;
- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 attestation:(id)a9;
- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 attestation:(id)a9 keyAuthorization:(id)a10 kskAttestation:(id)a11;
- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 casdAttestation:(id)a9 keyAuthorization:(id)a10 kskAttestation:(id)a11;
- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 casdSignature:(id)a9 casdAttestation:(id)a10 keyAuthorization:(id)a11 kskAttestation:(id)a12;
- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 progenitorKeyAttestation:(id)a9 casdAttestation:(id)a10 keyAuthorization:(id)a11 kskAttestation:(id)a12;
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
- (void)encodeWithCoder:(id)a3;
- (void)setAttestation:(id)a3;
- (void)setCasdAttestation:(id)a3;
- (void)setCasdSignature:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setKeyAuthorization:(id)a3;
- (void)setKeyType:(unint64_t)a3;
- (void)setKeyUsage:(unint64_t)a3;
- (void)setKskAttestation:(id)a3;
- (void)setProgenitorKeyAttestation:(id)a3;
- (void)setPublicKey:(id)a3;
- (void)setPublicKeyCOSEKey:(id)a3;
- (void)setPublicKeyIdentifier:(id)a3;
@end

@implementation DCCredentialCryptoKey

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v10 encodeObject:self->_identifier forKey:0x28586CDC0];
  [v10 encodeObject:self->_publicKey forKey:0x28586CFA0];
  [v10 encodeObject:self->_publicKeyIdentifier forKey:0x28586CDE0];
  [v10 encodeObject:self->_publicKeyCOSEKey forKey:0x28586CF80];
  [v10 encodeInteger:self->_keyType forKey:0x28586CE00];
  [v10 encodeInteger:self->_keyUsage forKey:0x28586CE20];
  attestation = self->_attestation;
  if (attestation)
  {
    [v10 encodeObject:attestation forKey:0x28586CE40];
  }

  casdAttestation = self->_casdAttestation;
  if (casdAttestation)
  {
    [v10 encodeObject:casdAttestation forKey:0x28586CE60];
  }

  casdSignature = self->_casdSignature;
  if (casdSignature)
  {
    [v10 encodeObject:casdSignature forKey:0x28586CE80];
  }

  progenitorKeyAttestation = self->_progenitorKeyAttestation;
  if (progenitorKeyAttestation)
  {
    [v10 encodeObject:progenitorKeyAttestation forKey:0x28586CEA0];
  }

  keyAuthorization = self->_keyAuthorization;
  if (keyAuthorization)
  {
    [v10 encodeObject:keyAuthorization forKey:0x28586CEC0];
  }

  kskAttestation = self->_kskAttestation;
  if (kskAttestation)
  {
    [v10 encodeObject:kskAttestation forKey:0x28586CEE0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialCryptoKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCCredentialCryptoKey *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CDC0];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CFA0];
    publicKey = v5->_publicKey;
    v5->_publicKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CDE0];
    publicKeyIdentifier = v5->_publicKeyIdentifier;
    v5->_publicKeyIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CF80];
    publicKeyCOSEKey = v5->_publicKeyCOSEKey;
    v5->_publicKeyCOSEKey = v12;

    v5->_keyType = [v4 decodeIntegerForKey:0x28586CE00];
    v5->_keyUsage = [v4 decodeIntegerForKey:0x28586CE20];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:0x28586CE40];
    attestation = v5->_attestation;
    v5->_attestation = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CE60];
    casdAttestation = v5->_casdAttestation;
    v5->_casdAttestation = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CE80];
    casdSignature = v5->_casdSignature;
    v5->_casdSignature = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CEA0];
    progenitorKeyAttestation = v5->_progenitorKeyAttestation;
    v5->_progenitorKeyAttestation = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CEC0];
    keyAuthorization = v5->_keyAuthorization;
    v5->_keyAuthorization = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:0x28586CEE0];
    kskAttestation = v5->_kskAttestation;
    v5->_kskAttestation = v30;
  }

  return v5;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 attestation:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = [(DCCredentialCryptoKey *)self init];
  if (v20)
  {
    v21 = [v15 copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [v16 copy];
    publicKey = v20->_publicKey;
    v20->_publicKey = v23;

    v25 = [v17 copy];
    publicKeyIdentifier = v20->_publicKeyIdentifier;
    v20->_publicKeyIdentifier = v25;

    v27 = [v18 copy];
    publicKeyCOSEKey = v20->_publicKeyCOSEKey;
    v20->_publicKeyCOSEKey = v27;

    v20->_keyUsage = a8;
    v20->_keyType = a7;
    v29 = [v19 copy];
    attestation = v20->_attestation;
    v20->_attestation = v29;
  }

  return v20;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 attestation:(id)a9 keyAuthorization:(id)a10 kskAttestation:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = [(DCCredentialCryptoKey *)self init];
  if (v24)
  {
    v25 = [v17 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [v18 copy];
    publicKey = v24->_publicKey;
    v24->_publicKey = v27;

    v29 = [v19 copy];
    publicKeyIdentifier = v24->_publicKeyIdentifier;
    v24->_publicKeyIdentifier = v29;

    v31 = [v20 copy];
    publicKeyCOSEKey = v24->_publicKeyCOSEKey;
    v24->_publicKeyCOSEKey = v31;

    v24->_keyUsage = a8;
    v24->_keyType = a7;
    v33 = [v21 copy];
    attestation = v24->_attestation;
    v24->_attestation = v33;

    v35 = [v22 copy];
    keyAuthorization = v24->_keyAuthorization;
    v24->_keyAuthorization = v35;

    v37 = [v23 copy];
    kskAttestation = v24->_kskAttestation;
    v24->_kskAttestation = v37;
  }

  return v24;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 casdAttestation:(id)a9 keyAuthorization:(id)a10 kskAttestation:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = [(DCCredentialCryptoKey *)self init];
  if (v24)
  {
    v25 = [v17 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [v18 copy];
    publicKey = v24->_publicKey;
    v24->_publicKey = v27;

    v29 = [v19 copy];
    publicKeyIdentifier = v24->_publicKeyIdentifier;
    v24->_publicKeyIdentifier = v29;

    v31 = [v20 copy];
    publicKeyCOSEKey = v24->_publicKeyCOSEKey;
    v24->_publicKeyCOSEKey = v31;

    v24->_keyUsage = a8;
    v24->_keyType = a7;
    v33 = [v21 copy];
    casdAttestation = v24->_casdAttestation;
    v24->_casdAttestation = v33;

    v35 = [v22 copy];
    keyAuthorization = v24->_keyAuthorization;
    v24->_keyAuthorization = v35;

    v37 = [v23 copy];
    kskAttestation = v24->_kskAttestation;
    v24->_kskAttestation = v37;
  }

  return v24;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 casdSignature:(id)a9 casdAttestation:(id)a10 keyAuthorization:(id)a11 kskAttestation:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = [(DCCredentialCryptoKey *)self init];
  if (v25)
  {
    v26 = [v17 copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [v18 copy];
    publicKey = v25->_publicKey;
    v25->_publicKey = v28;

    v30 = [v19 copy];
    publicKeyIdentifier = v25->_publicKeyIdentifier;
    v25->_publicKeyIdentifier = v30;

    v32 = [v20 copy];
    publicKeyCOSEKey = v25->_publicKeyCOSEKey;
    v25->_publicKeyCOSEKey = v32;

    v25->_keyUsage = a8;
    v25->_keyType = a7;
    v34 = [v22 copy];
    casdAttestation = v25->_casdAttestation;
    v25->_casdAttestation = v34;

    v36 = [v21 copy];
    casdSignature = v25->_casdSignature;
    v25->_casdSignature = v36;

    v38 = [v23 copy];
    keyAuthorization = v25->_keyAuthorization;
    v25->_keyAuthorization = v38;

    v40 = [v24 copy];
    kskAttestation = v25->_kskAttestation;
    v25->_kskAttestation = v40;
  }

  return v25;
}

- (DCCredentialCryptoKey)initWithIdentifier:(id)a3 publicKey:(id)a4 publicKeyIdentifier:(id)a5 publicKeyCOSEKey:(id)a6 keyType:(unint64_t)a7 keyUsage:(unint64_t)a8 progenitorKeyAttestation:(id)a9 casdAttestation:(id)a10 keyAuthorization:(id)a11 kskAttestation:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = [(DCCredentialCryptoKey *)self init];
  if (v25)
  {
    v26 = [v17 copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [v18 copy];
    publicKey = v25->_publicKey;
    v25->_publicKey = v28;

    v30 = [v19 copy];
    publicKeyIdentifier = v25->_publicKeyIdentifier;
    v25->_publicKeyIdentifier = v30;

    v32 = [v20 copy];
    publicKeyCOSEKey = v25->_publicKeyCOSEKey;
    v25->_publicKeyCOSEKey = v32;

    v25->_keyUsage = a8;
    v25->_keyType = a7;
    v34 = [v22 copy];
    casdAttestation = v25->_casdAttestation;
    v25->_casdAttestation = v34;

    v36 = [v21 copy];
    progenitorKeyAttestation = v25->_progenitorKeyAttestation;
    v25->_progenitorKeyAttestation = v36;

    v38 = [v23 copy];
    keyAuthorization = v25->_keyAuthorization;
    v25->_keyAuthorization = v38;

    v40 = [v24 copy];
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

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_identifier != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
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

- (void)setPublicKey:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_publicKey != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
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

- (void)setPublicKeyIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_publicKeyIdentifier != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
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

- (void)setPublicKeyCOSEKey:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_publicKeyCOSEKey != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
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

- (void)setKeyType:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_keyType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)keyUsage
{
  os_unfair_lock_lock(&self->_lock);
  keyUsage = self->_keyUsage;
  os_unfair_lock_unlock(&self->_lock);
  return keyUsage;
}

- (void)setKeyUsage:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_keyUsage = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)attestation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_attestation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAttestation:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_attestation != v6)
  {
    v4 = [(NSArray *)v6 copyWithZone:0];
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

- (void)setCasdAttestation:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_casdAttestation != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
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

- (void)setCasdSignature:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_casdSignature != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
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

- (void)setProgenitorKeyAttestation:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_progenitorKeyAttestation != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
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

- (void)setKeyAuthorization:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_keyAuthorization != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
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

- (void)setKskAttestation:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_kskAttestation != v6)
  {
    v4 = [(NSArray *)v6 copyWithZone:0];
    kskAttestation = self->_kskAttestation;
    self->_kskAttestation = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end