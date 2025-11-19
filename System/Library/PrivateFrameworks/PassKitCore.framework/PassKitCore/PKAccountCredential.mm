@interface PKAccountCredential
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKAccountCredential)initWithAccount:(id)a3;
- (id)activationMethods;
- (id)detailDescriptionWithEnvironment:(unint64_t)a3;
- (id)longDescription;
- (unint64_t)hash;
@end

@implementation PKAccountCredential

- (PKAccountCredential)initWithAccount:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = PKAccountCredential;
    v6 = [(PKPaymentCredential *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_account, a3);
      [(PKPaymentCredential *)v7 setCardType:1];
      [(PKPaymentCredential *)v7 setCredentialType:PKAccountCredentialType([(PKAccount *)v7->_account feature], v7->_account)];
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKAccountCredential *)self _isEqualToCredential:v4];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)a3
{
  account = self->_account;
  v4 = a3;
  v5 = [(PKAccount *)account accountIdentifier];
  v6 = [v4 account];

  v7 = [v6 accountIdentifier];
  v8 = v5;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
    v12 = 1;
  }

  else
  {
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v8 isEqualToString:v9];
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PKAccount *)self->_account accountIdentifier];
  [v3 safelyAddObject:v4];

  v5 = PKCombinedHash(17, v3);
  return v5;
}

- (id)longDescription
{
  v2 = [(PKAccount *)self->_account feature];

  return PKLocalizedFeatureString(@"APPLY_FLOW_ACCOUNT_TITLE", v2, 0, v3, v4, v5, v6, v7, v10);
}

- (id)detailDescriptionWithEnvironment:(unint64_t)a3
{
  if ([(PKAccount *)self->_account type]== 1)
  {
    v4 = [(PKAccount *)self->_account creditDetails];
    v5 = [v4 accountSummary];
    v6 = [v5 creditLimit];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AB90] notANumber];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v10 = [v4 currencyCode];
        v11 = PKFormattedCurrencyStringFromNumber(v6, v10);

        v9 = PKLocalizedFeatureString(@"APPLY_ON_FILE_SUBTITLE", 2, @"%@", v12, v13, v14, v15, v16, v11);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
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