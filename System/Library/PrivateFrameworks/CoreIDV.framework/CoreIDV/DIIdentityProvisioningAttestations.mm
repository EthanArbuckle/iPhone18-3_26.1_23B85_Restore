@interface DIIdentityProvisioningAttestations
- (DIIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)attestation deviceEncryptionKeyAttestation:(id)keyAttestation deviceEncryptionKeyAuthorization:(id)authorization progenitorKeyCASDAttestation:(id)dAttestation transactionKeys:(id)keys serverAttestedProvisioningData:(id)data;
- (DIIdentityProvisioningAttestations)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIIdentityProvisioningAttestations

- (DIIdentityProvisioningAttestations)initWithAuthorizationKeyAttestation:(id)attestation deviceEncryptionKeyAttestation:(id)keyAttestation deviceEncryptionKeyAuthorization:(id)authorization progenitorKeyCASDAttestation:(id)dAttestation transactionKeys:(id)keys serverAttestedProvisioningData:(id)data
{
  attestationCopy = attestation;
  keyAttestationCopy = keyAttestation;
  authorizationCopy = authorization;
  dAttestationCopy = dAttestation;
  keysCopy = keys;
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = DIIdentityProvisioningAttestations;
  v18 = [(DIIdentityProvisioningAttestations *)&v24 init];
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
  coderCopy = coder;
  authorizationKeyAttestation = [(DIIdentityProvisioningAttestations *)self authorizationKeyAttestation];
  [coderCopy encodeObject:authorizationKeyAttestation forKey:@"authorizationKeyAttestation"];

  deviceEncryptionKeyAttestation = [(DIIdentityProvisioningAttestations *)self deviceEncryptionKeyAttestation];
  [coderCopy encodeObject:deviceEncryptionKeyAttestation forKey:@"deviceEncryptionKeyAttestation"];

  deviceEncryptionKeyAuthorization = [(DIIdentityProvisioningAttestations *)self deviceEncryptionKeyAuthorization];
  [coderCopy encodeObject:deviceEncryptionKeyAuthorization forKey:@"deviceEncryptionKeyAuthorization"];

  progenitorKeyCASDAttestation = [(DIIdentityProvisioningAttestations *)self progenitorKeyCASDAttestation];
  [coderCopy encodeObject:progenitorKeyCASDAttestation forKey:@"progenitorKeyCASDAttestation"];

  transactionKeys = [(DIIdentityProvisioningAttestations *)self transactionKeys];
  [coderCopy encodeObject:transactionKeys forKey:@"transactionKeys"];

  serverAttestedProvisioningData = [(DIIdentityProvisioningAttestations *)self serverAttestedProvisioningData];
  [coderCopy encodeObject:serverAttestedProvisioningData forKey:@"serverAttestedProvisioningData"];
}

- (DIIdentityProvisioningAttestations)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DIIdentityProvisioningAttestations;
  v5 = [(DIIdentityProvisioningAttestations *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"authorizationKeyAttestation"];
    authorizationKeyAttestation = v5->_authorizationKeyAttestation;
    v5->_authorizationKeyAttestation = v6;

    v8 = [coderCopy decodeObjectForKey:@"deviceEncryptionKeyAttestation"];
    deviceEncryptionKeyAttestation = v5->_deviceEncryptionKeyAttestation;
    v5->_deviceEncryptionKeyAttestation = v8;

    v10 = [coderCopy decodeObjectForKey:@"deviceEncryptionKeyAuthorization"];
    deviceEncryptionKeyAuthorization = v5->_deviceEncryptionKeyAuthorization;
    v5->_deviceEncryptionKeyAuthorization = v10;

    v12 = [coderCopy decodeObjectForKey:@"progenitorKeyCASDAttestation"];
    progenitorKeyCASDAttestation = v5->_progenitorKeyCASDAttestation;
    v5->_progenitorKeyCASDAttestation = v12;

    v14 = [coderCopy decodeObjectForKey:@"transactionKeys"];
    transactionKeys = v5->_transactionKeys;
    v5->_transactionKeys = v14;

    v16 = [coderCopy decodeObjectForKey:@"serverAttestedProvisioningData"];
    serverAttestedProvisioningData = v5->_serverAttestedProvisioningData;
    v5->_serverAttestedProvisioningData = v16;
  }

  return v5;
}

@end