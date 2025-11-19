@interface PKAccountReferenceCredential
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKAccountReferenceCredential)initWithAccountIdentifier:(id)a3 feature:(unint64_t)a4;
- (id)activationMethods;
- (unint64_t)hash;
@end

@implementation PKAccountReferenceCredential

- (PKAccountReferenceCredential)initWithAccountIdentifier:(id)a3 feature:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountReferenceCredential;
  v8 = [(PKPaymentCredential *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accountIdentifier, a3);
    v9->_feature = a4;
    [(PKPaymentCredential *)v9 setCardType:1];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKAccountReferenceCredential *)self _isEqualToCredential:v4];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)a3
{
  v4 = a3;
  accountIdentifier = self->_accountIdentifier;
  v6 = [v4 accountIdentifier];
  v7 = accountIdentifier;
  v8 = v6;
  v9 = v8;
  if (v7 != v8)
  {
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
    }

    else
    {
      v11 = [(NSString *)v7 isEqualToString:v8];

      if (v11)
      {
        goto LABEL_10;
      }
    }

    v12 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v12 = self->_feature == v4[15];
LABEL_12:

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_accountIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)activationMethods
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [PKPaymentCredentialProvisioningMethod alloc];
  v3 = [[PKPassUpgradePrecursorPassGenericReprovisionAction alloc] initWithDeviceProvisioningDataExpected:0];
  v8 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v5 = [(PKPaymentCredentialProvisioningMethod *)v2 initWithSupportsFrictionlessProvisioning:1 actions:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v6;
}

@end