@interface PKIdentityProvisioningAttestations
- (PKIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)a3 deviceEncryptionKeyAttestation:(id)a4 deviceEncryptionKeyAuthorization:(id)a5 progenitorKeyCASDAttestation:(id)a6 transactionKeys:(id)a7 serverAttestedProvisioningData:(id)a8;
- (PKIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)a3 deviceEncryptionKeyAttestation:(id)a4 deviceEncryptionKeyAuthorization:(id)a5 transactionKeyCASDAttestation:(id)a6 transactionKeyCASDSignature:(id)a7 transactionKeyCASDAuthorization:(id)a8;
- (PKIdentityProvisioningAttestations)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIdentityProvisioningAttestations

- (PKIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)a3 deviceEncryptionKeyAttestation:(id)a4 deviceEncryptionKeyAuthorization:(id)a5 transactionKeyCASDAttestation:(id)a6 transactionKeyCASDSignature:(id)a7 transactionKeyCASDAuthorization:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PKIdentityProvisioningAttestations;
  v18 = [(PKIdentityProvisioningAttestations *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_authorizationKeyAttestation, a3);
    objc_storeStrong(&v19->_deviceEncryptionKeyAttestation, a4);
    objc_storeStrong(&v19->_deviceEncryptionKeyAuthorization, a5);
    objc_storeStrong(&v19->_transactionKeyCASDAttestation, a6);
    objc_storeStrong(&v19->_transactionKeyCASDSignature, a7);
    objc_storeStrong(&v19->_transactionKeyCASDAuthorization, a8);
  }

  return v19;
}

- (PKIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)a3 deviceEncryptionKeyAttestation:(id)a4 deviceEncryptionKeyAuthorization:(id)a5 progenitorKeyCASDAttestation:(id)a6 transactionKeys:(id)a7 serverAttestedProvisioningData:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PKIdentityProvisioningAttestations;
  v18 = [(PKIdentityProvisioningAttestations *)&v24 init];
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
  authorizationKeyAttestation = self->_authorizationKeyAttestation;
  v5 = a3;
  [v5 encodeObject:authorizationKeyAttestation forKey:@"authorizationKeyAttestation"];
  [v5 encodeObject:self->_deviceEncryptionKeyAttestation forKey:@"deviceEncryptionKeyAttestation"];
  [v5 encodeObject:self->_deviceEncryptionKeyAuthorization forKey:@"deviceEncryptionKeyAuthorization"];
  [v5 encodeObject:self->_transactionKeyCASDAttestation forKey:@"transactionKeyCASDAttestation"];
  [v5 encodeObject:self->_transactionKeyCASDSignature forKey:@"transactionKeyCASDSignature"];
  [v5 encodeObject:self->_transactionKeyCASDAuthorization forKey:@"transactionKeyCASDAuthorization"];
  [v5 encodeObject:self->_progenitorKeyCASDAttestation forKey:@"progenitorKeyAttestation"];
  [v5 encodeObject:self->_transactionKeys forKey:@"transactionKeyData"];
  [v5 encodeObject:self->_serverAttestedProvisioningData forKey:@"serverAttestedProvisioningData"];
}

- (PKIdentityProvisioningAttestations)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PKIdentityProvisioningAttestations;
  v5 = [(PKIdentityProvisioningAttestations *)&v34 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"authorizationKeyAttestation"];
    authorizationKeyAttestation = v5->_authorizationKeyAttestation;
    v5->_authorizationKeyAttestation = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"deviceEncryptionKeyAttestation"];
    deviceEncryptionKeyAttestation = v5->_deviceEncryptionKeyAttestation;
    v5->_deviceEncryptionKeyAttestation = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceEncryptionKeyAuthorization"];
    deviceEncryptionKeyAuthorization = v5->_deviceEncryptionKeyAuthorization;
    v5->_deviceEncryptionKeyAuthorization = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyCASDAttestation"];
    transactionKeyCASDAttestation = v5->_transactionKeyCASDAttestation;
    v5->_transactionKeyCASDAttestation = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyCASDSignature"];
    transactionKeyCASDSignature = v5->_transactionKeyCASDSignature;
    v5->_transactionKeyCASDSignature = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyCASDAuthorization"];
    transactionKeyCASDAuthorization = v5->_transactionKeyCASDAuthorization;
    v5->_transactionKeyCASDAuthorization = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progenitorKeyAttestation"];
    progenitorKeyCASDAttestation = v5->_progenitorKeyCASDAttestation;
    v5->_progenitorKeyCASDAttestation = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"transactionKeyData"];
    transactionKeys = v5->_transactionKeys;
    v5->_transactionKeys = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverAttestedProvisioningData"];
    serverAttestedProvisioningData = v5->_serverAttestedProvisioningData;
    v5->_serverAttestedProvisioningData = v31;
  }

  return v5;
}

@end