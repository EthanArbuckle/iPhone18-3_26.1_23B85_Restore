@interface PKPendingAccountCredential
- (BOOL)representsCredential:(id)credential;
- (BOOL)representsPass:(id)pass;
- (PKPendingAccountCredential)initWithAccountCredential:(id)credential;
- (PKPendingAccountCredential)initWithAccountIdentifier:(id)identifier feature:(unint64_t)feature sharingInstanceIdentifier:(id)instanceIdentifier;
- (PKPendingAccountCredential)initWithAccountReferenceCredential:(id)credential;
- (PKPendingAccountCredential)initWithCoder:(id)coder;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)provision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingAccountCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingAccountCredential;
  return [(PKPendingAccountCredential *)&v3 init];
}

- (PKPendingAccountCredential)initWithAccountCredential:(id)credential
{
  credentialCopy = credential;
  account = [credentialCopy account];
  accountIdentifier = [account accountIdentifier];
  v12.receiver = self;
  v12.super_class = PKPendingAccountCredential;
  v7 = [(PKPendingProvisioning *)&v12 initWithUniqueIdentifier:accountIdentifier status:1];

  if (v7)
  {
    accountIdentifier2 = [account accountIdentifier];
    accountIdentifier = v7->_accountIdentifier;
    v7->_accountIdentifier = accountIdentifier2;

    v7->_feature = [account feature];
    state = [credentialCopy state];
    [(PKPendingProvisioning *)v7 setProvisioningState:state];
  }

  return v7;
}

- (PKPendingAccountCredential)initWithAccountReferenceCredential:(id)credential
{
  credentialCopy = credential;
  accountIdentifier = [credentialCopy accountIdentifier];
  v11.receiver = self;
  v11.super_class = PKPendingAccountCredential;
  v6 = [(PKPendingProvisioning *)&v11 initWithUniqueIdentifier:accountIdentifier status:1];

  if (v6)
  {
    accountIdentifier2 = [credentialCopy accountIdentifier];
    accountIdentifier = v6->_accountIdentifier;
    v6->_accountIdentifier = accountIdentifier2;

    v6->_feature = [credentialCopy feature];
    state = [credentialCopy state];
    [(PKPendingProvisioning *)v6 setProvisioningState:state];
  }

  return v6;
}

- (PKPendingAccountCredential)initWithAccountIdentifier:(id)identifier feature:(unint64_t)feature sharingInstanceIdentifier:(id)instanceIdentifier
{
  identifierCopy = identifier;
  instanceIdentifierCopy = instanceIdentifier;
  v15.receiver = self;
  v15.super_class = PKPendingAccountCredential;
  v11 = [(PKPendingProvisioning *)&v15 initWithUniqueIdentifier:identifierCopy status:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accountIdentifier, identifier);
    v12->_feature = feature;
    objc_storeStrong(&v12->_sharingInstanceIdentifier, instanceIdentifier);
    v13 = objc_alloc_init(PKSecureElementProvisioningState);
    [(PKPendingProvisioning *)v12 setProvisioningState:v13];
  }

  return v12;
}

- (BOOL)representsCredential:(id)credential
{
  credentialCopy = credential;
  if ([credentialCopy isAccountCredential])
  {
    accountCredential = [credentialCopy accountCredential];
    account = [accountCredential account];
    accountIdentifier = [(NSString *)account accountIdentifier];
    accountIdentifier = self->_accountIdentifier;
    v9 = accountIdentifier;
    v10 = accountIdentifier;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (!v9 || !v10)
      {

LABEL_17:
        v18 = 0;
        goto LABEL_18;
      }

      v12 = [(NSString *)v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v18 = [(NSString *)account feature]== self->_feature;
LABEL_18:

LABEL_23:
    goto LABEL_24;
  }

  if ([credentialCopy isAccountReferenceCredential])
  {
    accountCredential = [credentialCopy accountReferenceCredential];
    accountIdentifier2 = [accountCredential accountIdentifier];
    v14 = self->_accountIdentifier;
    account = accountIdentifier2;
    v15 = v14;
    v16 = v15;
    if (account == v15)
    {
    }

    else
    {
      if (!account || !v15)
      {

LABEL_22:
        v18 = 0;
        goto LABEL_23;
      }

      v17 = [(NSString *)account isEqualToString:v15];

      if (!v17)
      {
        goto LABEL_22;
      }
    }

    v18 = [accountCredential feature] == self->_feature;
    goto LABEL_23;
  }

  v18 = 0;
LABEL_24:

  return v18;
}

- (BOOL)representsPass:(id)pass
{
  passCopy = pass;
  if ([passCopy associatedAccountFeatureIdentifier] == self->_feature)
  {
    associatedAccountServiceAccountIdentifier = [passCopy associatedAccountServiceAccountIdentifier];
    v6 = associatedAccountServiceAccountIdentifier;
    accountIdentifier = self->_accountIdentifier;
    if (associatedAccountServiceAccountIdentifier && accountIdentifier)
    {
      v8 = [(NSString *)associatedAccountServiceAccountIdentifier isEqual:?];
    }

    else
    {
      v8 = associatedAccountServiceAccountIdentifier == accountIdentifier;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)credential
{
  v3 = [[PKAccountReferenceCredential alloc] initWithAccountIdentifier:self->_accountIdentifier feature:self->_feature];
  [(PKAccountReferenceCredential *)v3 setSharingInstanceIdentifier:self->_sharingInstanceIdentifier];
  provisioningState = [(PKPendingProvisioning *)self provisioningState];

  if (provisioningState)
  {
    provisioningState2 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v3 setState:provisioningState2];
  }

  return v3;
}

- (PKPendingAccountCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPendingAccountCredential;
  v5 = [(PKPendingProvisioning *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feature"];
    v5->_feature = PKFeatureIdentifierFromString(v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKPendingAccountCredential;
  coderCopy = coder;
  [(PKPendingProvisioning *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_accountIdentifier forKey:{@"accountIdentifier", v6.receiver, v6.super_class}];
  v5 = PKFeatureIdentifierToString(self->_feature);
  [coderCopy encodeObject:v5 forKey:@"feature"];

  [coderCopy encodeObject:self->_sharingInstanceIdentifier forKey:@"sharingInstanceIdentifier"];
}

- (void)_copyIntoPendingProvision:(id)provision
{
  v9.receiver = self;
  v9.super_class = PKPendingAccountCredential;
  provisionCopy = provision;
  [(PKPendingProvisioning *)&v9 _copyIntoPendingProvision:provisionCopy];
  v5 = [(NSString *)self->_accountIdentifier copy:v9.receiver];
  v6 = provisionCopy[7];
  provisionCopy[7] = v5;

  provisionCopy[8] = self->_feature;
  v7 = [(NSString *)self->_sharingInstanceIdentifier copy];
  v8 = provisionCopy[9];
  provisionCopy[9] = v7;
}

@end