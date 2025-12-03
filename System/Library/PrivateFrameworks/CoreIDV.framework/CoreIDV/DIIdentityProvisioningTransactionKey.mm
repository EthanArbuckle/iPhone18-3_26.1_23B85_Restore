@interface DIIdentityProvisioningTransactionKey
- (DIIdentityProvisioningTransactionKey)initWithCASDAttestation:(id)attestation authorization:(id)authorization;
- (DIIdentityProvisioningTransactionKey)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIIdentityProvisioningTransactionKey

- (DIIdentityProvisioningTransactionKey)initWithCASDAttestation:(id)attestation authorization:(id)authorization
{
  attestationCopy = attestation;
  authorizationCopy = authorization;
  v12.receiver = self;
  v12.super_class = DIIdentityProvisioningTransactionKey;
  v9 = [(DIIdentityProvisioningTransactionKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_casdAttestation, attestation);
    objc_storeStrong(&v10->_authorization, authorization);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  casdAttestation = self->_casdAttestation;
  coderCopy = coder;
  [coderCopy encodeObject:casdAttestation forKey:@"transactionKeyAttestation"];
  [coderCopy encodeObject:self->_authorization forKey:@"transactionKeyAuthorization"];
}

- (DIIdentityProvisioningTransactionKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DIIdentityProvisioningTransactionKey;
  v5 = [(DIIdentityProvisioningTransactionKey *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyAttestation"];
    casdAttestation = v5->_casdAttestation;
    v5->_casdAttestation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyAuthorization"];
    authorization = v5->_authorization;
    v5->_authorization = v8;
  }

  return v5;
}

@end