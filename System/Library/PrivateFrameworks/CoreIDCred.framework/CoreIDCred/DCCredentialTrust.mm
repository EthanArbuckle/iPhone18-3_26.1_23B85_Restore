@interface DCCredentialTrust
- (DCCredentialTrust)initWithCoder:(id)a3;
- (DCCredentialTrust)initWithCredentialKeyBlob:(id)a3 baaCertificate:(id)a4 pairingID:(id)a5 isAccessibilityEnabled:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCCredentialTrust

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(DCCredentialTrust *)self credentialKeyBlob];
  [v7 encodeObject:v4 forKey:0x28586D1A0];

  v5 = [(DCCredentialTrust *)self credentialBAACertificate];
  [v7 encodeObject:v5 forKey:0x28586D180];

  v6 = [(DCCredentialTrust *)self credentialPairingID];
  [v7 encodeObject:v6 forKey:0x28586D1C0];

  [v7 encodeBool:-[DCCredentialTrust credentialAccessibilityEnabled](self forKey:{"credentialAccessibilityEnabled"), 0x28586D1E0}];
}

- (DCCredentialTrust)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DCCredentialTrust;
  v5 = [(DCCredentialTrust *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D1A0];
    credentialKeyBlob = v5->_credentialKeyBlob;
    v5->_credentialKeyBlob = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D180];
    credentialBAACertificate = v5->_credentialBAACertificate;
    v5->_credentialBAACertificate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D1C0];
    credentialPairingID = v5->_credentialPairingID;
    v5->_credentialPairingID = v10;

    v5->_credentialAccessibilityEnabled = [v4 decodeBoolForKey:0x28586D1E0];
  }

  return v5;
}

- (DCCredentialTrust)initWithCredentialKeyBlob:(id)a3 baaCertificate:(id)a4 pairingID:(id)a5 isAccessibilityEnabled:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = DCCredentialTrust;
  v13 = [(DCCredentialTrust *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    credentialKeyBlob = v13->_credentialKeyBlob;
    v13->_credentialKeyBlob = v14;

    v16 = [v11 copy];
    credentialBAACertificate = v13->_credentialBAACertificate;
    v13->_credentialBAACertificate = v16;

    v18 = [v12 copy];
    credentialPairingID = v13->_credentialPairingID;
    v13->_credentialPairingID = v18;

    v13->_credentialAccessibilityEnabled = a6;
  }

  return v13;
}

@end