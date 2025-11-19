@interface PKPendingAccountCredential
- (BOOL)representsCredential:(id)a3;
- (BOOL)representsPass:(id)a3;
- (PKPendingAccountCredential)initWithAccountCredential:(id)a3;
- (PKPendingAccountCredential)initWithAccountIdentifier:(id)a3 feature:(unint64_t)a4 sharingInstanceIdentifier:(id)a5;
- (PKPendingAccountCredential)initWithAccountReferenceCredential:(id)a3;
- (PKPendingAccountCredential)initWithCoder:(id)a3;
- (id)credential;
- (id)initForDatabase;
- (void)_copyIntoPendingProvision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingAccountCredential

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingAccountCredential;
  return [(PKPendingAccountCredential *)&v3 init];
}

- (PKPendingAccountCredential)initWithAccountCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 account];
  v6 = [v5 accountIdentifier];
  v12.receiver = self;
  v12.super_class = PKPendingAccountCredential;
  v7 = [(PKPendingProvisioning *)&v12 initWithUniqueIdentifier:v6 status:1];

  if (v7)
  {
    v8 = [v5 accountIdentifier];
    accountIdentifier = v7->_accountIdentifier;
    v7->_accountIdentifier = v8;

    v7->_feature = [v5 feature];
    v10 = [v4 state];
    [(PKPendingProvisioning *)v7 setProvisioningState:v10];
  }

  return v7;
}

- (PKPendingAccountCredential)initWithAccountReferenceCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 accountIdentifier];
  v11.receiver = self;
  v11.super_class = PKPendingAccountCredential;
  v6 = [(PKPendingProvisioning *)&v11 initWithUniqueIdentifier:v5 status:1];

  if (v6)
  {
    v7 = [v4 accountIdentifier];
    accountIdentifier = v6->_accountIdentifier;
    v6->_accountIdentifier = v7;

    v6->_feature = [v4 feature];
    v9 = [v4 state];
    [(PKPendingProvisioning *)v6 setProvisioningState:v9];
  }

  return v6;
}

- (PKPendingAccountCredential)initWithAccountIdentifier:(id)a3 feature:(unint64_t)a4 sharingInstanceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PKPendingAccountCredential;
  v11 = [(PKPendingProvisioning *)&v15 initWithUniqueIdentifier:v9 status:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accountIdentifier, a3);
    v12->_feature = a4;
    objc_storeStrong(&v12->_sharingInstanceIdentifier, a5);
    v13 = objc_alloc_init(PKSecureElementProvisioningState);
    [(PKPendingProvisioning *)v12 setProvisioningState:v13];
  }

  return v12;
}

- (BOOL)representsCredential:(id)a3
{
  v4 = a3;
  if ([v4 isAccountCredential])
  {
    v5 = [v4 accountCredential];
    v6 = [v5 account];
    v7 = [(NSString *)v6 accountIdentifier];
    accountIdentifier = self->_accountIdentifier;
    v9 = v7;
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

    v18 = [(NSString *)v6 feature]== self->_feature;
LABEL_18:

LABEL_23:
    goto LABEL_24;
  }

  if ([v4 isAccountReferenceCredential])
  {
    v5 = [v4 accountReferenceCredential];
    v13 = [v5 accountIdentifier];
    v14 = self->_accountIdentifier;
    v6 = v13;
    v15 = v14;
    v16 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      if (!v6 || !v15)
      {

LABEL_22:
        v18 = 0;
        goto LABEL_23;
      }

      v17 = [(NSString *)v6 isEqualToString:v15];

      if (!v17)
      {
        goto LABEL_22;
      }
    }

    v18 = [v5 feature] == self->_feature;
    goto LABEL_23;
  }

  v18 = 0;
LABEL_24:

  return v18;
}

- (BOOL)representsPass:(id)a3
{
  v4 = a3;
  if ([v4 associatedAccountFeatureIdentifier] == self->_feature)
  {
    v5 = [v4 associatedAccountServiceAccountIdentifier];
    v6 = v5;
    accountIdentifier = self->_accountIdentifier;
    if (v5 && accountIdentifier)
    {
      v8 = [(NSString *)v5 isEqual:?];
    }

    else
    {
      v8 = v5 == accountIdentifier;
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
  v4 = [(PKPendingProvisioning *)self provisioningState];

  if (v4)
  {
    v5 = [(PKPendingProvisioning *)self provisioningState];
    [(PKPaymentCredential *)v3 setState:v5];
  }

  return v3;
}

- (PKPendingAccountCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPendingAccountCredential;
  v5 = [(PKPendingProvisioning *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feature"];
    v5->_feature = PKFeatureIdentifierFromString(v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPendingAccountCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_accountIdentifier forKey:{@"accountIdentifier", v6.receiver, v6.super_class}];
  v5 = PKFeatureIdentifierToString(self->_feature);
  [v4 encodeObject:v5 forKey:@"feature"];

  [v4 encodeObject:self->_sharingInstanceIdentifier forKey:@"sharingInstanceIdentifier"];
}

- (void)_copyIntoPendingProvision:(id)a3
{
  v9.receiver = self;
  v9.super_class = PKPendingAccountCredential;
  v4 = a3;
  [(PKPendingProvisioning *)&v9 _copyIntoPendingProvision:v4];
  v5 = [(NSString *)self->_accountIdentifier copy:v9.receiver];
  v6 = v4[7];
  v4[7] = v5;

  v4[8] = self->_feature;
  v7 = [(NSString *)self->_sharingInstanceIdentifier copy];
  v8 = v4[9];
  v4[9] = v7;
}

@end