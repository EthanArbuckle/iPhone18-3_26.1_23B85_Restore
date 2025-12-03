@interface PKPendingShareableCredential
- (BOOL)representsPass:(id)pass;
- (PKPendingShareableCredential)initWithCoder:(id)coder;
- (PKPendingShareableCredential)initWithShareableCredential:(id)credential;
- (PKPendingShareableCredential)initWithSharedCredential:(id)credential;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)provision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingShareableCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingShareableCredential;
  return [(PKPendingShareableCredential *)&v3 init];
}

- (PKPendingShareableCredential)initWithShareableCredential:(id)credential
{
  credentialCopy = credential;
  sharingInstanceIdentifier = [credentialCopy sharingInstanceIdentifier];
  v11.receiver = self;
  v11.super_class = PKPendingShareableCredential;
  v6 = [(PKPendingProvisioning *)&v11 initWithUniqueIdentifier:sharingInstanceIdentifier status:1];

  if (v6)
  {
    sharingInstanceIdentifier2 = [credentialCopy sharingInstanceIdentifier];
    sharingInstanceIdentifier = v6->_sharingInstanceIdentifier;
    v6->_sharingInstanceIdentifier = sharingInstanceIdentifier2;

    v6->_source = [credentialCopy source];
    state = [credentialCopy state];
    [(PKPendingProvisioning *)v6 setProvisioningState:state];
  }

  return v6;
}

- (PKPendingShareableCredential)initWithSharedCredential:(id)credential
{
  credentialCopy = credential;
  sharingInstanceIdentifier = [credentialCopy sharingInstanceIdentifier];
  v15.receiver = self;
  v15.super_class = PKPendingShareableCredential;
  v6 = [(PKPendingProvisioning *)&v15 initWithUniqueIdentifier:sharingInstanceIdentifier status:1];

  if (v6)
  {
    sharingInstanceIdentifier2 = [credentialCopy sharingInstanceIdentifier];
    sharingInstanceIdentifier = v6->_sharingInstanceIdentifier;
    v6->_sharingInstanceIdentifier = sharingInstanceIdentifier2;

    provisioningCredentialIdentifierHash = [credentialCopy provisioningCredentialIdentifierHash];
    provisioningCredentialHash = v6->_provisioningCredentialHash;
    v6->_provisioningCredentialHash = provisioningCredentialIdentifierHash;

    v6->_source = [credentialCopy source];
    credentialAuthorityIdentifier = [credentialCopy credentialAuthorityIdentifier];
    credentialAuthorityIdentifier = v6->_credentialAuthorityIdentifier;
    v6->_credentialAuthorityIdentifier = credentialAuthorityIdentifier;

    v6->_securityOptions = [credentialCopy securityOptions];
    v13 = objc_alloc_init(PKSecureElementProvisioningState);
    [(PKPendingProvisioning *)v6 setProvisioningState:v13];
  }

  return v6;
}

- (id)credential
{
  v3 = [[PKPaymentShareableCredential alloc] initWithProvisioningSharingIdentifier:self->_sharingInstanceIdentifier isBackgroundProvisioning:1];
  [(PKPaymentShareableCredential *)v3 setSource:self->_source];
  provisioningState = [(PKPendingProvisioning *)self provisioningState];

  if (provisioningState)
  {
    provisioningState2 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v3 setState:provisioningState2];
  }

  return v3;
}

- (BOOL)representsPass:(id)pass
{
  provisioningCredentialHash = [pass provisioningCredentialHash];
  provisioningCredentialHash = self->_provisioningCredentialHash;
  v6 = provisioningCredentialHash;
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

- (PKPendingShareableCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKPendingShareableCredential;
  v5 = [(PKPendingProvisioning *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialHash"];
    provisioningCredentialHash = v5->_provisioningCredentialHash;
    v5->_provisioningCredentialHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialAuthorityIdentifier"];
    credentialAuthorityIdentifier = v5->_credentialAuthorityIdentifier;
    v5->_credentialAuthorityIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityOptions"];
    v5->_securityOptions = PKPushProvisioningSecurityOptionsFromString(v12);

    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKPendingShareableCredential;
  coderCopy = coder;
  [(PKPendingProvisioning *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sharingInstanceIdentifier forKey:{@"sharingInstanceIdentifier", v6.receiver, v6.super_class}];
  [coderCopy encodeObject:self->_provisioningCredentialHash forKey:@"provisioningCredentialHash"];
  [coderCopy encodeObject:self->_credentialAuthorityIdentifier forKey:@"credentialAuthorityIdentifier"];
  v5 = PKPushProvisioningSecurityOptionsToString(self->_securityOptions);
  [coderCopy encodeObject:v5 forKey:@"securityOptions"];

  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
}

- (void)_copyIntoPendingProvision:(id)provision
{
  v15.receiver = self;
  v15.super_class = PKPendingShareableCredential;
  provisionCopy = provision;
  [(PKPendingProvisioning *)&v15 _copyIntoPendingProvision:provisionCopy];
  v5 = [(NSString *)self->_sharingInstanceIdentifier copy:v15.receiver];
  v6 = provisionCopy[7];
  provisionCopy[7] = v5;

  v7 = [(NSString *)self->_provisioningCredentialHash copy];
  v8 = provisionCopy[8];
  provisionCopy[8] = v7;

  v9 = [(NSString *)self->_credentialAuthorityIdentifier copy];
  v10 = provisionCopy[10];
  provisionCopy[10] = v9;

  provisionCopy[11] = self->_securityOptions;
  provisionCopy[9] = self->_source;
  v11 = [(NSString *)self->_passSerialNumber copy];
  v12 = provisionCopy[12];
  provisionCopy[12] = v11;

  v13 = [(NSString *)self->_passTypeIdentifier copy];
  v14 = provisionCopy[13];
  provisionCopy[13] = v13;
}

@end