@interface DIIdentityProvisioningAttestations
- (DIIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)a3 deviceEncryptionKeyAttestation:(id)a4 deviceEncryptionKeyAuthorization:(id)a5 progenitorKeyCASDAttestation:(id)a6 transactionKeys:(id)a7 serverAttestedProvisioningData:(id)a8;
- (DIIdentityProvisioningAttestations)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIIdentityProvisioningAttestations

- (DIIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)a3 deviceEncryptionKeyAttestation:(id)a4 deviceEncryptionKeyAuthorization:(id)a5 progenitorKeyCASDAttestation:(id)a6 transactionKeys:(id)a7 serverAttestedProvisioningData:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = DIIdentityProvisioningAttestations;
  v18 = [(DIIdentityProvisioningAttestations *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_authorizationKeyAttestation, a3);
    objc_storeStrong(&v19->_deviceEncryptionKeyAttestation, a4);
    objc_storeStrong(&v19->_deviceEncryptionKeyAuthorization, a5);
    objc_storeStrong(&v19->_progenitorKeyCASDAttestation, a6);
    objc_storeStrong(&v19->_transactionKeys, a7);
    objc_storeStrong(&v19->_serverAttestedProvisioningData, a8);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIIdentityProvisioningAttestations *)self authorizationKeyAttestation];
  [v4 encodeObject:v5 forKey:@"authorizationKeyAttestation"];

  v6 = [(DIIdentityProvisioningAttestations *)self deviceEncryptionKeyAttestation];
  [v4 encodeObject:v6 forKey:@"deviceEncryptionKeyAttestation"];

  v7 = [(DIIdentityProvisioningAttestations *)self deviceEncryptionKeyAuthorization];
  [v4 encodeObject:v7 forKey:@"deviceEncryptionKeyAuthorization"];

  v8 = [(DIIdentityProvisioningAttestations *)self progenitorKeyCASDAttestation];
  [v4 encodeObject:v8 forKey:@"progenitorKeyCASDAttestation"];

  v9 = [(DIIdentityProvisioningAttestations *)self transactionKeys];
  [v4 encodeObject:v9 forKey:@"transactionKeys"];

  v10 = [(DIIdentityProvisioningAttestations *)self serverAttestedProvisioningData];
  [v4 encodeObject:v10 forKey:@"serverAttestedProvisioningData"];
}

- (DIIdentityProvisioningAttestations)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DIIdentityProvisioningAttestations;
  v5 = [(DIIdentityProvisioningAttestations *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"authorizationKeyAttestation"];
    authorizationKeyAttestation = v5->_authorizationKeyAttestation;
    v5->_authorizationKeyAttestation = v6;

    v8 = [v4 decodeObjectForKey:@"deviceEncryptionKeyAttestation"];
    deviceEncryptionKeyAttestation = v5->_deviceEncryptionKeyAttestation;
    v5->_deviceEncryptionKeyAttestation = v8;

    v10 = [v4 decodeObjectForKey:@"deviceEncryptionKeyAuthorization"];
    deviceEncryptionKeyAuthorization = v5->_deviceEncryptionKeyAuthorization;
    v5->_deviceEncryptionKeyAuthorization = v10;

    v12 = [v4 decodeObjectForKey:@"progenitorKeyCASDAttestation"];
    progenitorKeyCASDAttestation = v5->_progenitorKeyCASDAttestation;
    v5->_progenitorKeyCASDAttestation = v12;

    v14 = [v4 decodeObjectForKey:@"transactionKeys"];
    transactionKeys = v5->_transactionKeys;
    v5->_transactionKeys = v14;

    v16 = [v4 decodeObjectForKey:@"serverAttestedProvisioningData"];
    serverAttestedProvisioningData = v5->_serverAttestedProvisioningData;
    v5->_serverAttestedProvisioningData = v16;
  }

  return v5;
}

@end