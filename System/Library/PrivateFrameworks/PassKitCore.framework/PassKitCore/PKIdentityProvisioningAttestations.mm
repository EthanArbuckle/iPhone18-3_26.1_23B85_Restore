@interface PKIdentityProvisioningAttestations
- (PKIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)attestation deviceEncryptionKeyAttestation:(id)keyAttestation deviceEncryptionKeyAuthorization:(id)authorization progenitorKeyCASDAttestation:(id)dAttestation transactionKeys:(id)keys serverAttestedProvisioningData:(id)data;
- (PKIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)attestation deviceEncryptionKeyAttestation:(id)keyAttestation deviceEncryptionKeyAuthorization:(id)authorization transactionKeyCASDAttestation:(id)dAttestation transactionKeyCASDSignature:(id)signature transactionKeyCASDAuthorization:(id)dAuthorization;
- (PKIdentityProvisioningAttestations)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIdentityProvisioningAttestations

- (PKIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)attestation deviceEncryptionKeyAttestation:(id)keyAttestation deviceEncryptionKeyAuthorization:(id)authorization transactionKeyCASDAttestation:(id)dAttestation transactionKeyCASDSignature:(id)signature transactionKeyCASDAuthorization:(id)dAuthorization
{
  attestationCopy = attestation;
  keyAttestationCopy = keyAttestation;
  authorizationCopy = authorization;
  dAttestationCopy = dAttestation;
  signatureCopy = signature;
  dAuthorizationCopy = dAuthorization;
  v24.receiver = self;
  v24.super_class = PKIdentityProvisioningAttestations;
  v18 = [(PKIdentityProvisioningAttestations *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_authorizationKeyAttestation, attestation);
    objc_storeStrong(&v19->_deviceEncryptionKeyAttestation, keyAttestation);
    objc_storeStrong(&v19->_deviceEncryptionKeyAuthorization, authorization);
    objc_storeStrong(&v19->_transactionKeyCASDAttestation, dAttestation);
    objc_storeStrong(&v19->_transactionKeyCASDSignature, signature);
    objc_storeStrong(&v19->_transactionKeyCASDAuthorization, dAuthorization);
  }

  return v19;
}

- (PKIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)attestation deviceEncryptionKeyAttestation:(id)keyAttestation deviceEncryptionKeyAuthorization:(id)authorization progenitorKeyCASDAttestation:(id)dAttestation transactionKeys:(id)keys serverAttestedProvisioningData:(id)data
{
  attestationCopy = attestation;
  keyAttestationCopy = keyAttestation;
  authorizationCopy = authorization;
  dAttestationCopy = dAttestation;
  keysCopy = keys;
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = PKIdentityProvisioningAttestations;
  v18 = [(PKIdentityProvisioningAttestations *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_authorizationKeyAttestation, attestation);
    objc_storeStrong(&v19->_deviceEncryptionKeyAttestation, keyAttestation);
    objc_storeStrong(&v19->_deviceEncryptionKeyAuthorization, authorization);
    objc_storeStrong(&v19->_progenitorKeyCASDAttestation, dAttestation);
    objc_storeStrong(&v19->_transactionKeys, keys);
    objc_storeStrong(&v19->_serverAttestedProvisioningData, data);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  authorizationKeyAttestation = self->_authorizationKeyAttestation;
  coderCopy = coder;
  [coderCopy encodeObject:authorizationKeyAttestation forKey:@"authorizationKeyAttestation"];
  [coderCopy encodeObject:self->_deviceEncryptionKeyAttestation forKey:@"deviceEncryptionKeyAttestation"];
  [coderCopy encodeObject:self->_deviceEncryptionKeyAuthorization forKey:@"deviceEncryptionKeyAuthorization"];
  [coderCopy encodeObject:self->_transactionKeyCASDAttestation forKey:@"transactionKeyCASDAttestation"];
  [coderCopy encodeObject:self->_transactionKeyCASDSignature forKey:@"transactionKeyCASDSignature"];
  [coderCopy encodeObject:self->_transactionKeyCASDAuthorization forKey:@"transactionKeyCASDAuthorization"];
  [coderCopy encodeObject:self->_progenitorKeyCASDAttestation forKey:@"progenitorKeyAttestation"];
  [coderCopy encodeObject:self->_transactionKeys forKey:@"transactionKeyData"];
  [coderCopy encodeObject:self->_serverAttestedProvisioningData forKey:@"serverAttestedProvisioningData"];
}

- (PKIdentityProvisioningAttestations)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = PKIdentityProvisioningAttestations;
  v5 = [(PKIdentityProvisioningAttestations *)&v34 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"authorizationKeyAttestation"];
    authorizationKeyAttestation = v5->_authorizationKeyAttestation;
    v5->_authorizationKeyAttestation = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"deviceEncryptionKeyAttestation"];
    deviceEncryptionKeyAttestation = v5->_deviceEncryptionKeyAttestation;
    v5->_deviceEncryptionKeyAttestation = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceEncryptionKeyAuthorization"];
    deviceEncryptionKeyAuthorization = v5->_deviceEncryptionKeyAuthorization;
    v5->_deviceEncryptionKeyAuthorization = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyCASDAttestation"];
    transactionKeyCASDAttestation = v5->_transactionKeyCASDAttestation;
    v5->_transactionKeyCASDAttestation = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyCASDSignature"];
    transactionKeyCASDSignature = v5->_transactionKeyCASDSignature;
    v5->_transactionKeyCASDSignature = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyCASDAuthorization"];
    transactionKeyCASDAuthorization = v5->_transactionKeyCASDAuthorization;
    v5->_transactionKeyCASDAuthorization = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progenitorKeyAttestation"];
    progenitorKeyCASDAttestation = v5->_progenitorKeyCASDAttestation;
    v5->_progenitorKeyCASDAttestation = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"transactionKeyData"];
    transactionKeys = v5->_transactionKeys;
    v5->_transactionKeys = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverAttestedProvisioningData"];
    serverAttestedProvisioningData = v5->_serverAttestedProvisioningData;
    v5->_serverAttestedProvisioningData = v31;
  }

  return v5;
}

@end