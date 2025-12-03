@interface DCCredentialTrust
- (DCCredentialTrust)initWithCoder:(id)coder;
- (DCCredentialTrust)initWithCredentialKeyBlob:(id)blob baaCertificate:(id)certificate pairingID:(id)d isAccessibilityEnabled:(BOOL)enabled;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCCredentialTrust

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  credentialKeyBlob = [(DCCredentialTrust *)self credentialKeyBlob];
  [coderCopy encodeObject:credentialKeyBlob forKey:0x28586D1A0];

  credentialBAACertificate = [(DCCredentialTrust *)self credentialBAACertificate];
  [coderCopy encodeObject:credentialBAACertificate forKey:0x28586D180];

  credentialPairingID = [(DCCredentialTrust *)self credentialPairingID];
  [coderCopy encodeObject:credentialPairingID forKey:0x28586D1C0];

  [coderCopy encodeBool:-[DCCredentialTrust credentialAccessibilityEnabled](self forKey:{"credentialAccessibilityEnabled"), 0x28586D1E0}];
}

- (DCCredentialTrust)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DCCredentialTrust;
  v5 = [(DCCredentialTrust *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D1A0];
    credentialKeyBlob = v5->_credentialKeyBlob;
    v5->_credentialKeyBlob = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D180];
    credentialBAACertificate = v5->_credentialBAACertificate;
    v5->_credentialBAACertificate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D1C0];
    credentialPairingID = v5->_credentialPairingID;
    v5->_credentialPairingID = v10;

    v5->_credentialAccessibilityEnabled = [coderCopy decodeBoolForKey:0x28586D1E0];
  }

  return v5;
}

- (DCCredentialTrust)initWithCredentialKeyBlob:(id)blob baaCertificate:(id)certificate pairingID:(id)d isAccessibilityEnabled:(BOOL)enabled
{
  blobCopy = blob;
  certificateCopy = certificate;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = DCCredentialTrust;
  v13 = [(DCCredentialTrust *)&v21 init];
  if (v13)
  {
    v14 = [blobCopy copy];
    credentialKeyBlob = v13->_credentialKeyBlob;
    v13->_credentialKeyBlob = v14;

    v16 = [certificateCopy copy];
    credentialBAACertificate = v13->_credentialBAACertificate;
    v13->_credentialBAACertificate = v16;

    v18 = [dCopy copy];
    credentialPairingID = v13->_credentialPairingID;
    v13->_credentialPairingID = v18;

    v13->_credentialAccessibilityEnabled = enabled;
  }

  return v13;
}

@end