@interface PKPendingShareableCredential
- (BOOL)representsPass:(id)a3;
- (PKPendingShareableCredential)initWithCoder:(id)a3;
- (PKPendingShareableCredential)initWithShareableCredential:(id)a3;
- (PKPendingShareableCredential)initWithSharedCredential:(id)a3;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingShareableCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingShareableCredential;
  return [(PKPendingShareableCredential *)&v3 init];
}

- (PKPendingShareableCredential)initWithShareableCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 sharingInstanceIdentifier];
  v11.receiver = self;
  v11.super_class = PKPendingShareableCredential;
  v6 = [(PKPendingProvisioning *)&v11 initWithUniqueIdentifier:v5 status:1];

  if (v6)
  {
    v7 = [v4 sharingInstanceIdentifier];
    sharingInstanceIdentifier = v6->_sharingInstanceIdentifier;
    v6->_sharingInstanceIdentifier = v7;

    v6->_source = [v4 source];
    v9 = [v4 state];
    [(PKPendingProvisioning *)v6 setProvisioningState:v9];
  }

  return v6;
}

- (PKPendingShareableCredential)initWithSharedCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 sharingInstanceIdentifier];
  v15.receiver = self;
  v15.super_class = PKPendingShareableCredential;
  v6 = [(PKPendingProvisioning *)&v15 initWithUniqueIdentifier:v5 status:1];

  if (v6)
  {
    v7 = [v4 sharingInstanceIdentifier];
    sharingInstanceIdentifier = v6->_sharingInstanceIdentifier;
    v6->_sharingInstanceIdentifier = v7;

    v9 = [v4 provisioningCredentialIdentifierHash];
    provisioningCredentialHash = v6->_provisioningCredentialHash;
    v6->_provisioningCredentialHash = v9;

    v6->_source = [v4 source];
    v11 = [v4 credentialAuthorityIdentifier];
    credentialAuthorityIdentifier = v6->_credentialAuthorityIdentifier;
    v6->_credentialAuthorityIdentifier = v11;

    v6->_securityOptions = [v4 securityOptions];
    v13 = objc_alloc_init(PKSecureElementProvisioningState);
    [(PKPendingProvisioning *)v6 setProvisioningState:v13];
  }

  return v6;
}

- (id)credential
{
  v3 = [[PKPaymentShareableCredential alloc] initWithProvisioningSharingIdentifier:self->_sharingInstanceIdentifier isBackgroundProvisioning:1];
  [(PKPaymentShareableCredential *)v3 setSource:self->_source];
  v4 = [(PKPendingProvisioning *)self provisioningState];

  if (v4)
  {
    v5 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v3 setState:v5];
  }

  return v3;
}

- (BOOL)representsPass:(id)a3
{
  v4 = [a3 provisioningCredentialHash];
  provisioningCredentialHash = self->_provisioningCredentialHash;
  v6 = v4;
  v7 = provisioningCredentialHash;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [(NSString *)v6 isEqualToString:v7];
    }
  }

  return v9;
}

- (PKPendingShareableCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKPendingShareableCredential;
  v5 = [(PKPendingProvisioning *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialHash"];
    provisioningCredentialHash = v5->_provisioningCredentialHash;
    v5->_provisioningCredentialHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialAuthorityIdentifier"];
    credentialAuthorityIdentifier = v5->_credentialAuthorityIdentifier;
    v5->_credentialAuthorityIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityOptions"];
    v5->_securityOptions = PKPushProvisioningSecurityOptionsFromString(v12);

    v5->_source = [v4 decodeIntegerForKey:@"source"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPendingShareableCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_sharingInstanceIdentifier forKey:{@"sharingInstanceIdentifier", v6.receiver, v6.super_class}];
  [v4 encodeObject:self->_provisioningCredentialHash forKey:@"provisioningCredentialHash"];
  [v4 encodeObject:self->_credentialAuthorityIdentifier forKey:@"credentialAuthorityIdentifier"];
  v5 = PKPushProvisioningSecurityOptionsToString(self->_securityOptions);
  [v4 encodeObject:v5 forKey:@"securityOptions"];

  [v4 encodeInteger:self->_source forKey:@"source"];
  [v4 encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [v4 encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
}

- (void)_copyIntoPendingProvision:(id)a3
{
  v15.receiver = self;
  v15.super_class = PKPendingShareableCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v15 _copyIntoPendingProvision:v4];
  v5 = [(NSString *)self->_sharingInstanceIdentifier copy:v15.receiver];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(NSString *)self->_provisioningCredentialHash copy];
  v8 = v4[8];
  v4[8] = v7;

  v9 = [(NSString *)self->_credentialAuthorityIdentifier copy];
  v10 = v4[10];
  v4[10] = v9;

  v4[11] = self->_securityOptions;
  v4[9] = self->_source;
  v11 = [(NSString *)self->_passSerialNumber copy];
  v12 = v4[12];
  v4[12] = v11;

  v13 = [(NSString *)self->_passTypeIdentifier copy];
  v14 = v4[13];
  v4[13] = v13;
}

@end