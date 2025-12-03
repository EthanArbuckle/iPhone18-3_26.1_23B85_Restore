@interface DCCredentialCryptoKeyInfo
- (DCCredentialCryptoKeyInfo)initWithCoder:(id)coder;
- (DCCredentialCryptoKeyInfo)initWithIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier keyType:(id)type keyUsage:(id)usage createdAt:(id)at updatedAt:(id)self0 presentmentKeyTimesUsed:(int64_t)self1 acl:(id)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCCredentialCryptoKeyInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DCCredentialCryptoKeyInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:0x28586CDC0];

  credentialIdentifier = [(DCCredentialCryptoKeyInfo *)self credentialIdentifier];
  [coderCopy encodeObject:credentialIdentifier forKey:0x28586CD20];

  publicKey = [(DCCredentialCryptoKeyInfo *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:0x28586CFA0];

  publicKeyIdentifier = [(DCCredentialCryptoKeyInfo *)self publicKeyIdentifier];
  [coderCopy encodeObject:publicKeyIdentifier forKey:0x28586CDE0];

  keyType = [(DCCredentialCryptoKeyInfo *)self keyType];
  [coderCopy encodeObject:keyType forKey:0x28586CE00];

  keyUsage = [(DCCredentialCryptoKeyInfo *)self keyUsage];
  [coderCopy encodeObject:keyUsage forKey:0x28586CE20];

  createdAt = [(DCCredentialCryptoKeyInfo *)self createdAt];
  [coderCopy encodeObject:createdAt forKey:0x28586CD60];

  updatedAt = [(DCCredentialCryptoKeyInfo *)self updatedAt];
  [coderCopy encodeObject:updatedAt forKey:0x28586CD80];

  [coderCopy encodeInteger:-[DCCredentialCryptoKeyInfo presentmentKeyTimesUsed](self forKey:{"presentmentKeyTimesUsed"), 0x28586D060}];
  v13 = [(DCCredentialCryptoKeyInfo *)self acl];
  [coderCopy encodeObject:v13 forKey:0x28586D200];
}

- (DCCredentialCryptoKeyInfo)initWithCoder:(id)coder
{
  v24.receiver = self;
  v24.super_class = DCCredentialCryptoKeyInfo;
  coderCopy = coder;
  v4 = [(DCCredentialCryptoKeyInfo *)&v24 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{0x28586CDC0, v24.receiver, v24.super_class}];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CD20];
  credentialIdentifier = v4->_credentialIdentifier;
  v4->_credentialIdentifier = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CFA0];
  publicKey = v4->_publicKey;
  v4->_publicKey = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CDE0];
  publicKeyIdentifier = v4->_publicKeyIdentifier;
  v4->_publicKeyIdentifier = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CE00];
  keyType = v4->_keyType;
  v4->_keyType = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CE20];
  keyUsage = v4->_keyUsage;
  v4->_keyUsage = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CD60];
  createdAt = v4->_createdAt;
  v4->_createdAt = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CD80];
  updatedAt = v4->_updatedAt;
  v4->_updatedAt = v19;

  v4->_presentmentKeyTimesUsed = [coderCopy decodeIntegerForKey:0x28586D060];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D200];

  acl = v4->_acl;
  v4->_acl = v21;

  return v4;
}

- (DCCredentialCryptoKeyInfo)initWithIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier publicKey:(id)key publicKeyIdentifier:(id)keyIdentifier keyType:(id)type keyUsage:(id)usage createdAt:(id)at updatedAt:(id)self0 presentmentKeyTimesUsed:(int64_t)self1 acl:(id)self2
{
  identifierCopy = identifier;
  credentialIdentifierCopy = credentialIdentifier;
  keyCopy = key;
  keyIdentifierCopy = keyIdentifier;
  typeCopy = type;
  usageCopy = usage;
  atCopy = at;
  updatedAtCopy = updatedAt;
  aclCopy = acl;
  v46.receiver = self;
  v46.super_class = DCCredentialCryptoKeyInfo;
  v25 = [(DCCredentialCryptoKeyInfo *)&v46 init];
  identifier = v25->_identifier;
  v25->_identifier = identifierCopy;
  v45 = identifierCopy;

  credentialIdentifier = v25->_credentialIdentifier;
  v25->_credentialIdentifier = credentialIdentifierCopy;
  v28 = credentialIdentifierCopy;

  publicKey = v25->_publicKey;
  v25->_publicKey = keyCopy;
  v30 = keyCopy;

  publicKeyIdentifier = v25->_publicKeyIdentifier;
  v25->_publicKeyIdentifier = keyIdentifierCopy;
  v32 = keyIdentifierCopy;

  keyType = v25->_keyType;
  v25->_keyType = typeCopy;
  v34 = typeCopy;

  keyUsage = v25->_keyUsage;
  v25->_keyUsage = usageCopy;
  v36 = usageCopy;

  createdAt = v25->_createdAt;
  v25->_createdAt = atCopy;
  v38 = atCopy;

  updatedAt = v25->_updatedAt;
  v25->_updatedAt = updatedAtCopy;
  v40 = updatedAtCopy;

  acl = v25->_acl;
  v25->_presentmentKeyTimesUsed = used;
  v25->_acl = aclCopy;

  return v25;
}

@end