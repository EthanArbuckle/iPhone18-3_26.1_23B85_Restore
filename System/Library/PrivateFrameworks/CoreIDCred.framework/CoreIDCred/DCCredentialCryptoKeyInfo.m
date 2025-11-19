@interface DCCredentialCryptoKeyInfo
- (DCCredentialCryptoKeyInfo)initWithCoder:(id)a3;
- (DCCredentialCryptoKeyInfo)initWithIdentifier:(id)a3 credentialIdentifier:(id)a4 publicKey:(id)a5 publicKeyIdentifier:(id)a6 keyType:(id)a7 keyUsage:(id)a8 createdAt:(id)a9 updatedAt:(id)a10 presentmentKeyTimesUsed:(int64_t)a11 acl:(id)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCCredentialCryptoKeyInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCCredentialCryptoKeyInfo *)self identifier];
  [v4 encodeObject:v5 forKey:0x28586CDC0];

  v6 = [(DCCredentialCryptoKeyInfo *)self credentialIdentifier];
  [v4 encodeObject:v6 forKey:0x28586CD20];

  v7 = [(DCCredentialCryptoKeyInfo *)self publicKey];
  [v4 encodeObject:v7 forKey:0x28586CFA0];

  v8 = [(DCCredentialCryptoKeyInfo *)self publicKeyIdentifier];
  [v4 encodeObject:v8 forKey:0x28586CDE0];

  v9 = [(DCCredentialCryptoKeyInfo *)self keyType];
  [v4 encodeObject:v9 forKey:0x28586CE00];

  v10 = [(DCCredentialCryptoKeyInfo *)self keyUsage];
  [v4 encodeObject:v10 forKey:0x28586CE20];

  v11 = [(DCCredentialCryptoKeyInfo *)self createdAt];
  [v4 encodeObject:v11 forKey:0x28586CD60];

  v12 = [(DCCredentialCryptoKeyInfo *)self updatedAt];
  [v4 encodeObject:v12 forKey:0x28586CD80];

  [v4 encodeInteger:-[DCCredentialCryptoKeyInfo presentmentKeyTimesUsed](self forKey:{"presentmentKeyTimesUsed"), 0x28586D060}];
  v13 = [(DCCredentialCryptoKeyInfo *)self acl];
  [v4 encodeObject:v13 forKey:0x28586D200];
}

- (DCCredentialCryptoKeyInfo)initWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = DCCredentialCryptoKeyInfo;
  v3 = a3;
  v4 = [(DCCredentialCryptoKeyInfo *)&v24 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{0x28586CDC0, v24.receiver, v24.super_class}];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CD20];
  credentialIdentifier = v4->_credentialIdentifier;
  v4->_credentialIdentifier = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CFA0];
  publicKey = v4->_publicKey;
  v4->_publicKey = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CDE0];
  publicKeyIdentifier = v4->_publicKeyIdentifier;
  v4->_publicKeyIdentifier = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CE00];
  keyType = v4->_keyType;
  v4->_keyType = v13;

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CE20];
  keyUsage = v4->_keyUsage;
  v4->_keyUsage = v15;

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CD60];
  createdAt = v4->_createdAt;
  v4->_createdAt = v17;

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CD80];
  updatedAt = v4->_updatedAt;
  v4->_updatedAt = v19;

  v4->_presentmentKeyTimesUsed = [v3 decodeIntegerForKey:0x28586D060];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586D200];

  acl = v4->_acl;
  v4->_acl = v21;

  return v4;
}

- (DCCredentialCryptoKeyInfo)initWithIdentifier:(id)a3 credentialIdentifier:(id)a4 publicKey:(id)a5 publicKeyIdentifier:(id)a6 keyType:(id)a7 keyUsage:(id)a8 createdAt:(id)a9 updatedAt:(id)a10 presentmentKeyTimesUsed:(int64_t)a11 acl:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v43 = a12;
  v46.receiver = self;
  v46.super_class = DCCredentialCryptoKeyInfo;
  v25 = [(DCCredentialCryptoKeyInfo *)&v46 init];
  identifier = v25->_identifier;
  v25->_identifier = v17;
  v45 = v17;

  credentialIdentifier = v25->_credentialIdentifier;
  v25->_credentialIdentifier = v18;
  v28 = v18;

  publicKey = v25->_publicKey;
  v25->_publicKey = v19;
  v30 = v19;

  publicKeyIdentifier = v25->_publicKeyIdentifier;
  v25->_publicKeyIdentifier = v20;
  v32 = v20;

  keyType = v25->_keyType;
  v25->_keyType = v21;
  v34 = v21;

  keyUsage = v25->_keyUsage;
  v25->_keyUsage = v22;
  v36 = v22;

  createdAt = v25->_createdAt;
  v25->_createdAt = v23;
  v38 = v23;

  updatedAt = v25->_updatedAt;
  v25->_updatedAt = v24;
  v40 = v24;

  acl = v25->_acl;
  v25->_presentmentKeyTimesUsed = a11;
  v25->_acl = v43;

  return v25;
}

@end