@interface DIIdentityProvisioningTransactionKey
- (DIIdentityProvisioningTransactionKey)initWithCASDAttestation:(id)a3 authorization:(id)a4;
- (DIIdentityProvisioningTransactionKey)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIIdentityProvisioningTransactionKey

- (DIIdentityProvisioningTransactionKey)initWithCASDAttestation:(id)a3 authorization:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DIIdentityProvisioningTransactionKey;
  v9 = [(DIIdentityProvisioningTransactionKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_casdAttestation, a3);
    objc_storeStrong(&v10->_authorization, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  casdAttestation = self->_casdAttestation;
  v5 = a3;
  [v5 encodeObject:casdAttestation forKey:@"transactionKeyAttestation"];
  [v5 encodeObject:self->_authorization forKey:@"transactionKeyAuthorization"];
}

- (DIIdentityProvisioningTransactionKey)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIIdentityProvisioningTransactionKey;
  v5 = [(DIIdentityProvisioningTransactionKey *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyAttestation"];
    casdAttestation = v5->_casdAttestation;
    v5->_casdAttestation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyAuthorization"];
    authorization = v5->_authorization;
    v5->_authorization = v8;
  }

  return v5;
}

@end